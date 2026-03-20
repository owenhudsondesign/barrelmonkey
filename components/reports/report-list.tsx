import { getTtbReports, type ReportListParams } from '@/lib/queries/reports'
import { formatDate } from '@/lib/utils/format'
import type { TtbReportType, TtbReportStatus } from '@/lib/types/database'

const MONTHS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

const STATUS_STYLES: Record<string, string> = {
  draft: 'bg-warning/10 text-warning border-warning/20',
  reviewed: 'bg-accent/10 text-accent border-accent/20',
  filed: 'bg-success/10 text-success border-success/20',
}

const TYPE_LABELS: Record<string, string> = {
  production: 'Production (5110.40)',
  storage: 'Storage (5110.11)',
  processing: 'Processing (5110.28)',
}

interface ReportListProps {
  searchParams: Record<string, string | undefined>
}

export async function ReportList({ searchParams }: ReportListProps) {
  const params: ReportListParams = {
    type: (searchParams.type as TtbReportType) || undefined,
    status: (searchParams.status as TtbReportStatus) || undefined,
  }

  const { reports, total } = await getTtbReports(params)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} reports</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Period</th>
              <th className="px-4 py-3 font-medium">Type</th>
              <th className="px-4 py-3 font-medium">Status</th>
              <th className="px-4 py-3 font-medium">Generated</th>
              <th className="px-4 py-3 font-medium">Reviewed</th>
              <th className="px-4 py-3 font-medium">Filed</th>
            </tr>
          </thead>
          <tbody>
            {reports.map((report) => (
              <tr
                key={report.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-white/80 font-medium">
                  {MONTHS[report.period_month - 1]} {report.period_year}
                </td>
                <td className="px-4 py-3 text-white/60 text-xs">
                  {TYPE_LABELS[report.report_type] ?? report.report_type}
                </td>
                <td className="px-4 py-3">
                  <span className={`inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded border ${STATUS_STYLES[report.status] ?? ''}`}>
                    {report.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-white/60">{formatDate(report.generated_at)}</td>
                <td className="px-4 py-3 text-white/60">{formatDate(report.reviewed_at)}</td>
                <td className="px-4 py-3 text-white/60">{formatDate(report.filed_at)}</td>
              </tr>
            ))}
            {reports.length === 0 && (
              <tr>
                <td colSpan={6} className="px-4 py-8 text-center text-white/30">
                  No TTB reports found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
