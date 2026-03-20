import Link from 'next/link'
import { notFound } from 'next/navigation'
import { getBarrelById } from '@/lib/queries/barrels'
import { getBarrelProvenance } from '@/lib/queries/provenance'
import { StatusBadge } from '@/components/ui/status-badge'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { BarrelTimeline } from './barrel-timeline'
import { BarrelProvenance } from './barrel-provenance'
import { computeAge, formatDate, formatProof, formatGallons, formatProofGallons } from '@/lib/utils/format'

interface BarrelDetailPageProps {
  barrelId: string
}

export async function BarrelDetailPage({ barrelId }: BarrelDetailPageProps) {
  let barrel
  try {
    barrel = await getBarrelById(barrelId)
  } catch {
    notFound()
  }

  if (!barrel) notFound()

  // Fetch provenance for timeline (only for dumped barrels)
  const provenance = barrel.status === 'dumped'
    ? await getBarrelProvenance(barrelId)
    : null

  const rackhouse = barrel.rackhouse
  const distRuns = barrel.barrel_distillation_runs ?? []
  const age = computeAge(barrel.fill_date)

  // Find latest proof reading for current status
  const latestProofReading = [...(barrel.events ?? [])]
    .reverse()
    .find((e) => e.event_type === 'proof_reading')

  return (
    <div>
      {/* Back link */}
      <Link
        href="/barrels"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        All Barrels
      </Link>

      {/* Header */}
      <div className="flex flex-wrap items-start gap-4 mb-8">
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-3 mb-1">
            <h1 className="text-3xl font-bold text-white tracking-tight">
              #{barrel.barrel_number}
            </h1>
            <StatusBadge status={barrel.status} />
            <SpiritBadge type={barrel.spirit_type} />
          </div>
          <div className="flex items-center gap-4 text-sm text-white/40">
            {age.display !== '—' && <span>{age.display} old</span>}
            {rackhouse && (
              <span>
                {rackhouse.name}
                {barrel.slot && ` / ${barrel.slot}`}
              </span>
            )}
            {barrel.barrel_type && <span>{barrel.barrel_type}</span>}
          </div>
        </div>
      </div>

      {/* Dump summary — shown at top if barrel is dumped */}
      {barrel.status === 'dumped' && barrel.dump_date && (
        <div className="mb-6 rounded-lg border border-warning/20 bg-warning/[0.04] p-5">
          <h2 className="text-sm font-semibold text-warning uppercase tracking-wider mb-3">
            Dump Summary
          </h2>
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
            <Stat label="Dump Date" value={formatDate(barrel.dump_date)} />
            <Stat label="Dump Proof" value={formatProof(barrel.dump_proof)} />
            <Stat label="Dump PG" value={formatProofGallons(barrel.dump_proof_gal)} />
            <Stat label="Dump WG" value={formatGallons(barrel.dump_wine_gal)} />
          </div>
        </div>
      )}

      {/* Provenance — shown for dumped barrels */}
      {barrel.status === 'dumped' && (
        <BarrelProvenance barrelId={barrelId} />
      )}

      {/* Fill Summary + Current Status */}
      <div className="grid md:grid-cols-2 gap-6 mb-8">
        {/* Fill Summary */}
        <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5">
          <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
            Fill Summary
          </h2>
          <div className="grid grid-cols-2 gap-4">
            <Stat label="Fill Date" value={formatDate(barrel.fill_date)} />
            <Stat label="Entry Proof" value={formatProof(barrel.entry_pf)} />
            <Stat label="Fill WG" value={formatGallons(barrel.fill_wine_gal)} />
            <Stat label="Fill PG" value={formatProofGallons(barrel.fill_proof_gal)} />
            <Stat label="Barrel Size" value={barrel.size_gal ? `${barrel.size_gal} gal` : '—'} />
            <Stat label="Cooperage" value={barrel.cooperage ?? '—'} />
            <Stat label="New/Used" value={barrel.new_or_used ?? '—'} />
            <Stat
              label="Distillation Run(s)"
              value={distRuns.length > 0
                ? distRuns.map((dr) => `#${dr.distillation_run.run_number}`).join(', ')
                : '—'}
            />
            {barrel.internal_lot_name && (
              <Stat label="Internal Lot" value={barrel.internal_lot_name} className="col-span-2" />
            )}
          </div>
        </div>

        {/* Current Status */}
        <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5">
          <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
            Current Status
          </h2>
          <div className="grid grid-cols-2 gap-4">
            <Stat
              label="Location"
              value={rackhouse ? `${rackhouse.name}${barrel.slot ? ` / ${barrel.slot}` : ''}` : '—'}
            />
            <Stat label="Status" value={barrel.status} />
            {latestProofReading ? (
              <>
                <Stat label="Last Gauged" value={formatDate(latestProofReading.event_date)} />
                <Stat label="Gauged Proof" value={formatProof(latestProofReading.proof)} />
                <Stat label="Gauged PG" value={formatProofGallons(latestProofReading.proof_gal)} />
                <Stat label="Gauged WG" value={formatGallons(latestProofReading.wine_gal)} />
              </>
            ) : (
              <Stat label="Last Gauged" value="No readings" className="col-span-2" />
            )}
          </div>
        </div>
      </div>

      {/* Notes */}
      {barrel.notes && (
        <div className="mb-8 rounded-lg border border-white/10 bg-white/[0.02] p-5">
          <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-2">Notes</h2>
          <p className="text-white/60 text-sm whitespace-pre-wrap">{barrel.notes}</p>
        </div>
      )}

      {/* Event Timeline */}
      <div>
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Event Timeline
          <span className="ml-2 text-white/20 normal-case">
            ({barrel.events?.length ?? 0} event{(barrel.events?.length ?? 0) !== 1 ? 's' : ''})
          </span>
        </h2>
        {barrel.events && barrel.events.length > 0 ? (
          <BarrelTimeline events={barrel.events} provenance={provenance} />
        ) : (
          <p className="text-white/30 text-sm py-8 text-center">No events recorded yet.</p>
        )}
      </div>
    </div>
  )
}

function Stat({
  label,
  value,
  className = '',
}: {
  label: string
  value: string
  className?: string
}) {
  return (
    <div className={className}>
      <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">{label}</div>
      <div className="text-sm text-white/80">{value}</div>
    </div>
  )
}
