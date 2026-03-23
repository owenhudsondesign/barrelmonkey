import Link from 'next/link'
import { notFound } from 'next/navigation'
import { getFermenterDetail } from '@/lib/queries/fermenters'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatGallons } from '@/lib/utils/format'
import type { SpiritType, FermentationStatus } from '@/lib/types/database'

interface FermenterDetailProps {
  fermenterId: string
}

const FERMENTATION_STATUS_STYLES: Record<FermentationStatus, string> = {
  active: 'bg-green-500/10 text-green-400 border-green-500/20',
  complete: 'bg-accent/10 text-accent border-accent/30',
  scrapped: 'bg-white/[0.04] text-white/30 border-white/[0.08]',
}

export async function FermenterDetail({ fermenterId }: FermenterDetailProps) {
  const result = await getFermenterDetail(fermenterId)

  if (!result) notFound()

  const { fermenter, batches } = result

  return (
    <div>
      {/* Back link */}
      <Link
        href="/production"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Production
      </Link>

      {/* Header */}
      <h1 className="text-3xl font-bold text-white tracking-tight mb-6">
        {fermenter.name}
      </h1>

      {/* Info card */}
      <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5 mb-8">
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Fermenter Info
        </h2>
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
          <Stat label="Capacity" value={formatGallons(fermenter.capacity_gal)} />
          <Stat label="Status" value={fermenter.active ? 'Active' : 'Inactive'} />
          <Stat label="Batches" value={String(batches.length)} />
          <Stat label="Notes" value={fermenter.notes ?? '—'} />
        </div>
      </div>

      {/* Batches table */}
      <div>
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Fermentation Batches
          <span className="ml-2 text-white/20 normal-case">
            ({batches.length} batch{batches.length !== 1 ? 'es' : ''})
          </span>
        </h2>

        <div className="rounded-lg border border-white/10 overflow-hidden">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                <th className="px-4 py-3 font-medium">Batch #</th>
                <th className="px-4 py-3 font-medium">Spirit</th>
                <th className="px-4 py-3 font-medium">Mash Bill</th>
                <th className="px-4 py-3 font-medium">Volume</th>
                <th className="px-4 py-3 font-medium">Start Date</th>
                <th className="px-4 py-3 font-medium">Status</th>
              </tr>
            </thead>
            <tbody>
              {batches.map((batch) => {
                const statusStyle = FERMENTATION_STATUS_STYLES[batch.status as FermentationStatus]
                  ?? FERMENTATION_STATUS_STYLES.active
                return (
                  <tr
                    key={batch.id}
                    className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
                  >
                    <td className="px-4 py-3 text-white/80 font-medium">
                      {batch.batch_number}
                    </td>
                    <td className="px-4 py-3">
                      <SpiritBadge type={batch.spirit_type as SpiritType} />
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {batch.mash_bill ?? '—'}
                    </td>
                    <td className="px-4 py-3 text-white/60 font-mono">
                      {formatGallons(batch.volume_gal)}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {formatDate(batch.start_date)}
                    </td>
                    <td className="px-4 py-3">
                      <span
                        className={`inline-flex items-center text-[11px] font-medium capitalize px-2 py-0.5 rounded border ${statusStyle}`}
                      >
                        {batch.status}
                      </span>
                    </td>
                  </tr>
                )
              })}
              {batches.length === 0 && (
                <tr>
                  <td colSpan={6} className="px-4 py-8 text-center text-white/30">
                    No fermentation batches found
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  )
}

function Stat({ label, value }: { label: string; value: string }) {
  return (
    <div>
      <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">{label}</div>
      <div className="text-sm text-white/80">{value}</div>
    </div>
  )
}
