import { createClient } from '@/lib/supabase/server'
import type { BarrelStatus, SpiritType } from '@/lib/types/database'

export interface BarrelListParams {
  status?: BarrelStatus | 'all'
  spiritType?: SpiritType
  rackhouse?: string
  search?: string
  sortBy?: string
  sortDir?: 'asc' | 'desc'
  page?: number
}

const PAGE_SIZE = 50

export interface BarrelListRow {
  id: string
  barrel_number: string
  spirit_type: SpiritType
  status: BarrelStatus
  size_gal: number | null
  fill_date: string | null
  spirit_age_date: string | null
  entry_pf: number | null
  fill_proof_gal: number | null
  fill_wine_gal: number | null
  slot: string | null
  notes: string | null
  rackhouse: { id: string; name: string } | null
}

export interface BarrelDetailRow {
  id: string
  barrel_number: string
  previous_barrel_number: string | null
  ws_barrel_id: string | null
  spirit_type: SpiritType
  status: BarrelStatus
  barrel_type: string | null
  size_gal: number | null
  new_or_used: string | null
  cooperage: string | null
  rackhouse_id: string | null
  slot: string | null
  fill_date: string | null
  spirit_age_date: string | null
  entry_pf: number | null
  fill_proof_gal: number | null
  fill_wine_gal: number | null
  dump_date: string | null
  dump_proof: number | null
  dump_proof_gal: number | null
  dump_wine_gal: number | null
  lot_number: string | null
  internal_lot_name: string | null
  filling_dsp: string | null
  current_dsp: string | null
  location_type: 'onsite' | 'offsite' | null
  offsite_facility: string | null
  dollar_value: number | null
  notes: string | null
  rackhouse: { id: string; name: string; is_offsite: boolean } | null
  barrel_distillation_runs: { distillation_run: { run_number: number; spirit_type: SpiritType } }[]
}

export interface BarrelEventRow {
  id: string
  event_type: string
  event_date: string
  proof: number | null
  proof_gal: number | null
  wine_gal: number | null
  net_weight_lb: number | null
  temp_f: number | null
  rack: string | null
  row: string | null
  position: string | null
  fill_proof: number | null
  barrel_stock: string | null
  cooperage: string | null
  previous_spirit: string | null
  barrel_condition: string | null
  gain_loss_pg: number | null
  notes: string | null
  logged_by: string
  created_at: string
  logged_by_user: { full_name: string } | null
  event_rackhouse: { name: string } | null
  from_rackhouse: { name: string } | null
  to_rackhouse: { name: string } | null
  to_tank: { name: string } | null
  distillation_run: { run_number: number } | null
}

export async function getBarrelList(params: BarrelListParams) {
  const supabase = await createClient()

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  let query = supabase
    .from('barrels')
    .select(
      `id, barrel_number, spirit_type, status, size_gal,
       fill_date, spirit_age_date, entry_pf, fill_proof_gal, fill_wine_gal,
       slot, notes,
       rackhouse:rackhouses(id, name)`,
      { count: 'exact' }
    )

  // Search overrides status filter — searches ALL barrels
  if (params.search) {
    query = query.ilike('barrel_number', `%${params.search}%`)
  } else if (params.status && params.status !== 'all') {
    query = query.eq('status', params.status)
  } else if (!params.status) {
    query = query.eq('status', 'aging')
  }

  if (params.spiritType) {
    query = query.eq('spirit_type', params.spiritType)
  }

  if (params.rackhouse) {
    query = query.eq('rackhouse_id', params.rackhouse)
  }

  const sortCol = params.sortBy ?? 'fill_date'
  const sortAsc = params.sortDir !== 'desc'

  const page = params.page ?? 1
  const from = (page - 1) * PAGE_SIZE
  const to = from + PAGE_SIZE - 1

  const { data, error, count } = await query
    .order(sortCol, { ascending: sortAsc, nullsFirst: false })
    .range(from, to)

  if (error) throw error
  return { barrels: (data ?? []) as unknown as BarrelListRow[], total: count ?? 0, page, pageSize: PAGE_SIZE }
}

export async function getBarrelById(id: string) {
  const supabase = await createClient()

  const { data: barrel, error } = await supabase
    .from('barrels')
    .select(
      `*,
       rackhouse:rackhouses(id, name, is_offsite),
       barrel_distillation_runs(distillation_run:distillation_runs(run_number, spirit_type))`
    )
    .eq('id', id)
    .single()

  if (error) throw error

  const { data: events, error: eventsError } = await supabase
    .from('barrel_events')
    .select(
      `*,
       logged_by_user:users!barrel_events_logged_by_fkey(full_name),
       event_rackhouse:rackhouses!barrel_events_rackhouse_id_fkey(name),
       from_rackhouse:rackhouses!barrel_events_from_rackhouse_id_fkey(name),
       to_rackhouse:rackhouses!barrel_events_to_rackhouse_id_fkey(name),
       to_tank:tanks!barrel_events_to_tank_id_fkey(name)`
    )
    .eq('barrel_id', id)
    .is('deleted_at', null)
    .order('event_date', { ascending: true })

  if (eventsError) throw eventsError

  const typedBarrel = barrel as unknown as BarrelDetailRow
  const typedEvents = (events ?? []) as unknown as BarrelEventRow[]
  return { ...typedBarrel, events: typedEvents }
}

export async function getRackhouses() {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('rackhouses')
    .select('id, name')
    .eq('active', true)
    .order('name')
  if (error) throw error
  return data ?? []
}
