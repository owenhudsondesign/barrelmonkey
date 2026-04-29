import { createClient } from '@/lib/supabase/server'
import type { SpiritType } from '@/lib/types/database'

export interface RecentDumpRow {
  id: string
  dump_date: string
  spirit_type: SpiritType
  barrel_count: number
  blend_lot_name: string | null
}

export interface DashboardStats {
  barrels: {
    aging: number
    dumped: number
    empty: number
    transferred: number
  }
  recentDumps: ReadonlyArray<RecentDumpRow>
  ttbReports: {
    draft: number
    reviewed: number
    filed: number
  }
  equipment: {
    rackhouses: number
    fermenters: number
    tanks: number
  }
}

export async function getDashboardStats(): Promise<DashboardStats> {
  const supabase = await createClient()

  const [
    agingResult,
    dumpedResult,
    emptyResult,
    transferredResult,
    recentDumpsResult,
    draftResult,
    reviewedResult,
    filedResult,
    rackhouseResult,
    fermenterResult,
    tankResult,
  ] = await Promise.all([
    // Barrel counts by status
    supabase.from('barrels').select('id', { count: 'exact', head: true }).eq('status', 'aging'),
    supabase.from('barrels').select('id', { count: 'exact', head: true }).eq('status', 'dumped'),
    supabase.from('barrels').select('id', { count: 'exact', head: true }).eq('status', 'empty'),
    supabase.from('barrels').select('id', { count: 'exact', head: true }).eq('status', 'transferred'),

    // Recent 5 dump batches
    supabase
      .from('dump_batches')
      .select('id, dump_date, spirit_type, barrel_count, blend_lot_name')
      .is('deleted_at', null)
      .order('dump_date', { ascending: false })
      .limit(5)
      .returns<RecentDumpRow[]>(),

    // TTB report counts by status
    supabase.from('ttb_reports').select('id', { count: 'exact', head: true }).eq('status', 'draft'),
    supabase.from('ttb_reports').select('id', { count: 'exact', head: true }).eq('status', 'reviewed'),
    supabase.from('ttb_reports').select('id', { count: 'exact', head: true }).eq('status', 'filed'),

    // Equipment counts
    supabase.from('rackhouses').select('id', { count: 'exact', head: true }),
    supabase.from('fermenters').select('id', { count: 'exact', head: true }).eq('active', true),
    supabase.from('tanks').select('id', { count: 'exact', head: true }).eq('active', true),
  ])

  return {
    barrels: {
      aging: agingResult.count ?? 0,
      dumped: dumpedResult.count ?? 0,
      empty: emptyResult.count ?? 0,
      transferred: transferredResult.count ?? 0,
    },
    recentDumps: recentDumpsResult.data ?? [],
    ttbReports: {
      draft: draftResult.count ?? 0,
      reviewed: reviewedResult.count ?? 0,
      filed: filedResult.count ?? 0,
    },
    equipment: {
      rackhouses: rackhouseResult.count ?? 0,
      fermenters: fermenterResult.count ?? 0,
      tanks: tankResult.count ?? 0,
    },
  }
}
