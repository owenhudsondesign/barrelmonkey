// Column mapping and type coercion for WS CSV imports

import type { BarrelStatus, SpiritType } from '@/lib/types/database'
import { parseBarrelStock } from './barrel-stock-parser'
import { isOldFormatBarrelNumber } from './validators'

export type ImportType = 'barrel_stock' | 'fill_logs' | 'dump_logs' | 'fermentation' | 'distillation'

export interface ImportTypeConfig {
  id: ImportType
  label: string
  description: string
  order: number
  requiresBarrels: boolean
}

export const IMPORT_TYPES: ImportTypeConfig[] = [
  { id: 'barrel_stock', label: 'Barrel Stock', description: 'Creates barrel records from WS barrel inventory', order: 1, requiresBarrels: false },
  { id: 'fill_logs', label: 'Fill Logs', description: 'Creates fill events for existing barrels', order: 2, requiresBarrels: true },
  { id: 'dump_logs', label: 'Dump Logs', description: 'Creates dump batches and updates barrel status', order: 3, requiresBarrels: true },
  { id: 'fermentation', label: 'Fermentation Logs', description: 'Creates fermentation batch records', order: 4, requiresBarrels: false },
  { id: 'distillation', label: 'Distillation Runs', description: 'Creates distillation run records', order: 5, requiresBarrels: false },
]

function parseNum(val: string | undefined | null): number | null {
  if (!val || val.trim() === '') return null
  const num = parseFloat(val.trim().replace(/,/g, ''))
  return isNaN(num) ? null : num
}

function parseDate(val: string | undefined | null): string | null {
  if (!val || val.trim() === '') return null
  const d = new Date(val.trim())
  if (isNaN(d.getTime())) return null
  return d.toISOString().split('T')[0]
}

function parseTimestamp(val: string | undefined | null): string | null {
  if (!val || val.trim() === '') return null
  const d = new Date(val.trim())
  if (isNaN(d.getTime())) return null
  return d.toISOString()
}

function mapSpiritType(val: string | undefined | null): SpiritType {
  if (!val) return 'other'
  const lower = val.trim().toLowerCase()
  const map: Record<string, SpiritType> = {
    whiskey: 'whiskey', whisky: 'whiskey',
    bourbon: 'bourbon',
    vodka: 'vodka',
    gin: 'gin',
    rum: 'rum',
    brandy: 'brandy',
    extract: 'extract',
  }
  return map[lower] ?? 'other'
}

function mapBarrelStatus(val: string | undefined | null): BarrelStatus {
  if (!val) return 'aging'
  const lower = val.trim().toLowerCase()
  const map: Record<string, BarrelStatus> = {
    aging: 'aging', active: 'aging',
    dumped: 'dumped', dump: 'dumped',
    empty: 'empty',
    transferred: 'transferred', transfer: 'transferred',
  }
  return map[lower] ?? 'aging'
}

export interface ParsedBarrelStockRow {
  barrel_number: string
  previous_barrel_number: string | null
  barrel_type: string | null
  status: BarrelStatus
  spirit_type: SpiritType
  lot_number: string | null
  internal_lot_name: string | null
  size_gal: number | null
  fill_wine_gal: number | null
  entry_pf: number | null
  fill_proof_gal: number | null
  fill_date: string | null
  distillation_run_refs: string[]
  rackhouse_name: string | null
  slot: string | null
  filling_dsp: string | null
  current_dsp: string | null
  offsite_facility: string | null
  offsite_slot: string | null
  dollar_value: number | null
  barrel_stock_raw: string | null
  cooperage: string | null
  previous_spirit: string | null
  barrel_treatment: string | null
  barrel_condition: 'new' | 'used' | null
  notes: string | null
}

