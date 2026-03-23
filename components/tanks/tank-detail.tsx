import Link from 'next/link'
import { notFound } from 'next/navigation'
import { getTankDetail } from '@/lib/queries/tanks'
import { formatDate, formatProofGallons } from '@/lib/utils/format'
import type { TankEventType } from '@/lib/types/database'

interface TankDetailProps {
  tankId: string
}

const CATEGORY_BADGE_COLORS: Record<string, string> = {
  production: 'bg-accent/10 text-accent border-accent/30',
  processing: 'bg-white/[0.06] text-white/50 border-white/10',
  extract: 'bg-warning/10 text-warning border-warning/30',
  misc: 'bg-white/[0.04] text-white/30 border-white/[0.08]',
}

const EVENT_TYPE_COLORS: Record<TankEventType, string> = {
  move: 'bg-accent/10 text-accent border-accent/30',
  adjustment: 'bg-warning/10 text-warning border-warning/30',
  filtering: 'bg-white/[0.06] text-white/50 border-white/10',
  destruction: 'bg-red-500/10 text-red-400 border-red-500/20',
}

export async function TankDetail({ tankId }: TankDetailProps) {
  const result = await getTankDetail(tankId)

  if (!result) notFound()

  const { tank, events } = result
  const categoryStyle = CATEGORY_BADGE_COLORS[tank.tank_category] ?? CATEGORY_BADGE_COLORS.misc

  return (
    <div>
      {/* Back link */}
      <Link
        href="/tanks"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        All Tanks
      </Link>

      {/* Header */}
      <h1 className="text-3xl font-bold text-white tracking-tight mb-6">
        {tank.name}
      </h1>

      {/* Info card */}
      <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5 mb-8">
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Tank Info
        </h2>
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
          <div>
            <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">Capacity</div>
            <div className="text-sm text-white/80">
              {tank.capacity_gal != null ? `${tank.capacity_gal.toFixed(1)} gal` : '—'}
            </div>
          </div>
          <div>
            <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">Category</div>
            <div className="mt-0.5">
              <span
                className={`inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded border ${categoryStyle}`}
              >
                {tank.tank_category}
              </span>
            </div>
          </div>
          <div>
            <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">Can Ferment</div>
            <div className="text-sm text-white/80">
              {tank.can_ferment ? (
                <span className="text-green-400">Yes</span>
              ) : (
                <span className="text-white/40">No</span>
              )}
            </div>
          </div>
          <div>
            <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">Status</div>
            <div className="text-sm text-white/80">
              {tank.active ? (
                <span className="text-green-400">Active</span>
              ) : (
                <span className="text-white/40">Inactive</span>
              )}
            </div>
          </div>
        </div>
        {tank.notes && (
          <div className="mt-4 pt-4 border-t border-white/[0.06]">
            <div className="text-[10px] text-white/30 uppercase tracking-wider mb-0.5">Notes</div>
            <p className="text-sm text-white/60 whitespace-pre-wrap">{tank.notes}</p>
          </div>
        )}
      </div>

      {/* Events table */}
      <div>
        <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
          Tank Events
          <span className="ml-2 text-white/20 normal-case">
            ({events.length} event{events.length !== 1 ? 's' : ''})
          </span>
        </h2>

        <div className="rounded-lg border border-white/10 overflow-hidden">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                <th className="px-4 py-3 font-medium">Date</th>
                <th className="px-4 py-3 font-medium">Event Type</th>
                <th className="px-4 py-3 font-medium text-right">PG Delta</th>
                <th className="px-4 py-3 font-medium">Notes</th>
              </tr>
            </thead>
            <tbody>
              {events.map((event) => {
                const eventStyle = EVENT_TYPE_COLORS[event.event_type] ?? EVENT_TYPE_COLORS.move
                return (
                  <tr
                    key={event.id}
                    className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
                  >
                    <td className="px-4 py-3 text-white/60">
                      {formatDate(event.event_date)}
                    </td>
                    <td className="px-4 py-3">
                      <span
                        className={`inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded border ${eventStyle}`}
                      >
                        {event.event_type}
                      </span>
                    </td>
                    <td className="px-4 py-3 text-white/60 font-mono text-right">
                      {formatProofGallons(event.proof_gal_delta)}
                    </td>
                    <td className="px-4 py-3 text-white/40 truncate max-w-[300px]">
                      {event.notes ?? '—'}
                    </td>
                  </tr>
                )
              })}
              {events.length === 0 && (
                <tr>
                  <td colSpan={4} className="px-4 py-8 text-center text-white/30">
                    No tank events recorded
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
