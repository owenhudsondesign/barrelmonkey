import Link from 'next/link'
import { getFermentationBatches, type FermentationListParams } from '@/lib/queries/fermentation'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { StatusBadge } from '@/components/ui/status-badge'
import { formatDate, formatGallons } from '@/lib/utils/format'
import type { FermentationStatus, SpiritType } from '@/lib/types/database'

interface FermentationListProps {
  searchParams: Record<string, string | undefined>
}

export async function FermentationList({ searchParams }: FermentationListProps) {
  const params: FermentationListParams = {
    status: (searchParams.status as FermentationStatus | 'all') || undefined,
    spiritType: (searchParams.spiritType as SpiritType) || undefined,
    fermenterId: searchParams.fermenterId || undefined,
    sortBy: searchParams.sortBy || 'start_date',
    sortDir: (searchParams.sortDir as 'asc' | 'desc') || 'desc',
  }

  const { batches, total } = await getFermentationBatches(params)

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} batches</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Batch #</th>
              <th className="px-4 py-3 font-medium">Spirit</th>
              <th className="px-4 py-3 font-medium">Fermenter</th>
              <th className="px-4 py-3 font-medium">Volume</th>
              <th className="px-4 py-3 font-medium">Start</th>
              <th className="px-4 py-3 font-medium">Days</th>
              <th className="px-4 py-3 font-medium">Status</th>
            </tr>
          </thead>
          <tbody>
            {batches.map((batch) => (
              <tr
                key={batch.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3">
                  <Link
                    href={`/production/fermentation/${batch.id}`}
                    className="text-accent hover:underline font-medium"
                  >
                    {batch.batch_number}
                  </Link>
                </td>
                <td className="px-4 py-3">
                  <SpiritBadge type={batch.spirit_type} />
                </td>
                <td className="px-4 py-3 text-white/60">
                  {batch.fermenter?.name ?? '—'}
                </td>
                <td className="px-4 py-3 text-white/60">
                  {formatGallons(batch.volume_gal)}
                </td>
                <td className="px-4 py-3 text-white/60">
                  {formatDate(batch.start_date)}
                </td>
                <td className="px-4 py-3 text-white/60">
                  {batch.total_days != null ? `${batch.total_days}d` : '—'}
                </td>
                <td className="px-4 py-3">
                  <StatusBadge status={batch.status} />
                </td>
              </tr>
            ))}
            {batches.length === 0 && (
              <tr>
                <td colSpan={7} className="px-4 py-8 text-center text-white/30">
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
