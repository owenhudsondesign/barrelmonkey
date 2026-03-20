import Link from 'next/link'
import { getBarrelProvenance } from '@/lib/queries/provenance'
import { formatDate, formatProofGallons, formatGallons } from '@/lib/utils/format'

interface BarrelProvenanceProps {
  barrelId: string
}

function totalBottles(casesF: number, bottlesPerCase: number | null, loose: number): string {
  const fromCases = casesF * (bottlesPerCase ?? 0)
  const total = fromCases + loose
  if (total === 0 && casesF > 0) return `${casesF} cases`
  if (total === 0) return '—'
  return `${total.toLocaleString()} bottles`
}

export async function BarrelProvenance({ barrelId }: BarrelProvenanceProps) {
  const provenance = await getBarrelProvenance(barrelId)

  if (provenance.batchingRuns.length === 0) return null

  const allBottlingRuns = provenance.batchingRuns.flatMap((br) => br.bottling_runs)

  return (
    <div className="mb-6 rounded-lg border border-accent/20 bg-accent/[0.04] p-5">
      <h2 className="text-sm font-semibold text-accent uppercase tracking-wider mb-4">
        Where This Barrel Ended Up
      </h2>

      {/* Batching runs */}
      <div className="space-y-4">
        {provenance.batchingRuns.map((br) => (
          <div key={br.id} className="rounded-md border border-white/10 bg-white/[0.02] p-4">
            <div className="flex items-start justify-between gap-4 mb-3">
              <div>
                <p className="text-sm font-medium text-white/80">
                  {br.product_name}
                </p>
                <p className="text-xs text-white/40 mt-0.5">
                  Batch #{br.batch_number} &middot; {formatDate(br.batch_date)}
                </p>
              </div>
              <div className="text-right text-xs text-white/40">
                {br.proof_gal_in != null && <div>In: {formatProofGallons(br.proof_gal_in)}</div>}
                {br.proof_gal_out != null && <div>Out: {formatProofGallons(br.proof_gal_out)}</div>}
              </div>
            </div>

            {/* Bottling runs from this batch */}
            {br.bottling_runs.length > 0 && (
              <div className="space-y-2 border-t border-white/[0.06] pt-3">
                {br.bottling_runs.map((btl) => (
                  <div
                    key={btl.id}
                    className="flex items-center justify-between text-sm"
                  >
                    <div>
                      <span className="text-white/70">{btl.product_name}</span>
                      {btl.lot_name && (
                        <span className="text-white/30 ml-2 text-xs">Lot: {btl.lot_name}</span>
                      )}
                    </div>
                    <div className="flex items-center gap-4 text-xs text-white/40">
                      <span>{formatDate(btl.bottle_date)}</span>
                      <span>{totalBottles(btl.cases_filled, btl.bottles_per_case, btl.loose_bottles)}</span>
                      {btl.proof_gal_bottled != null && (
                        <span>{formatProofGallons(btl.proof_gal_bottled)}</span>
                      )}
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>
        ))}
      </div>

      {/* Summary */}
      {allBottlingRuns.length > 0 && (
        <div className="mt-4 flex items-center justify-between text-xs text-white/30">
          <span>
            {provenance.batchingRuns.length} batch{provenance.batchingRuns.length !== 1 ? 'es' : ''}
            {' '}&middot;{' '}
            {allBottlingRuns.length} bottling run{allBottlingRuns.length !== 1 ? 's' : ''}
          </span>
          <Link
            href="/provenance"
            className="text-accent/60 hover:text-accent transition-colors"
          >
            Search all provenance &rarr;
          </Link>
        </div>
      )}
    </div>
  )
}
