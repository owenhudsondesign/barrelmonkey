import Link from 'next/link'
import { getTankById } from '@/lib/queries/tanks'
import { formatGallons, formatProofGallons, formatDate } from '@/lib/utils/format'

interface TankDetailPageProps {
  id: string
}

export async function TankDetailPage({ id }: TankDetailPageProps) {
  const tank = await getTankById(id)

  return (
    <div>
      <div className="mb-6">
        <Link
          href="/tanks"
          className="text-xs text-white/30 hover:text-white/50 transition-colors"
        >
          &larr; Back to Tanks
        </Link>
      </div>

      <div className="flex items-start justify-between mb-8">
        <div>
          <h1 className="text-2xl font-bold text-white">{tank.name}</h1>
          <div className="flex items-center gap-3 mt-2">
            <span className="text-xs px-2 py-0.5 rounded-full bg-white/[0.06] text-white/50 capitalize">
              {tank.tank_category}
            </span>
            {tank.can_ferment && (
              <span className="text-xs px-2 py-0.5 rounded-full bg-success/10 text-success border border-success/20">
                Can Ferment
              </span>
            )}
          </div>
        </div>
        <div className="text-right">
          <div className="text-2xl font-bold text-accent">
            {formatProofGallons(tank.current_pg)}
          </div>
          <div className="text-xs text-white/30">Current PG</div>
        </div>
      </div>

      <div className="grid gap-6 lg:grid-cols-2 mb-8">
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Tank Info
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <div>
              <dt className="text-white/30 text-xs">Capacity</dt>
              <dd className="text-white/80 mt-0.5">{formatGallons(tank.capacity_gal)}</dd>
            </div>
            <div>
              <dt className="text-white/30 text-xs">Category</dt>
              <dd className="text-white/80 mt-0.5 capitalize">{tank.tank_category}</dd>
            </div>
            <div>
              <dt className="text-white/30 text-xs">Can Ferment</dt>
              <dd className="text-white/80 mt-0.5">{tank.can_ferment ? 'Yes' : 'No'}</dd>
            </div>
            <div>
              <dt className="text-white/30 text-xs">Active</dt>
              <dd className="text-white/80 mt-0.5">{tank.active ? 'Yes' : 'No'}</dd>
            </div>
          </dl>
          {tank.notes && (
            <div className="mt-4 pt-4 border-t border-white/[0.06]">
              <dt className="text-white/30 text-xs mb-1">Notes</dt>
              <dd className="text-sm text-white/60">{tank.notes}</dd>
            </div>
          )}
        </div>
      </div>

      {/* Event Timeline */}
      <h2 className="text-lg font-semibold text-white mb-4">Event History</h2>
      {tank.tank_events.length > 0 ? (
        <div className="rounded-lg border border-white/10 overflow-hidden">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                <th className="px-4 py-3 font-medium">Date</th>
                <th className="px-4 py-3 font-medium">Type</th>
                <th className="px-4 py-3 font-medium">Spirit</th>
                <th className="px-4 py-3 font-medium">PG Delta</th>
                <th className="px-4 py-3 font-medium">From/To</th>
                <th className="px-4 py-3 font-medium">Notes</th>
              </tr>
            </thead>
            <tbody>
              {tank.tank_events.map((event) => (
                <tr
                  key={event.id}
                  className="border-b border-white/[0.04]"
                >
                  <td className="px-4 py-3 text-white/60">
                    {formatDate(event.event_date)}
                  </td>
                  <td className="px-4 py-3">
                    <span className="text-xs px-2 py-0.5 rounded-full bg-white/[0.06] text-white/50 capitalize">
                      {event.event_type}
                    </span>
                  </td>
                  <td className="px-4 py-3 text-white/60 capitalize">
                    {event.spirit_type ?? '—'}
                  </td>
                  <td className="px-4 py-3 font-mono">
                    {event.proof_gal_delta != null ? (
                      <span className={event.proof_gal_delta >= 0 ? 'text-success' : 'text-error'}>
                        {event.proof_gal_delta >= 0 ? '+' : ''}{event.proof_gal_delta.toFixed(2)} PG
                      </span>
                    ) : '—'}
                  </td>
                  <td className="px-4 py-3 text-white/60 text-xs">
                    {event.from_tank?.name && `From: ${event.from_tank.name}`}
                    {event.to_tank?.name && `To: ${event.to_tank.name}`}
                    {event.distillation_run && `Run #${event.distillation_run.run_number}`}
                    {!event.from_tank?.name && !event.to_tank?.name && !event.distillation_run && '—'}
                  </td>
                  <td className="px-4 py-3 text-white/40 text-xs max-w-[200px] truncate">
                    {event.notes ?? '—'}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ) : (
        <div className="text-sm text-white/30 text-center py-8 border border-white/10 rounded-lg">
          No events recorded
        </div>
      )}
    </div>
  )
}
