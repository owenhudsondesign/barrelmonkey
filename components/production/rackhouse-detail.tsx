import Link from 'next/link'
import { notFound } from 'next/navigation'
import { getRackhouseDetail } from '@/lib/queries/rackhouses'
import { StatusBadge } from '@/components/ui/status-badge'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatProof } from '@/lib/utils/format'
import type { BarrelStatus, SpiritType } from '@/lib/types/database'

interface RackhouseDetailProps {
  rackhouseId: string
}

export async function RackhouseDetail({ rackhouseId }: RackhouseDetailProps) {
  const result = await getRackhouseDetail(rackhouseId)

  if (!result) notFound()

  const { rackhouse, barrels } = result

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
        {rackhouse.name}
      </h1>

      {/* Info card */}
      <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5 mb-8">
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Rackhouse Info
        </h2>
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
          <Stat label="Location" value={rackhouse.is_offsite ? 'Offsite' : 'Onsite'} />
          <Stat label="Address" value={rackhouse.address ?? '—'} />
          <Stat label="Status" value={rackhouse.active ? 'Active' : 'Inactive'} />
          <Stat label="Barrels" value={String(barrels.length)} />
        </div>
      </div>

      {/* Barrels table */}
      <div>
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Barrels
          <span className="ml-2 text-white/20 normal-case">
            ({barrels.length} barrel{barrels.length !== 1 ? 's' : ''})
          </span>
        </h2>

        <div className="rounded-lg border border-white/10 overflow-hidden">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                <th className="px-4 py-3 font-medium">Barrel #</th>
                <th className="px-4 py-3 font-medium">Spirit</th>
                <th className="px-4 py-3 font-medium">Product</th>
                <th className="px-4 py-3 font-medium">Fill Date</th>
                <th className="px-4 py-3 font-medium">Entry PF</th>
                <th className="px-4 py-3 font-medium">Status</th>
              </tr>
            </thead>
            <tbody>
              {barrels.map((barrel) => (
                <tr
                  key={barrel.id}
                  className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
                >
                  <td className="px-4 py-3">
                    <Link
                      href={`/barrels/${barrel.id}`}
                      className="text-accent hover:text-accent/80 font-medium transition-colors"
                    >
                      #{barrel.barrel_number}
                    </Link>
                  </td>
                  <td className="px-4 py-3">
                    <SpiritBadge type={barrel.spirit_type as SpiritType} />
                  </td>
                  <td className="px-4 py-3 text-white/60">
                    {barrel.product_name ?? '—'}
                  </td>
                  <td className="px-4 py-3 text-white/60">
                    {formatDate(barrel.fill_date)}
                  </td>
                  <td className="px-4 py-3 text-white/60 font-mono">
                    {formatProof(barrel.entry_pf)}
                  </td>
                  <td className="px-4 py-3">
                    <StatusBadge status={barrel.status as BarrelStatus} />
                  </td>
                </tr>
              ))}
              {barrels.length === 0 && (
                <tr>
                  <td colSpan={6} className="px-4 py-8 text-center text-white/30">
                    No barrels in this rackhouse
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
