import { createClient } from '@/lib/supabase/server'
import type { FermentationStatus, SpiritType } from '@/lib/types/database'

const PAGE_SIZE = 50

export interface FermentationBatchListParams {
  page?: number
}

export interface FermentationBatchListRow {
  id: string
  batch_number: string
  cook_number: number | null
  mash_bill: string | null
  spirit_type: SpiritType
  volume_gal: number | null
  start_date: string
  status: FermentationStatus
  fermenter: { name: string } | null
}

export interface DistillationRunListParams {
  page?: number
}

export interface DistillationRunListRow {
  id: string
  run_number: number
  spirit_type: SpiritType
  still_name: string | null
  run_phase: string | null
  run_date: string
  proof_gal: number
  pg_total: number | null
}

export async function getFermentationBatches(params: FermentationBatchListParams = {}) {
  const supabase = await createClient()

  const page = params.page ?? 1
  const from = (page - 1) * PAGE_SIZE
  const to = from + PAGE_SIZE - 1

  const { data, error, count } = await supabase
    .from('fermentation_batches')
    .select(
      `id, batch_number, cook_number, mash_bill, spirit_type,
       volume_gal, start_date, status,
       fermenter:fermenters(name)`,
      { count: 'exact' }
    )
    .is('deleted_at', null)
    .order('start_date', { ascending: false })
    .range(from, to)
    .returns<FermentationBatchListRow[]>()

  if (error) throw error
  return { batches: data ?? [], total: count ?? 0, page, pageSize: PAGE_SIZE }
}

export async function getDistillationRuns(params: DistillationRunListParams = {}) {
  const supabase = await createClient()

  const page = params.page ?? 1
  const from = (page - 1) * PAGE_SIZE
  const to = from + PAGE_SIZE - 1

  const { data, error, count } = await supabase
    .from('distillation_runs')
    .select(
      `id, run_number, spirit_type, still_name, run_phase,
       run_date, proof_gal, pg_total`,
      { count: 'exact' }
    )
    .is('deleted_at', null)
    .order('run_date', { ascending: false })
    .range(from, to)
    .returns<DistillationRunListRow[]>()

  if (error) throw error
  return { runs: data ?? [], total: count ?? 0, page, pageSize: PAGE_SIZE }
}
