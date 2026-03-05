'use server'

import { createClient } from '@/lib/supabase/server'
import type { ParsedBarrelStockRow, ParsedFillLogRow, ParsedDumpLogRow, ParsedFermentationRow, ParsedDistillationRow } from '@/lib/import/parsers'

interface ImportResult {
  success: number
  errors: { row: number; field: string; message: string }[]
  warnings: string[]
}

const BATCH_SIZE = 50

// eslint-disable-next-line @typescript-eslint/no-explicit-any
type SupabaseClient = any

async function lookupRackhouses(supabase: SupabaseClient) {
  const { data } = await supabase.from('rackhouses').select('id, name') as { data: { id: string; name: string }[] | null }
  const map = new Map<string, string>()
  for (const r of data ?? []) map.set(r.name.toLowerCase(), r.id)
  return map
}

async function lookupTanks(supabase: SupabaseClient) {
  const { data } = await supabase.from('tanks').select('id, name') as { data: { id: string; name: string }[] | null }
  const map = new Map<string, string>()
  for (const t of data ?? []) map.set(t.name.toLowerCase(), t.id)
  return map
}

async function lookupFermenters(supabase: SupabaseClient) {
  const { data } = await supabase.from('fermenters').select('id, name') as { data: { id: string; name: string }[] | null }
  const map = new Map<string, string>()
  for (const f of data ?? []) map.set(f.name.toLowerCase(), f.id)
  return map
}

async function lookupBarrelsByNumber(supabase: SupabaseClient) {
  const { data } = await supabase.from('barrels').select('id, barrel_number') as { data: { id: string; barrel_number: string }[] | null }
  const map = new Map<string, string>()
  for (const b of data ?? []) map.set(b.barrel_number, b.id)
  return map
}

async function lookupDistRunsByNumber(supabase: SupabaseClient) {
  const { data } = await supabase.from('distillation_runs').select('id, run_number') as { data: { id: string; run_number: number }[] | null }
  const map = new Map<number, string>()
  for (const r of data ?? []) map.set(r.run_number, r.id)
  return map
}

async function getUserId(supabase: SupabaseClient): Promise<string> {
  const { data: { user } } = await supabase.auth.getUser()
  return user!.id
}

async function logImport(
  supabase: SupabaseClient,
  importType: string,
  filename: string,
  rowCount: number,
  successCount: number,
  errorCount: number,
  errors: unknown[],
  userId: string
) {
  await supabase.from('csv_imports').insert({
    import_type: importType,
    filename,
    row_count: rowCount,
    success_count: successCount,
    error_count: errorCount,
    errors: errors.length > 0 ? JSON.stringify(errors) : null,
    imported_by: userId,
  })
}

export async function importBarrelStock(
  rows: ParsedBarrelStockRow[],
  filename: string
): Promise<ImportResult> {
  const supabase: SupabaseClient = await createClient()
  const userId = await getUserId(supabase)
  const rackhouses = await lookupRackhouses(supabase)

  const result: ImportResult = { success: 0, errors: [], warnings: [] }

  for (let i = 0; i < rows.length; i += BATCH_SIZE) {
    const batch = rows.slice(i, i + BATCH_SIZE)
    const inserts = []

    for (let j = 0; j < batch.length; j++) {
      const row = batch[j]
      const rowIdx = i + j

      if (!row.barrel_number) {
        result.errors.push({ row: rowIdx, field: 'barrel_number', message: 'Missing barrel number' })
        continue
      }

      const rackhouseId = row.rackhouse_name
        ? rackhouses.get(row.rackhouse_name.toLowerCase()) ?? null
        : null

      const locationOnsite = !row.offsite_facility
      inserts.push({
        barrel_number: row.barrel_number,
        previous_barrel_number: row.previous_barrel_number,
        spirit_type: row.spirit_type,
        status: row.status,
        barrel_type: row.barrel_type,
        size_gal: row.size_gal,
        new_or_used: row.barrel_condition === 'new' ? 'NEW' : row.barrel_condition === 'used' ? 'USED' : null,
        cooperage: row.cooperage,
        rackhouse_id: rackhouseId,
        slot: row.slot,
        fill_date: row.fill_date,
        entry_pf: row.entry_pf,
        fill_proof_gal: row.fill_proof_gal,
        fill_wine_gal: row.fill_wine_gal,
        lot_number: row.lot_number,
        internal_lot_name: row.internal_lot_name,
        filling_dsp: row.filling_dsp || 'DSP-MA-20017',
        current_dsp: row.current_dsp || 'DSP-MA-20017',
        location_type: locationOnsite ? 'onsite' : 'offsite',
        offsite_facility: row.offsite_facility,
        offsite_slot: row.offsite_slot,
        dollar_value: row.dollar_value,
        notes: row.notes,
      })
    }

    if (inserts.length > 0) {
      const { error, data } = await supabase.from('barrels').insert(inserts).select('id, barrel_number')

      if (error) {
        result.errors.push({ row: i, field: '_batch', message: error.message })
      } else {
        result.success += data?.length ?? 0
      }
    }
  }

  await logImport(supabase, 'barrel_stock', filename, rows.length, result.success, result.errors.length, result.errors, userId)
  return result
}

