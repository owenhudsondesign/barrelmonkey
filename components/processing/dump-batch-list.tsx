import { getDumpBatches } from '@/lib/queries/processing'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { Pagination } from '@/components/ui/pagination'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

interface DumpBatchListProps {
  readonly searchParams: Record<string, string | undefined>
}

export async function DumpBatchList({ searchParams }: DumpBatchListProps) {
  const page = Number(searchParams.page) || 1
  const { batches, total, pageSize } = await getDumpBatches({ sortDir: 'desc', page })
  const totalPages = Math.ceil(total / pageSize)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} dump batches</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Barrels</th>
              <th className="px-4 py-3 font-medium">Original PG</th>
              <th className="px-4 py-3 font-medium">Regauge PG</th>
              <th className="px-4 py-3 font-medium">Loss</th>
              <th className="px-4 py-3 font-medium">To Tank</th>
              <th className="px-4 py-3 font-medium">Operator</th>
            </tr>
          </thead>
          <tbody>
            {batches.map((batch) => (
              <tr
                key={batch.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-white/60">{formatDate(batch.dump_date)}</td>
                <td className="px-4 py-3"><SpiritBadge type={batch.spirit_type} /></td>
                <td className="px-4 py-3 text-white/80 font-medium">{batch.barrel_count}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(batch.total_opg)}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(batch.total_rpg)}</td>
                <td className="px-4 py-3">
                  {batch.pct_loss != null ? (
                    <span className={batch.pct_loss > 5 ? 'text-error' : 'text-white/50'}>
                      {batch.pct_loss.toFixed(2)}%
                    </span>
                  ) : '—'}
                </td>
                <td className="px-4 py-3 text-white/60">{batch.target_tank?.name ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{batch.operator ?? '—'}</td>
              </tr>
            ))}
            {batches.length === 0 && (
              <tr>
                <td colSpan={8} className="px-4 py-8 text-center text-white/30">
                  No dump batches found
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
          basePath="/processing"
        />
      )}
    </div>
  )
}
