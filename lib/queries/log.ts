import { createClient } from '@/lib/supabase/server'
import type { BarrelEventType, TankEventType } from '@/lib/types/database'

export interface ActivityEntry {
  id: string
  source_type: 'barrel' | 'tank'
  source_id: string
  source_label: string
  event_type: string
  event_date: string
  proof_gal: number | null
  notes: string | null
  logged_by_name: string | null
}

interface BarrelEventRow {
  id: string
  barrel_id: string
  event_type: BarrelEventType
  event_date: string
  proof_gal: number | null
  notes: string | null
  barrel: { barrel_number: string } | null
}

interface TankEventRow {
  id: string
  tank_id: string
  event_type: TankEventType
  event_date: string
  proof_gal_start: number | null
  proof_gal_end: number | null
  notes: string | null
  tank: { name: string } | null
}

interface GetRecentActivityParams {
  eventType?: string
  limit?: number
}

export async function getRecentActivity(
  params: GetRecentActivityParams = {}
): Promise<ReadonlyArray<ActivityEntry>> {
  const { eventType, limit = 50 } = params
  const supabase = await createClient()

  let barrelQuery = supabase
    .from('barrel_events')
    .select(
      `id, barrel_id, event_type, event_date, proof_gal, notes,
       barrel:barrels(barrel_number)`
    )
    .order('event_date', { ascending: false })
    .limit(limit)

  let tankQuery = supabase
    .from('tank_events')
    .select(
      `id, tank_id, event_type, event_date, proof_gal_start, proof_gal_end, notes,
       tank:tanks(name)`
    )
    .order('event_date', { ascending: false })
    .limit(limit)

  if (eventType) {
    barrelQuery = barrelQuery.eq('event_type', eventType)
    tankQuery = tankQuery.eq('event_type', eventType)
  }

  const [barrelResult, tankResult] = await Promise.all([
    barrelQuery.returns<BarrelEventRow[]>(),
    tankQuery.returns<TankEventRow[]>(),
  ])

  if (barrelResult.error) {
    console.error('Barrel events query error:', barrelResult.error)
  }
  if (tankResult.error) {
    console.error('Tank events query error:', tankResult.error)
  }

  const barrelEntries: ReadonlyArray<ActivityEntry> = (barrelResult.data ?? []).map(
    (row) => ({
      id: row.id,
      source_type: 'barrel' as const,
      source_id: row.barrel_id,
      source_label: row.barrel?.barrel_number ?? 'Unknown',
      event_type: row.event_type,
      event_date: row.event_date,
      proof_gal: row.proof_gal,
      notes: row.notes,
      logged_by_name: null,
    })
  )

  const tankEntries: ReadonlyArray<ActivityEntry> = (tankResult.data ?? []).map(
    (row) => ({
      id: row.id,
      source_type: 'tank' as const,
      source_id: row.tank_id,
      source_label: row.tank?.name ?? 'Unknown',
      event_type: row.event_type,
      event_date: row.event_date,
      proof_gal: row.proof_gal_end ?? row.proof_gal_start,
      notes: row.notes,
      logged_by_name: null,
    })
  )

  const merged = [...barrelEntries, ...tankEntries].sort(
    (a, b) => new Date(b.event_date).getTime() - new Date(a.event_date).getTime()
  )

  return merged.slice(0, limit)
}
