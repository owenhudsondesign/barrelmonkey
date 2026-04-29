import { getBottlingRuns } from '@/lib/queries/processing'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { Pagination } from '@/components/ui/pagination'
import { RowActions } from '@/components/ui/row-actions'
import { deleteBottlingRun } from '@/lib/actions/bottling'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

interface BottlingRunListProps {
  readonly searchParams: Record<string, string | undefined>
}

export async function BottlingRunList({ searchParams }: BottlingRunListProps) {
  const page = Number(searchParams.page) || 1
  const { runs, total, pageSize } = await getBottlingRuns({ sortDir: 'desc', page })
  const totalPages = Math.ceil(total / pageSize)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} bottling runs</div>

      <div className="rounded-lg border border-white/10 overflow-x-auto">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Run #</th>
              <th className="px-4 py-3 font-medium">Product</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">Cases</th>
              <th className="px-4 py-3 font-medium">Loose</th>
              <th className="px-4 py-3 font-medium">PG Bottled</th>
              <th className="px-4 py-3 font-medium">Format</th>
              <th className="px-4 py-3 font-medium">Source</th>
              <th className="px-4 py-3 font-medium w-10"></th>
            </tr>
          </thead>
          <tbody>
            {runs.map((run) => (
              <tr
                key={run.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-accent font-medium">
                  {run.bottling_number != null ? `#${run.bottling_number}` : '—'}
                </td>
                <td className="px-4 py-3 text-white/80">{run.product_name}</td>
                <td className="px-4 py-3"><SpiritBadge type={run.spirit_type} /></td>
                <td className="px-4 py-3 text-white/60">{formatDate(run.bottle_date)}</td>
                <td className="px-4 py-3 text-white/80 font-medium">{run.cases_filled}</td>
                <td className="px-4 py-3 text-white/60">{run.loose_bottles}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(run.proof_gal_bottled)}</td>
                <td className="px-4 py-3 text-white/50 text-xs">{run.pack_format ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{run.source_tank?.name ?? '—'}</td>
                <td className="px-4 py-3">
                  <RowActions
                    editHref={`/processing/bottling/${run.id}/edit`}
                    onDelete={deleteBottlingRun.bind(null, run.id)}
                    recordLabel={`bottling run for ${run.product_name}`}
                  />
                </td>
              </tr>
            ))}
            {runs.length === 0 && (
              <tr>
                <td colSpan={10} className="px-4 py-8 text-center text-white/30">
                  No bottling runs found
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
