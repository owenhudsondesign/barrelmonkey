import Link from 'next/link'
import { getTanks, type TankListParams } from '@/lib/queries/tanks'
import { TankFilters } from './tank-filters'
import { formatGallons } from '@/lib/utils/format'

interface TankListPageProps {
  searchParams: Record<string, string | undefined>
}

export async function TankListPage({ searchParams }: TankListPageProps) {
  const params: TankListParams = {
    category: (searchParams.category as TankListParams['category']) || undefined,
    sortBy: searchParams.sortBy || 'name',
    sortDir: (searchParams.sortDir as 'asc' | 'desc') || 'asc',
  }

  const { tanks, total } = await getTanks(params)

  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white">Tanks</h1>
          <p className="text-sm text-white/40 mt-1">{total} tanks</p>
        </div>
      </div>

      <TankFilters />

      <div className="rounded-lg border border-white/10 overflow-hidden mt-4">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Name</th>
              <th className="px-4 py-3 font-medium">Category</th>
              <th className="px-4 py-3 font-medium">Capacity</th>
              <th className="px-4 py-3 font-medium">Can Ferment</th>
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
                    className="text-accent hover:underline font-medium"
                  >
                    {tank.name}
                  </Link>
                </td>
                <td className="px-4 py-3">
                  <span className="text-xs px-2 py-0.5 rounded-full bg-white/[0.06] text-white/50 capitalize">
                    {tank.tank_category}
                  </span>
                </td>
                <td className="px-4 py-3 text-white/60">
                  {formatGallons(tank.capacity_gal)}
                </td>
                <td className="px-4 py-3">
                  {tank.can_ferment ? (
                    <span className="text-xs text-success">Yes</span>
                  ) : (
                    <span className="text-xs text-white/30">No</span>
                  )}
                </td>
              </tr>
            ))}
            {tanks.length === 0 && (
              <tr>
                <td colSpan={4} className="px-4 py-8 text-center text-white/30">
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