export async function importFillLogs(
  rows: ParsedFillLogRow[],
  filename: string
): Promise<ImportResult> {
  const supabase: SupabaseClient = await createClient()
  const userId = await getUserId(supabase)
  const barrels = await lookupBarrelsByNumber(supabase)
  const tanks = await lookupTanks(supabase)

  const result: ImportResult = { success: 0, errors: [], warnings: [] }

  // Group by fill_date + lot_name for fill_batch_id
  const batchGroups = new Map<string, string>()

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i]
    const barrelId = barrels.get(row.barrel_number)

    if (!barrelId) {
      result.errors.push({ row: i, field: 'barrel_number', message: `Barrel ${row.barrel_number} not found` })
      continue
    }

    const batchKey = `${row.fill_date ?? ''}_${row.lot_name ?? ''}`
    if (!batchGroups.has(batchKey)) {
      batchGroups.set(batchKey, crypto.randomUUID())
    }

    const sourceTankId = row.source_tank_name
      ? tanks.get(row.source_tank_name.toLowerCase()) ?? null
      : null

    const { error } = await supabase.from('barrel_events').insert({
      barrel_id: barrelId,
      event_type: 'fill',
      event_date: row.fill_date ?? new Date().toISOString(),
      fill_proof: row.fill_proof,
      proof_gal: row.fill_pg,
      wine_gal: row.fill_wine_gal,
      barrel_stock: row.barrel_stock_raw,
      tank_pg_start: row.tank_pg_start,
      tank_pg_end: row.tank_pg_end,
      gain_loss_pg: row.gain_loss_pg,
      source_tank_id: sourceTankId,
      fill_batch_id: batchGroups.get(batchKey),
      notes: row.notes,
      logged_by: userId,
    })

    if (error) {
      result.errors.push({ row: i, field: '_insert', message: error.message })
    } else {
      result.success++
    }
  }

  await logImport(supabase, 'fill_logs', filename, rows.length, result.success, result.errors.length, result.errors, userId)
  return result
}

export async function importDumpLogs(
  rows: ParsedDumpLogRow[],
  filename: string
): Promise<ImportResult> {
  const supabase: SupabaseClient = await createClient()
  const userId = await getUserId(supabase)
  const tanks = await lookupTanks(supabase)

  const result: ImportResult = { success: 0, errors: [], warnings: [] }

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i]

    const targetTankId = row.target_tank_name
      ? tanks.get(row.target_tank_name.toLowerCase()) ?? null
      : null

    const { error } = await supabase.from('dump_batches').insert({
      dump_date: row.dump_date ?? new Date().toISOString(),
      dump_type: row.dump_type,
      spirit_type: row.spirit_type,
      target_tank_id: targetTankId,
      to_account: row.to_account,
      barrel_count: row.barrel_count,
      total_opg: row.total_opg,
      total_rpg: row.total_rpg,
      total_loss_pg: row.total_loss_pg,
      pct_loss: row.pct_loss,
      blend_lot_name: row.lot_name,
      notes: row.notes,
      operator: row.operator,
    })

    if (error) {
      result.errors.push({ row: i, field: '_insert', message: error.message })
    } else {
      result.success++
    }
  }

  await logImport(supabase, 'dump_logs', filename, rows.length, result.success, result.errors.length, result.errors, userId)
  return result
}

