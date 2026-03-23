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