export function parseBarrelStockRow(row: Record<string, string>): ParsedBarrelStockRow {
  const barrelNumber = row['Barrel Number']?.trim() ?? ''
  const stock = parseBarrelStock(row['Barrel Stock'])

  // Combine Row + Tier into slot
  const rowVal = row['Row']?.trim()
  const tier = row['Tier']?.trim()
  const slot = [rowVal, tier].filter(Boolean).join('-') || null

  // Parse distillation run references (may be blended: "24I13A/24I13B/24I13C")
  const distRunRaw = row['Distillation Run']?.trim() ?? ''
  const distillation_run_refs = distRunRaw
    ? distRunRaw.split('/').map((s) => s.trim()).filter(Boolean)
    : []

  // Detect old-format barrel numbers
  const previous_barrel_number = isOldFormatBarrelNumber(barrelNumber) ? barrelNumber : null

  return {
    barrel_number: barrelNumber,
    previous_barrel_number,
    barrel_type: row['Barrel Type']?.trim() || null,
    status: mapBarrelStatus(row['Status']),
    spirit_type: mapSpiritType(row['Spirit Type']),
    lot_number: row['Lot Name']?.trim() || null,
    internal_lot_name: row['Internal Lot Name']?.trim() || null,
    size_gal: parseNum(row['Size (Gal)']),
    fill_wine_gal: parseNum(row['Fill Wine Gal']),
    entry_pf: parseNum(row['Fill Proof']),
    fill_proof_gal: parseNum(row['Fill PG']),
    fill_date: parseDate(row['Fill Date']),
    distillation_run_refs,
    rackhouse_name: row['Rackhouse']?.trim() || null,
    slot,
    filling_dsp: row['Filling DSP']?.trim() || null,
    current_dsp: row['Current DSP']?.trim() || null,
    offsite_facility: row['Offsite Facility']?.trim() || null,
    offsite_slot: row['Offsite Slot']?.trim() || null,
    dollar_value: parseNum(row['Dollar Value']),
    barrel_stock_raw: row['Barrel Stock']?.trim() || null,
    cooperage: stock.cooperage,
    previous_spirit: stock.previous_spirit,
    barrel_treatment: stock.barrel_treatment,
    barrel_condition: stock.barrel_condition,
    notes: row['Notes']?.trim() || null,
  }
}

export interface ParsedFillLogRow {
  barrel_number: string
  fill_date: string | null
  spirit_type: SpiritType
  lot_name: string | null
  source_tank_name: string | null
  fill_proof: number | null
  fill_pg: number | null
  fill_wine_gal: number | null
  barrel_stock_raw: string | null
  barrel_type: string | null
  tank_pg_start: number | null
  tank_pg_end: number | null
  gain_loss_pg: number | null
  distillation_run_refs: string[]
  notes: string | null
  user: string | null
}

export function parseFillLogRow(row: Record<string, string>): ParsedFillLogRow {
  const distRunRaw = row['Distillation Run']?.trim() ?? ''
  return {
    barrel_number: row['Barrel Number']?.trim() ?? '',
    fill_date: parseTimestamp(row['Fill Date']),
    spirit_type: mapSpiritType(row['Spirit Type']),
    lot_name: row['Lot Name']?.trim() || null,
    source_tank_name: row['Source Tank']?.trim() || null,
    fill_proof: parseNum(row['Fill Proof (PF)']),
    fill_pg: parseNum(row['Fill PG']),
    fill_wine_gal: parseNum(row['Fill Wine Gal']),
    barrel_stock_raw: row['Barrel Stock']?.trim() || null,
    barrel_type: row['Barrel Type']?.trim() || null,
    tank_pg_start: parseNum(row['Tank PG Start']),
    tank_pg_end: parseNum(row['Tank PG End']),
    gain_loss_pg: parseNum(row['Gain/Loss PG']),
    distillation_run_refs: distRunRaw ? distRunRaw.split('/').map((s) => s.trim()).filter(Boolean) : [],
    notes: row['Notes']?.trim() || null,
    user: row['User']?.trim() || null,
  }
}

export interface ParsedDumpLogRow {
  dump_date: string | null
  dump_type: string | null
  spirit_type: SpiritType
  barrel_count: number
  lot_name: string | null
  target_tank_name: string | null
  to_account: string | null
  total_opg: number | null
  total_rpg: number | null
  total_loss_pg: number | null
  pct_loss: number | null
  notes: string | null
  operator: string | null
}

export function parseDumpLogRow(row: Record<string, string>): ParsedDumpLogRow {
  return {
    dump_date: parseTimestamp(row['Dump Date']),
    dump_type: row['Dump Type']?.trim() || 'standard',
    spirit_type: mapSpiritType(row['Spirit Type']),
    barrel_count: parseInt(row['Qty (barrels)'] ?? '1', 10) || 1,
    lot_name: row['Lot Name']?.trim() || null,
    target_tank_name: row['Target Tank']?.trim() || null,
    to_account: row['To Account']?.trim() || null,
    total_opg: parseNum(row['Total OPG']),
    total_rpg: parseNum(row['Total RPG']),
    total_loss_pg: parseNum(row['Total Loss PG']),
    pct_loss: parseNum(row['Pct Loss']),
    notes: row['Notes']?.trim() || null,
    operator: row['User']?.trim() || null,
  }
}

