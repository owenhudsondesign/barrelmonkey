import Link from 'next/link'
import { getDashboardStats } from '@/lib/queries/dashboard'
import { StatCard } from '@/components/dashboard/stat-card'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate } from '@/lib/utils/format'

export async function DashboardContent() {
  const stats = await getDashboardStats()

  return (
    <div className="space-y-6">
      {/* Barrel Stats */}
      <section>
        <div className="text-xs text-white/30 uppercase tracking-wider mb-3">Barrels</div>
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
          <StatCard label="Aging" value={stats.barrels.aging} color="success" subtitle="in rackhouses" />
          <StatCard label="Dumped" value={stats.barrels.dumped} color="warning" />
          <StatCard label="Empty" value={stats.barrels.empty} color="default" />
          <StatCard label="Transferred" value={stats.barrels.transferred} color="default" />
        </div>
      </section>

      {/* Equipment */}
      <section>
        <div className="text-xs text-white/30 uppercase tracking-wider mb-3">Equipment</div>
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          <StatCard label="Rackhouses" value={stats.equipment.rackhouses} />
          <StatCard label="Fermenters" value={stats.equipment.fermenters} subtitle="active" />
          <StatCard label="Tanks" value={stats.equipment.tanks} subtitle="active" />
        </div>
      </section>

      {/* TTB Reports */}
      <section>
        <div className="text-xs text-white/30 uppercase tracking-wider mb-3">TTB Reports</div>
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          <StatCard label="Draft Reports" value={stats.ttbReports.draft} color="warning" />
          <StatCard label="Reviewed" value={stats.ttbReports.reviewed} color="accent" />
          <StatCard label="Filed" value={stats.ttbReports.filed} color="success" />
        </div>
      </section>

      {/* Recent Dumps */}
      <section>
        <div className="rounded-lg border border-white/10 bg-white/[0.02] overflow-hidden">
          <div className="flex items-center justify-between px-4 py-3 border-b border-white/[0.08]">
            <span className="text-xs text-white/30 uppercase tracking-wider">Recent Dumps</span>
            <Link
              href="/processing"
              className="text-xs text-accent hover:text-accent/80 transition-colors"
            >
              View all
            </Link>
          </div>

          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                <th className="px-4 py-3 font-medium">Date</th>
                <th className="px-4 py-3 font-medium">Spirit</th>
                <th className="px-4 py-3 font-medium">Barrels</th>
                <th className="px-4 py-3 font-medium">Lot Name</th>
              </tr>
            </thead>
            <tbody>
              {stats.recentDumps.map((dump) => (
                <tr
                  key={dump.id}
                  className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
                >
                  <td className="px-4 py-3 text-white/60">{formatDate(dump.dump_date)}</td>
                  <td className="px-4 py-3"><SpiritBadge type={dump.spirit_type} /></td>
                  <td className="px-4 py-3 text-white/80 font-medium">{dump.barrel_count}</td>
                  <td className="px-4 py-3 text-white/60">{dump.blend_lot_name ?? '—'}</td>
                </tr>
              ))}
              {stats.recentDumps.length === 0 && (
                <tr>
                  <td colSpan={4} className="px-4 py-8 text-center text-white/30">
                    No dump batches recorded
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </section>
    </div>
  )
}
