import Link from 'next/link'
import { getTibRecords, type TibListParams } from '@/lib/queries/transfers'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { Pagination } from '@/components/ui/pagination'
import { formatDate, formatProofGallons } from '@/lib/utils/format'
import type { TibDirection } from '@/lib/types/database'

interface TibListProps {
  searchParams: Record<string, string | undefined>
}

export async function TibList({ searchParams }: TibListProps) {
  const page = Number(searchParams.page) || 1
  const params: TibListParams = {
    direction: (searchParams.direction as TibDirection) || undefined,
    sortDir: 'desc',
    page,
  }

  const { records, total, pageSize } = await getTibRecords(params)
  const totalPages = Math.ceil(total / pageSize)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} transfers</div>

      <div className="rounded-lg border border-white/10 overflow-x-auto">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">TIB #</th>
              <th className="px-4 py-3 font-medium">Direction</th>
              <th className="px-4 py-3 font-medium">Type</th>
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">DSP</th>
              <th className="px-4 py-3 font-medium">Containers</th>
              <th className="px-4 py-3 font-medium">Total PG</th>
            </tr>
          </thead>
          <tbody>
            {records.map((record) => (
              <tr
                key={record.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3">
                  <Link
                    href={`/transfers/${record.id}`}
                    className="text-accent hover:underline font-medium"
                  >
                    {record.tib_number != null ? `#${record.tib_number}` : record.id.slice(0, 8)}
                  </Link>
                </td>
                <td className="px-4 py-3">
                  <span className={`text-xs px-2 py-0.5 rounded-full border ${
                    record.direction === 'inbound'
                      ? 'bg-success/10 text-success border-success/20'
                      : 'bg-transferred/10 text-transferred border-transferred/20'
                  }`}>
                    {record.direction}
                  </span>
                </td>
                <td className="px-4 py-3 text-white/60">{record.tib_type ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{formatDate(record.transfer_date)}</td>
                <td className="px-4 py-3"><SpiritBadge type={record.spirit_type} /></td>
                <td className="px-4 py-3 text-white/60 text-xs">
                  {record.dsp_name ?? record.dsp_number ?? '—'}
                </td>
                <td className="px-4 py-3 text-white/60">{record.container_ct ?? '—'}</td>
                <td className="px-4 py-3 text-white/60 font-mono">
                  {formatProofGallons(record.total_pg)}
                </td>
              </tr>
            ))}
            {records.length === 0 && (
              <tr>
                <td colSpan={8} className="px-4 py-8 text-center text-white/30">
                  No transfer records found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      {totalPages > 1 && (
        <Pagination
          currentPage={page}
          totalPages={totalPages}
          searchParams={searchParams}
          basePath="/transfers"
        />
      )}
    </div>
  )
}
