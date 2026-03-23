import { createClient } from '@/lib/supabase/server'

interface RackhouseRow {
  id: string
  name: string
  is_offsite: boolean
  address: string | null
  active: boolean
}

interface BarrelRackhouseRow {
  rackhouse_id: string | null
}

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
    .returns<RackhouseRow[]>()

  if (error) throw error

  const rackhouses = data ?? []

  // Fetch barrel counts per rackhouse (barrels with status 'aging')
  const { data: barrelCounts, error: barrelError } = await supabase
    .from('barrels')
    .select('rackhouse_id')
    .eq('status', 'aging')
    .not('rackhouse_id', 'is', null)
    .returns<BarrelRackhouseRow[]>()

  if (barrelError) throw barrelError

  const countMap = (barrelCounts ?? []).reduce<Record<string, number>>(
    (acc, row) => {
      const key = row.rackhouse_id as string
      return { ...acc, [key]: (acc[key] ?? 0) + 1 }
    },
    {}
  )

  const rackhousesWithCounts: readonly RackhouseListRow[] = rackhouses.map(
    (rh) => ({
      ...rh,
      barrel_count: countMap[rh.id] ?? 0,
    })
  )

  return { rackhouses: rackhousesWithCounts, total: count ?? 0 }
}
