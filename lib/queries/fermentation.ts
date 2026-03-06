import { createClient } from '@/lib/supabase/server'
import type { FermentationStatus, SpiritType } from '@/lib/types/database'

export interface FermentationListParams {
  status?: FermentationStatus | 'all'
  spiritType?: SpiritType
  fermenterId?: string
  sortBy?: string
  sortDir?: 'asc' | 'desc'
}

export interface FermentationListRow {
  id: string
  batch_number: string
  spirit_type: SpiritType
  mash_bill: string | null
  volume_gal: number | null
  start_date: string
  stripped_date: string | null
  total_days: number | null
  start_sg: number | null
  ending_sg: number | null
  status: FermentationStatus
  notes: string | null
  fermenter: { id: string; name: string } | null
}

export interface FermentationDetailRow {
  id: string
  cook_number: number | null
  lot_name: string | null
  batch_number: string
  ws_batch_number: number | null
  dsp_number: string | null
  internal_run_name: string | null
  internal_lot_name: string | null
  fermenter_id: string
  spirit_type: SpiritType
  mash_bill: string | null
  bbl_size: number | null
  volume_gal: number | null
  start_date: string
  stripped_date: string | null
  total_days: number | null
  total_hours: number | null
  start_sg: number | null
  potential_pf: number | null
  potential_pg: number | null
  ending_sg: number | null
  ph: number | null
  temp_f: number | null
  status: FermentationStatus
  notes: string | null
  logged_by: string
  created_at: string
  fermenter: { id: string; name: string } | null
  fermentation_moves: FermentationMoveRow[]
}

export interface FermentationMoveRow {
  id: string
  volume_gal: number
  move_date: string
  notes: string | null
  to_tank: { name: string } | null
  from_fermenter: { name: string } | null
}

export async function getFermentationBatches(params: FermentationListParams) {
  const supabase = await createClient()

  let query = supabase
    .from('fermentation_batches')
    .select(
      `id, batch_number, spirit_type, mash_bill, volume_gal,
       start_date, stripped_date, total_days, start_sg, ending_sg,
       status, notes,
       fermenter:fermenters(id, name)`,
      { count: 'exact' }
    )

  if (params.status && params.status !== 'all') {
    query = query.eq('status', params.status)
  }

  if (params.spiritType) {
    query = query.eq('spirit_type', params.spiritType)
  }

  if (params.fermenterId) {
    query = query.eq('fermenter_id', params.fermenterId)
  }

  const sortCol = params.sortBy ?? 'start_date'
  const sortAsc = params.sortDir !== 'desc'

  const { data, error, count } = await query.order(sortCol, {
    ascending: sortAsc,
    nullsFirst: false,
  })

  if (error) throw error
  return {
    batches: (data ?? []) as unknown as FermentationListRow[],
    total: count ?? 0,
  }
}

export async function getFermentationBatchById(id: string) {
  const supabase = await createClient()

  const { data, error } = await supabase
    .from('fermentation_batches')
    .select(
      `*,
       fermenter:fermenters(id, name),
       fermentation_moves(
         id, volume_gal, move_date, notes,
         to_tank:tanks(name),
         from_fermenter:fermenters(name)
       )`
    )
    .eq('id', id)
    .single()

  if (error) throw error
  return data as unknown as FermentationDetailRow
}

export async function getFermenters() {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('fermenters')
    .select('id, name')
    .eq('active', true)
    .order('name')
  if (error) throw error
  return data ?? []
}
