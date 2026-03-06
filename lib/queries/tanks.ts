import { createClient } from '@/lib/supabase/server'

export interface TankListParams {
  category?: 'production' | 'processing' | 'extract' | 'misc' | 'all'
  canFerment?: boolean
  sortBy?: string
  sortDir?: 'asc' | 'desc'
}

export interface TankListRow {
  id: string
  name: string
  capacity_gal: number | null
  can_ferment: boolean
  tank_category: string
  active: boolean
  notes: string | null
}

export interface TankDetailRow {
  id: string
  name: string
  capacity_gal: number | null
  can_ferment: boolean
  tank_category: string
  active: boolean
  notes: string | null
  created_at: string
  tank_events: TankEventRow[]
}

export interface TankEventRow {
  id: string
  event_type: string
  event_date: string
  spirit_type: string | null
  proof_gal_delta: number | null
  proof: number | null
  volume_gal: number | null
  notes: string | null
  to_tank: { name: string } | null
  from_tank: { name: string } | null
  distillation_run: { run_number: number } | null
}

export async function getTanks(params: TankListParams) {
  const supabase = await createClient()

  let query = supabase
    .from('tanks')
    .select('id, name, capacity_gal, can_ferment, tank_category, active, notes', {
      count: 'exact',
    })
    .eq('active', true)

  if (params.category && params.category !== 'all') {
    query = query.eq('tank_category', params.category)
  }

  if (params.canFerment != null) {
    query = query.eq('can_ferment', params.canFerment)
  }

  const sortCol = params.sortBy ?? 'name'
  const sortAsc = params.sortDir !== 'desc'

  const { data, error, count } = await query.order(sortCol, {
    ascending: sortAsc,
    nullsFirst: false,
  })

  if (error) throw error
  return {
    tanks: (data ?? []) as TankListRow[],
    total: count ?? 0,
  }
}

export async function getTankById(id: string) {
  const supabase = await createClient()

  const { data: tank, error } = await supabase
    .from('tanks')
    .select('*')
    .eq('id', id)
    .single()

  if (error) throw error

  const { data: events, error: eventsError } = await supabase
    .from('tank_events')
    .select(
      `id, event_type, event_date, spirit_type, proof_gal_delta, proof, volume_gal, notes,
       to_tank:tanks!tank_events_to_tank_id_fkey(name),
       from_tank:tanks!tank_events_from_tank_id_fkey(name),
       distillation_run:distillation_runs(run_number)`
    )
    .eq('tank_id', id)
    .order('event_date', { ascending: false })

  if (eventsError) throw eventsError

  // Compute current PG from event deltas
  const currentPg = (events ?? []).reduce(
    (sum: number, e: { proof_gal_delta: number | null }) => sum + (e.proof_gal_delta ?? 0),
    0
  )

  return {
    ...(tank as unknown as Omit<TankDetailRow, 'tank_events'>),
    tank_events: (events ?? []) as unknown as TankEventRow[],
    current_pg: Math.round(currentPg * 100) / 100,
  }
}

export async function getTankAdjustments(tankId: string) {
  const supabase = await createClient()

  const { data, error } = await supabase
    .from('tank_adjustments')
    .select('*')
    .eq('tank_id', tankId)
    .order('adjustment_date', { ascending: false })

  if (error) throw error
  return data ?? []
}
