import { createClient } from '@/lib/supabase/server'
import type { TtbReportType, TtbReportStatus } from '@/lib/types/database'

export interface TtbReportListRow {
  id: string
  report_type: TtbReportType
  report_month: number
  report_year: number
  status: TtbReportStatus
  generated_at: string | null
  reviewed_at: string | null
  filed_at: string | null
  notes: string | null
}

export interface ReportListParams {
  type?: TtbReportType
  status?: TtbReportStatus
  sortDir?: 'asc' | 'desc'
}

export async function getTtbReports(params: ReportListParams) {
  const supabase = await createClient()

  let query = supabase
    .from('ttb_reports')
    .select('*', { count: 'exact' })

  if (params.type) {
    query = query.eq('report_type', params.type)
  }

  if (params.status) {
    query = query.eq('status', params.status)
  }

  const { data, error, count } = await query
    .order('report_year', { ascending: false })
    .order('report_month', { ascending: false })
    .returns<TtbReportListRow[]>()

  if (error) throw error
  return { reports: data ?? [], total: count ?? 0 }
}
