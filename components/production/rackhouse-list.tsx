import Link from 'next/link'
import { getRackhouses } from '@/lib/queries/rackhouses'

const STATUS_STYLES = {
  active: 'bg-green-500/10 text-green-400 border-green-500/20',
  inactive: 'bg-white/[0.04] text-white/30 border-white/10',
} as const

export async function RackhouseList() {
  const { rackhouses, total } = await getRackhouses()

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} rackhouses</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Name</th>
              <th className="px-4 py-3 font-medium">Location</th>
              <th className="px-4 py-3 font-medium">Address</th>
              <th className="px-4 py-3 font-medium">Status</th>
              <th className="px-4 py-3 font-medium text-right">Barrels</th>
            </tr>
          </thead>
          <tbody>
            {rackhouses.map((rh) => {
              const statusKey = rh.active ? 'active' : 'inactive'
              return (
                <tr
                  key={rh.id}
                  className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
                >
                  <td className="px-4 py-3">
                    <Link
                      href={`/production/rackhouses/${rh.id}`}
                      className="text-white/80 hover:text-accent font-medium transition-colors"
                    >
                      {rh.name}
                    </Link>
                  </td>
                  <td className="px-4 py-3 text-white/60">
                    {rh.is_offsite ? 'Offsite' : 'Onsite'}
                  </td>
                  <td className="px-4 py-3 text-white/60">{rh.address ?? '—'}</td>
                  <td className="px-4 py-3">
                    <span
                      className={`inline-flex items-center text-[11px] font-medium capitalize px-2 py-0.5 rounded border ${STATUS_STYLES[statusKey]}`}
                    >
                      {statusKey}
                    </span>
                  </td>
                  <td className="px-4 py-3 text-white/60 font-mono text-right">
                    {rh.barrel_count}
                  </td>
                </tr>
              )
            })}
            {rackhouses.length === 0 && (
              <tr>
                <td colSpan={5} className="px-4 py-8 text-center text-white/30">
                  No rackhouses found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
