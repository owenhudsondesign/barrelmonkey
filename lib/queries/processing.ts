import { createClient } from '@/lib/supabase/server'
import type { SpiritType } from '@/lib/types/database'

const PAGE_SIZE = 50

export interface DumpBatchListRow {
  id: string
  dump_date: string
  dump_type: string | null
  spirit_type: SpiritType
  barrel_count: number
  total_opg: number | null
  total_rpg: number | null
  total_loss_pg: number | null
  pct_loss: number | null
  blend_lot_name: string | null
  operator: string | null
  target_tank: { name: string } | null
}

export interface BatchingRunListRow {
  id: string
  batch_number: string
  spirit_type: SpiritType
  product_name: string
  batch_date: string
  proof_gal_in: number | null
  proof_gal_out: number | null
  actual_proof: number | null
  to_tank: { name: string } | null
}

export interface BottlingRunListRow {
  id: string
  bottling_number: number | null
  product_name: string
  spirit_type: SpiritType
  bottle_date: string
  cases_filled: number
  loose_bottles: number
  proof_gal_bottled: number | null
  pack_format: string | null
  source_tank: { name: string } | null
}

export async function getDumpBatches(params: { sortDir?: 'asc' | 'desc'; page?: number }) {
  const supabase = await createClient()

  const page = params.page ?? 1
  const from = (page - 1) * PAGE_SIZE
  const to = from + PAGE_SIZE - 1

  const { data, error, count } = await supabase
    .from('dump_batches')
    .select(
      `id, dump_date, dump_type, spirit_type, barrel_count,
       total_opg, total_rpg, total_loss_pg, pct_loss, blend_lot_name, operator,
       target_tank:tanks(name)`,
      { count: 'exact' }
    )
    .is('deleted_at', null)
    .order('dump_date', { ascending: params.sortDir !== 'desc' })
    .range(from, to)
    .returns<DumpBatchListRow[]>()

  if (error) throw error
  return { batches: data ?? [], total: count ?? 0, page, pageSize: PAGE_SIZE }
}

export async function getBatchingRuns(params: { sortDir?: 'asc' | 'desc'; page?: number }) {
  const supabase = await createClient()

  const page = params.page ?? 1
  const from = (page - 1) * PAGE_SIZE
  const to = from + PAGE_SIZE - 1

  const { data, error, count } = await supabase
    .from('batching_runs')
    .select(
      `id, batch_number, spirit_type, product_name, batch_date,
       proof_gal_in, proof_gal_out, actual_proof,
       to_tank:tanks(name)`,
      { count: 'exact' }
    )
    .is('deleted_at', null)
    .order('batch_date', { ascending: params.sortDir !== 'desc' })
    .range(from, to)
    .returns<BatchingRunListRow[]>()

  if (error) throw error
  return { runs: data ?? [], total: count ?? 0, page, pageSize: PAGE_SIZE }
}

export async function getBottlingRuns(params: { sortDir?: 'asc' | 'desc'; page?: number }) {
  const supabase = await createClient()

  const page = params.page ?? 1
  const from = (page - 1) * PAGE_SIZE
  const to = from + PAGE_SIZE - 1

  const { data, error, count } = await supabase
    .from('bottling_runs')
    .select(
      `id, bottling_number, product_name, spirit_type, bottle_date,
       cases_filled, loose_bottles, proof_gal_bottled, pack_format,
       source_tank:tanks(name)`,
      { count: 'exact' }
    )
    .is('deleted_at', null)
    .order('bottle_date', { ascending: params.sortDir !== 'desc' })
    .range(from, to)
    .returns<BottlingRunListRow[]>()

  if (error) throw error
  return { runs: data ?? [], total: count ?? 0, page, pageSize: PAGE_SIZE }
}
