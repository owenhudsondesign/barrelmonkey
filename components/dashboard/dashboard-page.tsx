import { getDashboardStats, getAgingDistribution, getSpiritBreakdown, getRecentActivity } from '@/lib/queries/dashboard'
import { StatCard } from './stat-card'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

export async function DashboardPage() {
  const [stats, aging, spirits, activity] = await Promise.all([
    getDashboardStats(),
    getAgingDistribution(),
    getSpiritBreakdown(),
    getRecentActivity(10),
  ])

  return (
    <div>
      <div className="mb-8">
        <h1 className="text-2xl font-bold text-white">Dashboard</h1>
        <p className="text-sm text-white/40 mt-1">Overview of distillery operations</p>
      </div>

      {/* Stat Cards */}
      <div className="grid grid-cols-2 lg:grid-cols-3 xl:grid-cols-6 gap-4 mb-8">
        <StatCard label="Aging Barrels" value={stats.totalAgingBarrels} accent />
        <StatCard label="Total PG in Storage" value={formatProofGallons(stats.totalPgInStorage)} />
        <StatCard label="Active Fermentations" value={stats.activeFermentations} />
        <StatCard label="Runs This Month" value={stats.runsThisMonth} />
        <StatCard label="Fills This Month" value={stats.fillsThisMonth} />
        <StatCard label="Dumps This Month" value={stats.dumpsThisMonth} />
      </div>

      <div className="grid gap-6 lg:grid-cols-2 xl:grid-cols-3">
        {/* Aging Distribution */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Aging Distribution
          </h2>
          <div className="space-y-3">
            {aging.map(({ bracket, count }) => {
              const maxCount = Math.max(...aging.map((a) => a.count), 1)
              const pct = (count / maxCount) * 100
              return (
                <div key={bracket}>
                  <div className="flex justify-between text-xs mb-1">
                    <span className="text-white/50">{bracket}</span>
                    <span className="text-white/80 font-medium">{count}</span>
                  </div>
                  <div className="h-2 bg-white/[0.04] rounded-full overflow-hidden">
                    <div
                      className="h-full bg-accent/60 rounded-full"
                      style={{ width: `${pct}%` }}
                    />
                  </div>
                </div>
              )
            })}
            {aging.every((a) => a.count === 0) && (
              <p className="text-sm text-white/30 text-center py-4">No aging barrels</p>
            )}
          </div>
        </div>

        {/* Spirit Breakdown */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Spirit Breakdown
          </h2>
          <div className="space-y-3">
            {spirits.map(({ spirit_type, count }) => {
              const maxCount = Math.max(...spirits.map((s) => s.count), 1)
              const pct = (count / maxCount) * 100
              return (
                <div key={spirit_type}>
                  <div className="flex justify-between text-xs mb-1">
                    <span className="text-white/50 capitalize">{spirit_type}</span>
                    <span className="text-white/80 font-medium">{count}</span>
                  </div>
                  <div className="h-2 bg-white/[0.04] rounded-full overflow-hidden">
                    <div
                      className="h-full bg-accent/40 rounded-full"
                      style={{ width: `${pct}%` }}
                    />
                  </div>
                </div>
              )
            })}
            {spirits.length === 0 && (
              <p className="text-sm text-white/30 text-center py-4">No aging barrels</p>
            )}
          </div>
        </div>

        {/* Recent Activity */}
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Recent Activity
          </h2>
          <div className="space-y-3">
            {activity.map((event) => (
              <div
                key={event.id}
                className="flex items-start gap-3 text-sm"
              >
                <span className="text-xs px-1.5 py-0.5 rounded bg-white/[0.06] text-white/40 capitalize shrink-0 mt-0.5">
                  {event.event_type.replace('_', ' ')}
                </span>
                <div className="min-w-0">
                  <span className="text-white/80 font-medium">{event.barrel_number}</span>
                  {event.proof_gal != null && (
                    <span className="text-white/40 ml-1">
                      {formatProofGallons(event.proof_gal)}
                    </span>
                  )}
                  <div className="text-xs text-white/30 mt-0.5">
                    {formatDate(event.event_date)}
                    {event.logged_by_name && ` by ${event.logged_by_name}`}
                  </div>
                </div>
              </div>
            ))}
            {activity.length === 0 && (
              <p className="text-sm text-white/30 text-center py-4">No recent activity</p>
            )}
          </div>
        </div>
      </div>
    </div>
  )
}
