import { createClient } from '@/lib/supabase/server'

export interface FermenterListRow {
  id: string
  name: string
  capacity_gal: number | null
  active: boolean
  notes: string | null
}

export async function getFermenters(): Promise<{
  fermenters: readonly FermenterListRow[]
  total: number
}> {
  const supabase = await createClient()

  const { data, error, count } = await supabase
    .from('fermenters')
    .select('id, name, capacity_gal, active, notes', { count: 'exact' })
    .eq('active', true)
    .order('name')

  if (error) throw error

  return { fermenters: data ?? [], total: count ?? 0 }
}

export interface FermenterDetail {
  id: string
  name: string
  capacity_gal: number | null
  active: boolean
  notes: string | null
}

export interface FermenterBatchRow {
  id: string
  batch_number: string
  internal_run_name: string | null
  internal_lot_name: string | null
  spirit_type: string
  mash_bill: string | null
  volume_gal: number | null
  start_date: string
  status: string
  notes: string | null
}

export async function getFermenterDetail(id: string): Promise<{
  fermenter: FermenterDetail
  batches: readonly FermenterBatchRow[]
} | null> {
  const supabase = await createClient()

  const { data: fermenter, error: fmError } = await supabase
    .from('fermenters')
    .select('id, name, capacity_gal, active, notes')
    .eq('id', id)
    .single()
    .returns<FermenterDetail>()

  if (fmError || !fermenter) return null

  const { data: batches, error: batchError } = await supabase
    .from('fermentation_batches')
    .select('id, batch_number, internal_run_name, internal_lot_name, spirit_type, mash_bill, volume_gal, start_date, status, notes')
    .eq('fermenter_id', id)
    .is('deleted_at', null)
    .order('start_date', { ascending: false })
    .returns<FermenterBatchRow[]>()

  if (batchError) throw batchError

  return { fermenter, batches: batches ?? [] }
}
