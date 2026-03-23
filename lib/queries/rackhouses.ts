import { createClient } from '@/lib/supabase/server'

export interface RackhouseListRow {
  id: string
  name: string
  is_offsite: boolean
  address: string | null
  active: boolean
  barrel_count: number
}

export async function getRackhouses(): Promise<{
  rackhouses: readonly RackhouseListRow[]
  total: number
}> {
  const supabase = await createClient()

  const { data, error, count } = await supabase
    .from('rackhouses')
    .select('id, name, is_offsite, address, active', { count: 'exact' })
    .eq('active', true)
    .order('name')
    .returns<Array<{ id: string; name: string; is_offsite: boolean; address: string | null; active: boolean }>>()

  if (error) throw error

  const rackhouses = data ?? []

  // Get barrel count per rackhouse using individual count queries
  // This avoids the 1000-row default limit from fetching all barrels
  const countsPromises = rackhouses.map(async (rh) => {
    const { count: barrelCount } = await supabase
      .from('barrels')
      .select('id', { count: 'exact', head: true })
      .eq('status', 'aging')
      .eq('rackhouse_id', rh.id)
    return { id: rh.id, count: barrelCount ?? 0 }
  })

  const counts = await Promise.all(countsPromises)
  const countMap = Object.fromEntries(counts.map((c) => [c.id, c.count]))

  const rackhousesWithCounts: readonly RackhouseListRow[] = rackhouses.map(
    (rh) => ({
      ...rh,
      barrel_count: countMap[rh.id] ?? 0,
    })
  )

  return { rackhouses: rackhousesWithCounts, total: count ?? 0 }
}

export interface RackhouseDetail {
  id: string
  name: string
  is_offsite: boolean
  address: string | null
  active: boolean
}

export interface RackhouseBarrelRow {
  id: string
  barrel_number: string
  spirit_type: string
  product_name: string | null
  fill_date: string | null
  entry_pf: number | null
  status: string
}

export async function getRackhouseDetail(id: string): Promise<{
  rackhouse: RackhouseDetail
  barrels: readonly RackhouseBarrelRow[]
} | null> {
  const supabase = await createClient()

  const { data: rackhouse, error: rhError } = await supabase
    .from('rackhouses')
    .select('id, name, is_offsite, address, active')
    .eq('id', id)
    .single()
    .returns<RackhouseDetail>()

  if (rhError || !rackhouse) return null

  const { data: barrels, error: barrelError } = await supabase
    .from('barrels')
    .select('id, barrel_number, spirit_type, internal_lot_name, fill_date, entry_pf, status')
    .eq('rackhouse_id', id)
    .order('fill_date', { ascending: false })
    .returns<Array<{
      id: string
      barrel_number: string
      spirit_type: string
      internal_lot_name: string | null
      fill_date: string | null
      entry_pf: number | null
      status: string
    }>>()

  if (barrelError) throw barrelError

  const barrelRows: readonly RackhouseBarrelRow[] = (barrels ?? []).map((b) => ({
    id: b.id,
    barrel_number: b.barrel_number,
    spirit_type: b.spirit_type,
    product_name: b.internal_lot_name,
    fill_date: b.fill_date,
    entry_pf: b.entry_pf,
    status: b.status,
  }))

  return { rackhouse, barrels: barrelRows }
}
