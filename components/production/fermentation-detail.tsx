import Link from 'next/link'
import { getFermentationBatchById } from '@/lib/queries/fermentation'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { StatusBadge } from '@/components/ui/status-badge'
import { formatDate, formatGallons } from '@/lib/utils/format'

interface FermentationDetailProps {
  id: string
}

export async function FermentationDetail({ id }: FermentationDetailProps) {
  const batch = await getFermentationBatchById(id)

  return (
    <div>
      <div className="mb-6">
        <Link
          href="/production?tab=fermentation"
          className="text-xs text-white/30 hover:text-white/50 transition-colors"
        >
          &larr; Back to Fermentation
        </Link>
      </div>

      <div className="flex items-start justify-between mb-8">
        <div>
          <h1 className="text-2xl font-bold text-white">{batch.batch_number}</h1>
          <div className="flex items-center gap-3 mt-2">
            <SpiritBadge type={batch.spirit_type} />
            <StatusBadge status={batch.status} />
          </div>
        </div>
      </div>

      <div className="grid gap-6 lg:grid-cols-2">
        {/* Batch Info */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Batch Info
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <DetailField label="Fermenter" value={batch.fermenter?.name} />
            <DetailField label="Mash Bill" value={batch.mash_bill} />
            <DetailField label="Volume" value={formatGallons(batch.volume_gal)} />
            <DetailField label="BBL Size" value={batch.bbl_size?.toString()} />
            <DetailField label="Start Date" value={formatDate(batch.start_date)} />
            <DetailField label="Stripped Date" value={formatDate(batch.stripped_date ?? null)} />
            <DetailField label="Total Days" value={batch.total_days != null ? `${batch.total_days}` : undefined} />
            <DetailField label="DSP #" value={batch.dsp_number} />
          </dl>
        </div>

        {/* Gravity & Chemistry */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Gravity & Chemistry
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <DetailField label="Starting SG" value={batch.start_sg?.toFixed(4)} />
            <DetailField label="Ending SG" value={batch.ending_sg?.toFixed(4)} />
            <DetailField label="pH" value={batch.ph?.toFixed(2)} />
            <DetailField label="Temp" value={batch.temp_f != null ? `${batch.temp_f}°F` : undefined} />
            <DetailField label="Potential PF" value={batch.potential_pf?.toFixed(1)} />
            <DetailField label="Potential PG" value={batch.potential_pg?.toFixed(2)} />
          </dl>
        </div>

        {/* Lot Info */}
        {(batch.lot_name || batch.internal_lot_name || batch.internal_run_name || batch.cook_number) && (
          <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
            <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
              Lot Info
            </h2>
            <dl className="grid grid-cols-2 gap-4 text-sm">
              <DetailField label="Lot Name" value={batch.lot_name} />
              <DetailField label="Internal Lot" value={batch.internal_lot_name} />
              <DetailField label="Internal Run" value={batch.internal_run_name} />
              <DetailField label="Cook #" value={batch.cook_number?.toString()} />
            </dl>
          </div>
        )}

        {/* Notes */}
        {batch.notes && (
          <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
            <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
              Notes
            </h2>
            <p className="text-sm text-white/60 whitespace-pre-wrap">{batch.notes}</p>
          </div>
        )}
      </div>

      {/* Moves */}
      {batch.fermentation_moves.length > 0 && (
        <div className="mt-8">
          <h2 className="text-lg font-semibold text-white mb-4">Moves</h2>
          <div className="rounded-lg border border-white/10 overflow-hidden">
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                  <th className="px-4 py-3 font-medium">Date</th>
                  <th className="px-4 py-3 font-medium">From</th>
                  <th className="px-4 py-3 font-medium">To Tank</th>
                  <th className="px-4 py-3 font-medium">Volume</th>
                  <th className="px-4 py-3 font-medium">Notes</th>
                </tr>
              </thead>
              <tbody>
                {batch.fermentation_moves.map((move) => (
                  <tr
                    key={move.id}
                    className="border-b border-white/[0.04]"
                  >
                    <td className="px-4 py-3 text-white/60">{formatDate(move.move_date)}</td>
                    <td className="px-4 py-3 text-white/60">{move.from_fermenter?.name ?? '—'}</td>
                    <td className="px-4 py-3 text-white/60">{move.to_tank?.name ?? '—'}</td>
                    <td className="px-4 py-3 text-white/60">{formatGallons(move.volume_gal)}</td>
                    <td className="px-4 py-3 text-white/40">{move.notes ?? '—'}</td>
                  </tr>
                ))}
              </tbody>
            </table>
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