export interface ParsedFermentationRow {
  cook_number: number | null
  lot_name: string | null
  fermenter_name: string
  spirit_type: SpiritType
  mash_bill: string | null
  bbl_size: number | null
  volume_gal: number | null
  start_date: string | null
  stripped_date: string | null
  total_days: number | null
  total_hours: number | null
  start_sg: number | null
  potential_pf: number | null
  potential_pg: number | null
  ending_sg: number | null
  ph: number | null
  temp_f: number | null
  status: string
  notes: string | null
  user: string | null
}

function parseBblSize(mashBill: string | null): number | null {
  if (!mashBill) return null
  const match = mashBill.match(/(\d+)\s*BBL/i)
  return match ? parseInt(match[1], 10) : null
}

export function parseFermentationRow(row: Record<string, string>): ParsedFermentationRow {
  const mashBill = row['Mash Bill']?.trim() || null
  return {
    cook_number: parseNum(row['Cook Number']) ? Math.round(parseNum(row['Cook Number'])!) : null,
    lot_name: row['Lot Name']?.trim() || null,
    fermenter_name: row['Fermenter']?.trim() ?? '',
    spirit_type: mapSpiritType(row['Spirit Type']),
    mash_bill: mashBill,
    bbl_size: parseBblSize(mashBill),
    volume_gal: parseNum(row['Volume (Gal)']),
    start_date: parseTimestamp(row['Start Date']),
    stripped_date: parseTimestamp(row['Stripped Date']),
    total_days: parseNum(row['Total Days']),
    total_hours: parseNum(row['Total Hours']),
    start_sg: parseNum(row['Start SG']),
    potential_pf: parseNum(row['Potential PF']),
    potential_pg: parseNum(row['Potential PG']),
    ending_sg: parseNum(row['Ending SG']),
    ph: parseNum(row['pH']),
    temp_f: parseNum(row['Temp (F)']),
    status: row['Status']?.trim().toLowerCase() || 'complete',
    notes: row['Notes']?.trim() || null,
    user: row['User']?.trim() || null,
  }
}

export interface ParsedDistillationRow {
  run_number: number
  lot_name: string | null
  run_date: string | null
  still_name: string | null
  run_phase: string | null
  source_run_ref: string | null
  spirit_type: SpiritType
  mash_bill: string | null
  operator: string | null
  output_account: string | null
  pg_feints: number | null
  pg_heads: number | null
  pg_hearts: number | null
  pg_tails: number | null
  pg_low_wines: number | null
  pg_total: number | null
  notes: string | null
  user: string | null
}

export function parseDistillationRow(row: Record<string, string>): ParsedDistillationRow {
  const stillRaw = row['Still']?.trim() || null
  const still_name = stillRaw
    ? stillRaw === 'Rocket' || stillRaw === 'Arnold' || stillRaw === 'Both'
      ? stillRaw
      : null
    : null

  const phaseRaw = row['Run Phase']?.trim().toLowerCase() || null
  const run_phase = phaseRaw
    ? ['strip', 'spirit', 'low_wines', 'processing'].includes(phaseRaw) ? phaseRaw : null
    : null

  return {
    run_number: parseInt(row['Run Number'] ?? '0', 10),
    lot_name: row['Lot Name']?.trim() || null,
    run_date: parseTimestamp(row['Date']),
    still_name,
    run_phase,
    source_run_ref: row['Source Run']?.trim() || null,
    spirit_type: mapSpiritType(row['Spirit Type']),
    mash_bill: row['Mash Bill']?.trim() || null,
    operator: row['Operator']?.trim() || null,
    output_account: row['Output Account']?.trim() || null,
    pg_feints: parseNum(row['Feints PG']),
    pg_heads: parseNum(row['Heads PG']),
    pg_hearts: parseNum(row['Hearts PG']),
    pg_tails: parseNum(row['Tails PG']),
    pg_low_wines: parseNum(row['Low Wines PG']),
    pg_total: parseNum(row['Total PG']),
    notes: row['Notes']?.trim() || null,
    user: row['User']?.trim() || null,
  }
}
