import { getFermentationBatches } from '@/lib/queries/production'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatGallons } from '@/lib/utils/format'
import type { FermentationStatus } from '@/lib/types/database'

const STATUS_STYLES: Record<FermentationStatus, string> = {
  active: 'bg-green-500/10 text-green-400 border-green-500/20',
  complete: 'bg-accent/10 text-accent border-accent/20',
  scrapped: 'bg-red-500/10 text-red-400 border-red-500/20',
}

export async function FermentationList() {
  const { batches, total } = await getFermentationBatches()

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} fermentation batches</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Batch #</th>
              <th className="px-4 py-3 font-medium">Cook #</th>
              <th className="px-4 py-3 font-medium">Lot</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Fermenter</th>
              <th className="px-4 py-3 font-medium">Start Date</th>
              <th className="px-4 py-3 font-medium">Status</th>
              <th className="px-4 py-3 font-medium">Volume</th>
            </tr>
          </thead>
          <tbody>
            {batches.map((batch) => (
              <tr
                key={batch.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-white/80 font-medium">{batch.batch_number}</td>
                <td className="px-4 py-3 text-white/60">{batch.cook_number ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{batch.lot_name ?? '—'}</td>
                <td className="px-4 py-3"><SpiritBadge type={batch.spirit_type} /></td>
                <td className="px-4 py-3 text-white/60">{batch.fermenter?.name ?? '—'}</td>
                <td className="px-4 py-3 text-white/60">{formatDate(batch.start_date)}</td>
                <td className="px-4 py-3">
                  <span className={`inline-flex items-center text-[11px] font-medium capitalize px-2 py-0.5 rounded border ${STATUS_STYLES[batch.status]}`}>
                    {batch.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-white/60 font-mono">{formatGallons(batch.volume_gal)}</td>
              </tr>
            ))}
            {batches.length === 0 && (
              <tr>
                <td colSpan={8} className="px-4 py-8 text-center text-white/30">
                  No fermentation batches found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
