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
