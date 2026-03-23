import { getDistillationRuns } from '@/lib/queries/production'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { Pagination } from '@/components/ui/pagination'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

interface DistillationListProps {
  readonly searchParams: Record<string, string | undefined>
}

export async function DistillationList({ searchParams }: DistillationListProps) {
  const page = Number(searchParams.page) || 1
  const { runs, total, pageSize } = await getDistillationRuns({ page })
  const totalPages = Math.ceil(total / pageSize)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} distillation runs</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Run #</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Still</th>
              <th className="px-4 py-3 font-medium">Phase</th>
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">Proof Gal</th>
              <th className="px-4 py-3 font-medium">Total PG</th>
            </tr>
          </thead>
          <tbody>
            {runs.map((run) => (
              <tr
                key={run.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-white/80 font-medium">{run.run_number}</td>
                <td className="px-4 py-3"><SpiritBadge type={run.spirit_type} /></td>
                <td className="px-4 py-3 text-white/60">{run.still_name ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{run.run_phase ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{formatDate(run.run_date)}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(run.proof_gal)}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(run.pg_total)}</td>
              </tr>
            ))}
            {runs.length === 0 && (
              <tr>
                <td colSpan={7} className="px-4 py-8 text-center text-white/30">
                  No distillation runs found
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
          basePath="/production"
        />
      )}
    </div>
  )
}