export async function importFermentationLogs(
  rows: ParsedFermentationRow[],
  filename: string
): Promise<ImportResult> {
  const supabase: SupabaseClient = await createClient()
  const userId = await getUserId(supabase)
  const fermenters = await lookupFermenters(supabase)

  const result: ImportResult = { success: 0, errors: [], warnings: [] }

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i]

    const fermenterId = fermenters.get(row.fermenter_name.toLowerCase())
    if (!fermenterId) {
      result.errors.push({ row: i, field: 'fermenter', message: `Fermenter "${row.fermenter_name}" not found` })
      continue
    }

    const batchNumber = `FERM-WS-${row.cook_number ?? i + 1}`

    const { error } = await supabase.from('fermentation_batches').insert({
      cook_number: row.cook_number,
      lot_name: row.lot_name,
      batch_number: batchNumber,
      fermenter_id: fermenterId,
      spirit_type: row.spirit_type,
      mash_bill: row.mash_bill,
      bbl_size: row.bbl_size,
      volume_gal: row.volume_gal,
      start_date: row.start_date ?? new Date().toISOString(),
      stripped_date: row.stripped_date,
      total_days: row.total_days,
      total_hours: row.total_hours,
      start_sg: row.start_sg,
      potential_pf: row.potential_pf,
      potential_pg: row.potential_pg,
      ending_sg: row.ending_sg,
      ph: row.ph,
      temp_f: row.temp_f,
      status: row.status === 'scrapped' ? 'scrapped' : 'complete',
      notes: row.notes,
      logged_by: userId,
    })

    if (error) {
      result.errors.push({ row: i, field: '_insert', message: error.message })
    } else {
      result.success++
    }
  }

  await logImport(supabase, 'fermentation', filename, rows.length, result.success, result.errors.length, result.errors, userId)
  return result
}

export async function importDistillationRuns(
  rows: ParsedDistillationRow[],
  filename: string
): Promise<ImportResult> {
  const supabase: SupabaseClient = await createClient()
  const userId = await getUserId(supabase)

  const result: ImportResult = { success: 0, errors: [], warnings: [] }

  // First pass: insert all runs without source_run_id
  const runNumberToId = new Map<number, string>()

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i]

    if (!row.run_number) {
      result.errors.push({ row: i, field: 'run_number', message: 'Missing run number' })
      continue
    }

    const proofGal = row.pg_total ?? (row.pg_hearts ?? 0)

    const { error, data } = await supabase.from('distillation_runs').insert({
      run_number: row.run_number,
      lot_name: row.lot_name,
      spirit_type: row.spirit_type,
      mash_bill: row.mash_bill,
      still_name: row.still_name,
      run_phase: row.run_phase,
      run_timestamp: row.run_date ?? new Date().toISOString(),
      run_date: row.run_date ? row.run_date.split('T')[0] : new Date().toISOString().split('T')[0],
      operator: row.operator,
      output_account: row.output_account,
      pg_feints: row.pg_feints,
      pg_heads: row.pg_heads,
      pg_hearts: row.pg_hearts,
      pg_tails: row.pg_tails,
      pg_low_wines: row.pg_low_wines,
      pg_total: row.pg_total,
      proof_gal: proofGal || 0,
      notes: row.notes,
      logged_by: userId,
    }).select('id')

    if (error) {
      result.errors.push({ row: i, field: '_insert', message: error.message })
    } else {
      result.success++
      if (data?.[0]) {
        runNumberToId.set(row.run_number, data[0].id)
      }
    }
  }

  // Second pass: link source_run_id for spirit runs
  for (const row of rows) {
    if (row.source_run_ref) {
      const sourceNum = parseInt(row.source_run_ref, 10)
      const sourceId = runNumberToId.get(sourceNum)
      const thisId = runNumberToId.get(row.run_number)
      if (sourceId && thisId) {
        await supabase.from('distillation_runs')
          .update({ source_run_id: sourceId })
          .eq('id', thisId)
      }
    }
  }

  await logImport(supabase, 'distillation', filename, rows.length, result.success, result.errors.length, result.errors, userId)
  return result
}
