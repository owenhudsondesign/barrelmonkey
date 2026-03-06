import { getBatchingRuns } from '@/lib/queries/processing'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

export async function BatchingRunList() {
  const { runs, total } = await getBatchingRuns({ sortDir: 'desc' })

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} batching runs</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Batch #</th>
              <th className="px-4 py-3 font-medium">Product</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">PG In</th>
              <th className="px-4 py-3 font-medium">PG Out</th>
              <th className="px-4 py-3 font-medium">Proof</th>
              <th className="px-4 py-3 font-medium">To Tank</th>
            </tr>
          </thead>
          <tbody>
            {runs.map((run) => (
              <tr
                key={run.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-accent font-medium">{run.batch_number}</td>
                <td className="px-4 py-3 text-white/80">{run.product_name}</td>
                <td className="px-4 py-3"><SpiritBadge type={run.spirit_type} /></td>
                <td className="px-4 py-3 text-white/60">{formatDate(run.batch_date)}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(run.proof_gal_in)}</td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatProofGallons(run.proof_gal_out)}</td>
                <td className="px-4 py-3 text-white/60">
                  {run.actual_proof != null ? `${run.actual_proof.toFixed(1)} PF` : '—'}
                </td>
                <td className="px-4 py-3 text-white/60">{run.to_tank?.name ?? '—'}</td>
              </tr>
            ))}
            {runs.length === 0 && (
              <tr>
                <td colSpan={8} className="px-4 py-8 text-center text-white/30">
                  No batching runs found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
