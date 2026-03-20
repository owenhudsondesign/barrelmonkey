import Link from 'next/link'
import { getProductProvenance } from '@/lib/queries/provenance'
import { StatusBadge } from '@/components/ui/status-badge'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatProofGallons, formatGallons } from '@/lib/utils/format'
import { ProvenanceSearch } from './provenance-search'
import type { ProductProvenanceResult } from '@/lib/types/database'

interface ProductProvenancePageProps {
  searchParams: Record<string, string | undefined>
}

export async function ProductProvenancePage({ searchParams }: ProductProvenancePageProps) {
  const search = searchParams.search ?? ''
  const results = search.length >= 2 ? await getProductProvenance(search) : []

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white tracking-tight">Provenance</h1>
        <p className="text-white/40 text-sm mt-0.5">
          Trace products back to barrels, or barrels forward to bottles
        </p>
      </div>

      <ProvenanceSearch initialSearch={search} />

      {search.length >= 2 && (
        <div className="mt-2 text-xs text-white/30">
          {results.length} result{results.length !== 1 ? 's' : ''} for &ldquo;{search}&rdquo;
        </div>
      )}

      {/* Results */}
      <div className="mt-6 space-y-4">
        {results.map((result) => (
          <ProvenanceResultCard key={result.id} result={result} />
        ))}

        {search.length >= 2 && results.length === 0 && (
          <div className="text-center py-12 text-white/30 text-sm">
            No bottling runs found matching &ldquo;{search}&rdquo;
          </div>
        )}

        {search.length > 0 && search.length < 2 && (
          <div className="text-center py-12 text-white/30 text-sm">
            Type at least 2 characters to search
          </div>
        )}
      </div>
    </div>
  )
}

function ProvenanceResultCard({ result }: { result: ProductProvenanceResult }) {
  const totalBottles =
    (result.cases_filled * (result.bottles_per_case ?? 0)) + result.loose_bottles
  const barrels = result.batching_run?.barrels ?? []

  return (
    <div className="rounded-lg border border-white/10 bg-white/[0.02] overflow-hidden">
      {/* Header */}
      <div className="p-4 border-b border-white/[0.06]">
        <div className="flex items-start justify-between gap-4">
          <div>
            <div className="flex items-center gap-2">
              <h3 className="text-sm font-medium text-white/80">
                {result.product_name}
              </h3>
              <SpiritBadge type={result.spirit_type} />
            </div>
            <div className="flex items-center gap-3 mt-1 text-xs text-white/40">
              {result.bottling_number != null && <span>Bottling #{result.bottling_number}</span>}
              {result.lot_name && <span>Lot: {result.lot_name}</span>}
              <span>Bottled: {formatDate(result.bottle_date)}</span>
            </div>
          </div>
          <div className="text-right text-xs text-white/40">
            {totalBottles > 0 && (
              <div className="text-white/60 font-medium">
                {totalBottles.toLocaleString()} bottles
              </div>
            )}
            {result.cases_filled > 0 && (
              <div>{result.cases_filled} cases</div>
            )}
          </div>
        </div>

        {/* Batch info */}
        {result.batching_run && (
          <div className="mt-2 text-xs text-white/30">
            Batch #{result.batching_run.batch_number} &middot; {result.batching_run.product_name} &middot; {formatDate(result.batching_run.batch_date)}
          </div>
        )}
      </div>

      {/* Barrels */}
      {barrels.length > 0 && (
        <div className="p-4">
          <div className="text-[10px] text-white/30 uppercase tracking-wider mb-2">
            Source Barrels ({barrels.length})
          </div>
          <div className="grid gap-2 sm:grid-cols-2 lg:grid-cols-3">
            {barrels.map((barrel) => (
              <Link
                key={barrel.id}
                href={`/barrels/${barrel.id}`}
                className="group flex items-center justify-between rounded-md border border-white/[0.06] bg-white/[0.01] px-3 py-2 hover:border-accent/30 hover:bg-accent/[0.02] transition-colors"
              >
                <div>
                  <span className="text-sm text-accent group-hover:text-accent/80 font-medium">
                    {barrel.barrel_number}
                  </span>
                  <div className="flex items-center gap-2 mt-0.5">
                    <StatusBadge status={barrel.status} />
                    {barrel.cooperage && (
                      <span className="text-[10px] text-white/20">{barrel.cooperage}</span>
                    )}
                  </div>
                </div>
                <div className="text-right text-[10px] text-white/30">
                  {barrel.fill_date && <div>Fill: {formatDate(barrel.fill_date)}</div>}
                  {barrel.dump_date && <div>Dump: {formatDate(barrel.dump_date)}</div>}
                  {barrel.proof_gal_contributed != null && (
                    <div>{formatProofGallons(barrel.proof_gal_contributed)} contrib.</div>
                  )}
                </div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {barrels.length === 0 && (
        <div className="p-4 text-xs text-white/20">
          No barrel data linked to this batch
        </div>
      )}
    </div>
  )
}
