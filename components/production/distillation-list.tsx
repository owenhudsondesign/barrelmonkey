import Link from 'next/link'
import { getDistillationRuns, type DistillationListParams } from '@/lib/queries/distillation'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatProofGallons } from '@/lib/utils/format'
import type { SpiritType } from '@/lib/types/database'

interface DistillationListProps {
  searchParams: Record<string, string | undefined>
}

export async function DistillationList({ searchParams }: DistillationListProps) {
  const params: DistillationListParams = {
    stillName: searchParams.stillName as 'Rocket' | 'Arnold' | 'Both' | undefined,
    runPhase: searchParams.runPhase as 'strip' | 'spirit' | 'low_wines' | 'processing' | undefined,
    spiritType: (searchParams.spiritType as SpiritType) || undefined,
    sortBy: searchParams.sortBy || 'run_date',
    sortDir: (searchParams.sortDir as 'asc' | 'desc') || 'desc',
  }

  const { runs, total } = await getDistillationRuns(params)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} runs</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Run #</th>
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Still</th>
              <th className="px-4 py-3 font-medium">Phase</th>
              <th className="px-4 py-3 font-medium">Operator</th>
              <th className="px-4 py-3 font-medium">Proof Gal</th>
              <th className="px-4 py-3 font-medium">To Tank</th>
            </tr>
          </thead>
          <tbody>
            {runs.map((run) => (
              <tr
                key={run.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3">
                  <Link
                    href={`/production/distillation/${run.id}`}
                    className="text-accent hover:underline font-medium"
                  >
                    #{run.run_number}
                  </Link>
                </td>
                <td className="px-4 py-3 text-white/60">
                  {formatDate(run.run_date)}
                </td>
                <td className="px-4 py-3">
                  <SpiritBadge type={run.spirit_type} />
                </td>
                <td className="px-4 py-3 text-white/60">
                  {run.still_name ?? '—'}
                </td>
                <td className="px-4 py-3">
                  {run.run_phase ? (
                    <span className="text-xs px-2 py-0.5 rounded-full bg-white/[0.06] text-white/50 capitalize">
                      {run.run_phase.replace('_', ' ')}
                    </span>
                  ) : '—'}
                </td>
                <td className="px-4 py-3 text-white/60">
                  {run.operator ?? '—'}
                </td>
                <td className="px-4 py-3 text-white/60 font-mono">
                  {formatProofGallons(run.proof_gal)}
                </td>
                <td className="px-4 py-3 text-white/60">
                  {run.to_tank?.name ?? '—'}
                </td>
              </tr>
            ))}
            {runs.length === 0 && (
              <tr>
                <td colSpan={8} className="px-4 py-8 text-center text-white/30">
                  No distillation runs found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
