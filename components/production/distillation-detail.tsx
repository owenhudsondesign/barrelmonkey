import Link from 'next/link'
import { getDistillationRunById } from '@/lib/queries/distillation'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

interface DistillationDetailProps {
  id: string
}

export async function DistillationDetail({ id }: DistillationDetailProps) {
  const run = await getDistillationRunById(id)

  return (
    <div>
      <div className="mb-6">
        <Link
          href="/production?tab=distillation"
          className="text-xs text-white/30 hover:text-white/50 transition-colors"
        >
          &larr; Back to Distillation
        </Link>
      </div>

      <div className="flex items-start justify-between mb-8">
        <div>
          <h1 className="text-2xl font-bold text-white">Run #{run.run_number}</h1>
          <div className="flex items-center gap-3 mt-2">
            <SpiritBadge type={run.spirit_type} />
            {run.run_phase && (
              <span className="text-xs px-2 py-0.5 rounded-full bg-white/[0.06] text-white/50 capitalize">
                {run.run_phase.replace('_', ' ')}
              </span>
            )}
          </div>
        </div>
      </div>

      <div className="grid gap-6 lg:grid-cols-2">
        {/* Run Info */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Run Info
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <DetailField label="Date" value={formatDate(run.run_date)} />
            <DetailField label="Still" value={run.still_name} />
            <DetailField label="Operator" value={run.operator} />
            <DetailField label="Output Account" value={run.output_account} />
            <DetailField label="Mash Bill" value={run.mash_bill} />
            <DetailField label="Lot Name" value={run.lot_name} />
            <DetailField label="To Tank" value={run.to_tank?.name} />
            <DetailField label="Source Tank" value={run.source_tank?.name} />
            {run.fermentation_batch && (
              <DetailField label="Source Batch" value={run.fermentation_batch.batch_number} />
            )}
            {run.source_run && (
              <DetailField label="Source Run" value={`#${run.source_run.run_number}`} />
            )}
          </dl>
        </div>

        {/* Proof Gallons Breakdown */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Production
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <DetailField label="Total PG" value={formatProofGallons(run.proof_gal)} />
            <DetailField label="PG Total (calc)" value={run.pg_total != null ? formatProofGallons(run.pg_total) : undefined} />
            <DetailField label="PG Hearts" value={run.pg_hearts != null ? formatProofGallons(run.pg_hearts) : undefined} />
            <DetailField label="PG Heads" value={run.pg_heads != null ? formatProofGallons(run.pg_heads) : undefined} />
            <DetailField label="PG Tails" value={run.pg_tails != null ? formatProofGallons(run.pg_tails) : undefined} />
            <DetailField label="PG Feints" value={run.pg_feints != null ? formatProofGallons(run.pg_feints) : undefined} />
            <DetailField label="PG Low Wines" value={run.pg_low_wines != null ? formatProofGallons(run.pg_low_wines) : undefined} />
            <DetailField label="Proof In" value={run.proof_in != null ? `${run.proof_in.toFixed(1)} PF` : undefined} />
            <DetailField label="Proof Out" value={run.proof_out != null ? `${run.proof_out.toFixed(1)} PF` : undefined} />
            <DetailField label="Temp" value={run.temp_f != null ? `${run.temp_f}°F` : undefined} />
          </dl>
        </div>

        {/* Notes */}
        {run.notes && (
          <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
            <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
              Notes
            </h2>
            <p className="text-sm text-white/60 whitespace-pre-wrap">{run.notes}</p>
          </div>
        )}
      </div>

      {/* Linked Barrels */}
      {run.barrel_distillation_runs.length > 0 && (
        <div className="mt-8">
          <h2 className="text-lg font-semibold text-white mb-4">Linked Barrels</h2>
          <div className="flex flex-wrap gap-2">
            {run.barrel_distillation_runs.map(({ barrel }) => (
              <Link
                key={barrel.id}
                href={`/barrels/${barrel.id}`}
                className="text-xs px-3 py-1.5 rounded-md bg-accent/10 text-accent border border-accent/20 hover:bg-accent/20 transition-colors"
              >
                {barrel.barrel_number}
              </Link>
            ))}
          </div>
        </div>
      )}
    </div>
  )
}

function DetailField({ label, value }: { label: string; value?: string | null }) {
  return (
    <div>
      <dt className="text-white/30 text-xs">{label}</dt>
      <dd className="text-white/80 mt-0.5">{value ?? '—'}</dd>
    </div>
  )
}
