import { createClient } from '@/lib/supabase/server'

export interface DashboardStats {
  totalAgingBarrels: number
  totalPgInStorage: number
  activeFermentations: number
  runsThisMonth: number
  fillsThisMonth: number
  dumpsThisMonth: number
}

export interface AgingBracket {
  bracket: string
  count: number
}

export interface SpiritBreakdown {
  spirit_type: string
  count: number
}

export interface RecentEvent {
  id: string
  event_type: string
  event_date: string
  barrel_number: string
  proof_gal: number | null
  logged_by_name: string | null
}

export async function getDashboardStats(): Promise<DashboardStats> {
  const supabase = await createClient()

  const now = new Date()
  const monthStart = new Date(now.getFullYear(), now.getMonth(), 1).toISOString()

  const [
    { count: agingCount },
    pgResult,
    { count: fermentationCount },
    { count: runsCount },
    { count: fillsCount },
    { count: dumpsCount },
  ] = await Promise.all([
    supabase.from('barrels').select('*', { count: 'exact', head: true }).eq('status', 'aging'),
    supabase.from('active_barrels').select('fill_proof_gal').returns<{ fill_proof_gal: number | null }[]>(),
    supabase.from('fermentation_batches').select('*', { count: 'exact', head: true }).eq('status', 'active'),
    supabase.from('distillation_runs').select('*', { count: 'exact', head: true }).gte('run_date', monthStart),
    supabase.from('barrel_events').select('*', { count: 'exact', head: true }).eq('event_type', 'fill').gte('event_date', monthStart),
    supabase.from('barrel_events').select('*', { count: 'exact', head: true }).eq('event_type', 'dump').gte('event_date', monthStart),
  ])

  const totalPg = (pgResult.data ?? []).reduce(
    (sum, row) => sum + (row.fill_proof_gal ?? 0),
    0
  )

  return {
    totalAgingBarrels: agingCount ?? 0,
    totalPgInStorage: Math.round(totalPg * 100) / 100,
    activeFermentations: fermentationCount ?? 0,
    runsThisMonth: runsCount ?? 0,
    fillsThisMonth: fillsCount ?? 0,
    dumpsThisMonth: dumpsCount ?? 0,
  }
}

export async function getAgingDistribution(): Promise<AgingBracket[]> {
  const supabase = await createClient()

  const { data } = await supabase
    .from('active_barrels')
    .select('years_aging')
    .returns<{ years_aging: number | null }[]>()

  if (!data) return []

  const brackets: Record<string, number> = {
    '< 1 year': 0,
    '1-2 years': 0,
    '2-4 years': 0,
    '4-8 years': 0,
    '8+ years': 0,
  }

  for (const row of data) {
    const years = row.years_aging ?? 0
    if (years < 1) brackets['< 1 year']++
    else if (years < 2) brackets['1-2 years']++
    else if (years < 4) brackets['2-4 years']++
    else if (years < 8) brackets['4-8 years']++
    else brackets['8+ years']++
  }

  return Object.entries(brackets).map(([bracket, count]) => ({ bracket, count }))
}

export async function getSpiritBreakdown(): Promise<SpiritBreakdown[]> {
  const supabase = await createClient()

  const { data } = await supabase
    .from('barrels')
    .select('spirit_type')
    .eq('status', 'aging')
    .returns<{ spirit_type: string }[]>()

  if (!data) return []

  const counts: Record<string, number> = {}
  for (const row of data) {
    counts[row.spirit_type] = (counts[row.spirit_type] ?? 0) + 1
  }

  return Object.entries(counts)
    .map(([spirit_type, count]) => ({ spirit_type, count }))
    .sort((a, b) => b.count - a.count)
}

export async function getRecentActivity(limit = 10): Promise<RecentEvent[]> {
  const supabase = await createClient()

  interface RawActivityRow {
    id: string
    event_type: string
    event_date: string
    proof_gal: number | null
    barrel: { barrel_number: string } | null
    logged_by_user: { full_name: string } | null
  }

  const { data, error } = await supabase
    .from('barrel_events')
    .select(
      `id, event_type, event_date, proof_gal,
       barrel:barrels(barrel_number),
       logged_by_user:users!barrel_events_logged_by_fkey(full_name)`
    )
    .order('event_date', { ascending: false })
    .limit(limit)
    .returns<RawActivityRow[]>()

  if (error) throw error

  return (data ?? []).map((row) => ({
    id: row.id,
    event_type: row.event_type,
    event_date: row.event_date,
    barrel_number: row.barrel?.barrel_number ?? '—',
    proof_gal: row.proof_gal,
    logged_by_name: row.logged_by_user?.full_name ?? null,
  }))
}
