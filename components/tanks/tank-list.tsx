import Link from 'next/link'
import { getTanks } from '@/lib/queries/tanks'
import { formatDate, formatGallons } from '@/lib/utils/format'

const CATEGORY_BADGE_COLORS: Record<string, string> = {
  production: 'bg-accent/10 text-accent border-accent/30',
  processing: 'bg-white/[0.06] text-white/50 border-white/10',
  extract: 'bg-warning/10 text-warning border-warning/30',
  misc: 'bg-white/[0.04] text-white/30 border-white/[0.08]',
}

interface TankListProps {
  searchParams: Record<string, string | undefined>
}

export async function TankList({ searchParams }: TankListProps) {
  const { tanks, total } = await getTanks({
    category: searchParams.category,
    active: searchParams.active,
  })

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} tanks</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Name</th>
              <th className="px-4 py-3 font-medium">Capacity (gal)</th>
              <th className="px-4 py-3 font-medium">Category</th>
              <th className="px-4 py-3 font-medium">Fermentable</th>
              <th className="px-4 py-3 font-medium">Status</th>
              <th className="px-4 py-3 font-medium">Last Event</th>
              <th className="px-4 py-3 font-medium">Last Event Date</th>
            </tr>
          </thead>
          <tbody>
            {tanks.map((tank) => (
              <tr
                key={tank.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3">
                  <Link
                    href={`/tanks/${tank.id}`}
                    className="text-white/80 hover:text-accent font-medium transition-colors"
                  >
                    {tank.name}
                  </Link>
                </td>
                <td className="px-4 py-3 text-white/60 font-mono">
                  {formatGallons(tank.capacity_gal)}
                </td>
                <td className="px-4 py-3">
                  <span
                    className={`inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded border ${
                      CATEGORY_BADGE_COLORS[tank.tank_category] ?? CATEGORY_BADGE_COLORS.misc
                    }`}
                  >
                    {tank.tank_category}
                  </span>
                </td>
                <td className="px-4 py-3 text-center">
                  {tank.can_ferment ? (
                    <span className="text-accent">&#10003;</span>
                  ) : (
                    <span className="text-white/20">&mdash;</span>
                  )}
                </td>
                <td className="px-4 py-3">
                  {tank.active ? (
                    <span className="text-emerald-400/80 text-xs">Active</span>
                  ) : (
                    <span className="text-white/30 text-xs">Inactive</span>
                  )}
                </td>
                <td className="px-4 py-3">
                  {tank.last_event_type ? (
                    <span className="inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded bg-white/[0.06] text-white/50 border border-white/10">
                      {tank.last_event_type}
                    </span>
                  ) : (
                    <span className="text-white/20">&mdash;</span>
                  )}
                </td>
                <td className="px-4 py-3 text-white/60">
                  {formatDate(tank.last_event_date)}
                </td>
              </tr>
            ))}
            {tanks.length === 0 && (
              <tr>
                <td colSpan={7} className="px-4 py-8 text-center text-white/30">
                  No tanks found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
