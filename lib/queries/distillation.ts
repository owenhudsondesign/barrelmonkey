import { createClient } from '@/lib/supabase/server'
import type { SpiritType } from '@/lib/types/database'

export interface DistillationListParams {
  stillName?: 'Rocket' | 'Arnold' | 'Both'
  runPhase?: 'strip' | 'spirit' | 'low_wines' | 'processing'
  spiritType?: SpiritType
  sortBy?: string
  sortDir?: 'asc' | 'desc'
}

export interface DistillationListRow {
  id: string
  run_number: number
  lot_name: string | null
  spirit_type: SpiritType
  still_name: string | null
  run_phase: string | null
  run_date: string
  operator: string | null
  proof_gal: number
  pg_total: number | null
  proof_out: number | null
  notes: string | null
  to_tank: { name: string } | null
}

export interface DistillationDetailRow {
  id: string
  run_number: number
  lot_name: string | null
  spirit_type: SpiritType
  mash_bill: string | null
  still_name: string | null
  run_phase: string | null
  run_timestamp: string
  run_date: string
  operator: string | null
  output_account: string | null
  pg_feints: number | null
  pg_heads: number | null
  pg_hearts: number | null
  pg_tails: number | null
  pg_low_wines: number | null
  pg_total: number | null
  proof_in: number | null
  proof_out: number | null
  proof_gal: number
  temp_f: number | null
  notes: string | null
  logged_by: string
  created_at: string
  to_tank: { name: string } | null
  source_tank: { name: string } | null
  source_run: { run_number: number } | null
  fermentation_batch: { batch_number: string } | null
  barrel_distillation_runs: { barrel: { id: string; barrel_number: string } }[]
}

export async function getDistillationRuns(params: DistillationListParams) {
  const supabase = await createClient()

  let query = supabase
    .from('distillation_runs')
    .select(
      `id, run_number, lot_name, spirit_type, still_name, run_phase,
       run_date, operator, proof_gal, pg_total, proof_out, notes,
       to_tank:tanks!distillation_runs_to_tank_id_fkey(name)`,
      { count: 'exact' }
    )

  if (params.stillName) {
    query = query.eq('still_name', params.stillName)
  }

  if (params.runPhase) {
    query = query.eq('run_phase', params.runPhase)
  }

  if (params.spiritType) {
    query = query.eq('spirit_type', params.spiritType)
  }

  const sortCol = params.sortBy ?? 'run_date'
  const sortAsc = params.sortDir !== 'desc'

  const { data, error, count } = await query.order(sortCol, {
    ascending: sortAsc,
    nullsFirst: false,
  })

  if (error) throw error
  return {
    runs: (data ?? []) as unknown as DistillationListRow[],
    total: count ?? 0,
  }
}

export async function getDistillationRunById(id: string) {
  const supabase = await createClient()

  const { data, error } = await supabase
    .from('distillation_runs')
    .select(
      `*,
       to_tank:tanks!distillation_runs_to_tank_id_fkey(name),
       source_tank:tanks!distillation_runs_source_tank_id_fkey(name),
       source_run:distillation_runs!distillation_runs_source_run_id_fkey(run_number),
       fermentation_batch:fermentation_batches(batch_number),
       barrel_distillation_runs(barrel:barrels(id, barrel_number))`
    )
    .eq('id', id)
    .single()

  if (error) throw error
  return data as unknown as DistillationDetailRow
}

export async function getMonthlyProduction() {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('monthly_production')
    .select('*')
    .order('month', { ascending: false })
    .limit(24)

  if (error) throw error
  return data ?? []
}
