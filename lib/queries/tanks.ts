import { createClient } from '@/lib/supabase/server'
import type { TankEventType } from '@/lib/types/database'

export interface TankListRow {
  id: string
  name: string
  capacity_gal: number | null
  can_ferment: boolean
  tank_category: 'production' | 'processing' | 'extract' | 'misc'
  active: boolean
  notes: string | null
  last_event_date: string | null
  last_event_type: TankEventType | null
}

interface TankRow {
  id: string
  name: string
  capacity_gal: number | null
  can_ferment: boolean
  tank_category: 'production' | 'processing' | 'extract' | 'misc'
  active: boolean
  notes: string | null
}

interface TankLatestEventRow {
  tank_id: string
  event_date: string
  event_type: TankEventType
}

interface TankFilters {
  category?: string
  active?: string
}

export async function getTanks(filters: TankFilters) {
  const supabase = await createClient()

  // Fetch tanks
  let tankQuery = supabase
    .from('tanks')
    .select('id, name, capacity_gal, can_ferment, tank_category, active, notes', { count: 'exact' })
    .order('name', { ascending: true })

  if (filters.category && filters.category !== 'all') {
    tankQuery = tankQuery.eq('tank_category', filters.category)
  }

  if (filters.active !== undefined && filters.active !== '') {
    tankQuery = tankQuery.eq('active', filters.active === 'true')
  }

  const { data: tanks, error: tanksError, count } = await tankQuery.returns<TankRow[]>()

  if (tanksError) throw tanksError

  if (!tanks || tanks.length === 0) {
    return { tanks: [] as TankListRow[], total: 0 }
  }

  // Fetch latest event per tank
  const tankIds = tanks.map((t) => t.id)
  const { data: events, error: eventsError } = await supabase
    .from('tank_events')
    .select('tank_id, event_date, event_type')
    .in('tank_id', tankIds)
    .order('event_date', { ascending: false })
    .returns<TankLatestEventRow[]>()

  if (eventsError) throw eventsError

  // Build a map of tank_id -> most recent event (first occurrence per tank due to desc order)
  const latestEventByTank = new Map<string, { event_date: string; event_type: TankEventType }>()
  for (const event of events ?? []) {
    if (!latestEventByTank.has(event.tank_id)) {
      latestEventByTank.set(event.tank_id, {
        event_date: event.event_date,
        event_type: event.event_type,
      })
    }
  }

  // Merge tanks with their latest event
  const rows: TankListRow[] = tanks.map((tank) => {
    const latest = latestEventByTank.get(tank.id)
    return {
      ...tank,
      last_event_date: latest?.event_date ?? null,
      last_event_type: latest?.event_type ?? null,
    }
  })

  return { tanks: rows, total: count ?? 0 }
}

export interface TankDetail {
  id: string
  name: string
  capacity_gal: number | null
  can_ferment: boolean
  tank_category: 'production' | 'processing' | 'extract' | 'misc'
  active: boolean
  notes: string | null
}

export interface TankEventRow {
  id: string
  event_type: TankEventType
  event_date: string
  proof_gal_start: number | null
  proof_gal_end: number | null
  proof_gal_delta: number | null
  wine_gal: number | null
  proof: number | null
  from_tank_id: string | null
  to_tank_id: string | null
  notes: string | null
}

export async function getTankDetail(id: string): Promise<{
  tank: TankDetail
  events: readonly TankEventRow[]
} | null> {
  const supabase = await createClient()

  const { data: tank, error: tankError } = await supabase
    .from('tanks')
    .select('id, name, capacity_gal, can_ferment, tank_category, active, notes')
    .eq('id', id)
    .single()
    .returns<TankDetail>()

  if (tankError || !tank) return null

  const { data: events, error: eventsError } = await supabase
    .from('tank_events')
    .select('id, event_type, event_date, proof_gal_start, proof_gal_end, proof_gal_delta, wine_gal, proof, from_tank_id, to_tank_id, notes')
    .eq('tank_id', id)
    .order('event_date', { ascending: false })
    .limit(50)
    .returns<TankEventRow[]>()

  if (eventsError) throw eventsError

  return { tank, events: events ?? [] }
}
