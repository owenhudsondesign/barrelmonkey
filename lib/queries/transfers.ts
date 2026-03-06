import { createClient } from '@/lib/supabase/server'
import type { SpiritType, TibDirection } from '@/lib/types/database'

export interface TibListParams {
  direction?: TibDirection
  sortDir?: 'asc' | 'desc'
}

export interface TibRecordListRow {
  id: string
  tib_number: number | null
  direction: TibDirection
  tib_type: string | null
  transfer_date: string
  spirit_type: SpiritType
  dsp_name: string | null
  dsp_number: string | null
  container_ct: number | null
  total_pg: number | null
  total_wg: number | null
  form_5100_16: string | null
}

export interface TibRecordDetailRow {
  id: string
  tib_number: number | null
  direction: TibDirection
  tib_type: string | null
  transfer_date: string
  spirit_type: SpiritType
  lot_name: string | null
  dsp_name: string | null
  dsp_number: string | null
  ref_number: string | null
  po_number: string | null
  container_ct: number | null
  total_pg: number | null
  total_wg: number | null
  pf: number | null
  form_5100_16: string | null
  notes: string | null
  created_at: string
  tib_barrels: TibBarrelRow[]
}

export interface TibBarrelRow {
  id: string
  proof_gal: number | null
  wine_gal: number | null
  proof: number | null
  barrel: { id: string; barrel_number: string } | null
}

export async function getTibRecords(params: TibListParams) {
  const supabase = await createClient()

  let query = supabase
    .from('tib_records')
    .select(
      `id, tib_number, direction, tib_type, transfer_date, spirit_type,
       dsp_name, dsp_number, container_ct, total_pg, total_wg, form_5100_16`,
      { count: 'exact' }
    )

  if (params.direction) {
    query = query.eq('direction', params.direction)
  }

  const { data, error, count } = await query
    .order('transfer_date', { ascending: params.sortDir !== 'desc' })
    .returns<TibRecordListRow[]>()

  if (error) throw error
  return { records: data ?? [], total: count ?? 0 }
}

export async function getTibRecordById(id: string) {
  const supabase = await createClient()

  const { data, error } = await supabase
    .from('tib_records')
    .select(
      `*,
       tib_barrels(id, proof_gal, wine_gal, proof, barrel:barrels(id, barrel_number))`
    )
    .eq('id', id)
    .single()

  if (error) throw error
  return data as unknown as TibRecordDetailRow
}
