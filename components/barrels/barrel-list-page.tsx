import Link from 'next/link'
import { getBarrelList, getRackhouses, type BarrelListParams } from '@/lib/queries/barrels'
import { StatusBadge } from '@/components/ui/status-badge'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { BarrelFilters } from './barrel-filters'
import { CsvExportButton } from './csv-export-button'
import { Pagination } from '@/components/ui/pagination'
import { computeAge, formatDate, formatProof, formatGallons, formatProofGallons } from '@/lib/utils/format'
import type { BarrelStatus, SpiritType } from '@/lib/types/database'

interface BarrelListPageProps {
  searchParams: Record<string, string | undefined>
}

export async function BarrelListPage({ searchParams }: BarrelListPageProps) {
  const currentPage = searchParams.page ? parseInt(searchParams.page, 10) : 1

  const params: BarrelListParams = {
    status: (searchParams.status as BarrelStatus | 'all') || undefined,
    spiritType: (searchParams.spiritType as SpiritType) || undefined,
    rackhouse: searchParams.rackhouse || undefined,
    search: searchParams.search || undefined,
    sortBy: searchParams.sortBy || 'fill_date',
    sortDir: (searchParams.sortDir as 'asc' | 'desc') || 'asc',
    page: currentPage,
  }

  const [{ barrels, total, pageSize }, rackhouses] = await Promise.all([
    getBarrelList(params),
    getRackhouses(),
  ])

  const currentSort = params.sortBy ?? 'fill_date'
  const currentDir = params.sortDir ?? 'asc'

  function sortUrl(column: string) {
    const sp = new URLSearchParams()
    Object.entries(searchParams).forEach(([k, v]) => {
      if (v) sp.set(k, v)
    })
    sp.set('sortBy', column)
    sp.set('sortDir', currentSort === column && currentDir === 'asc' ? 'desc' : 'asc')
    return `/barrels?${sp.toString()}`
  }

  function SortHeader({ column, children }: { column: string; children: React.ReactNode }) {
    const isActive = currentSort === column
    return (
      <Link
        href={sortUrl(column)}
        className={`inline-flex items-center gap-1 hover:text-white/60 transition-colors ${
          isActive ? 'text-accent' : ''
        }`}
      >
        {children}
        {isActive && (
          <span className="text-[10px]">{currentDir === 'asc' ? '▲' : '▼'}</span>
        )}
      </Link>
    )
  }

  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white tracking-tight">Barrels</h1>
          <p className="text-white/40 text-sm mt-0.5">
            {total} barrel{total !== 1 ? 's' : ''}
            {params.search && ' found'}
          </p>
        </div>
        <CsvExportButton />
      </div>

      <BarrelFilters rackhouses={rackhouses} />

      {/* Table */}
      <div className="mt-6 overflow-x-auto rounded-lg border border-white/10">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/10 text-white/40 text-[11px] uppercase tracking-wider">
              <th className="text-left px-4 py-3 font-medium">
                <SortHeader column="barrel_number">Barrel #</SortHeader>
              </th>
              <th className="text-left px-4 py-3 font-medium">Spirit</th>
              <th className="text-left px-4 py-3 font-medium">
                <SortHeader column="size_gal">Size</SortHeader>
              </th>
              <th className="text-left px-4 py-3 font-medium">
                <SortHeader column="fill_date">Fill Date</SortHeader>
              </th>
              <th className="text-left px-4 py-3 font-medium">Spirit Age</th>
              <th className="text-left px-4 py-3 font-medium">In Barrel</th>
              <th className="text-left px-4 py-3 font-medium">
                <SortHeader column="entry_pf">Entry PF</SortHeader>
              </th>
              <th className="text-left px-4 py-3 font-medium">PG</th>
              <th className="text-left px-4 py-3 font-medium">Fill WG</th>
              <th className="text-left px-4 py-3 font-medium">Slot</th>
              <th className="text-left px-4 py-3 font-medium">Rackhouse</th>
              <th className="text-left px-4 py-3 font-medium">
                <SortHeader column="status">Status</SortHeader>
              </th>
            </tr>
          </thead>
          <tbody className="divide-y divide-white/[0.06]">
            {barrels.length === 0 ? (
              <tr>
                <td colSpan={12} className="px-4 py-12 text-center text-white/30">
                  {params.search
                    ? `No barrels matching "${params.search}"`
                    : 'No barrels found'}
                </td>
              </tr>
            ) : (
              barrels.map((barrel) => {
                const rackhouse = barrel.rackhouse
                const spiritAge = computeAge(barrel.fill_date, barrel.spirit_age_date)
                const barrelAge = computeAge(barrel.fill_date)
                const agesDiffer = barrel.spirit_age_date && barrel.spirit_age_date !== barrel.fill_date
                return (
                  <tr
                    key={barrel.id}
                    className="hover:bg-white/[0.02] transition-colors"
                  >
                    <td className="px-4 py-3">
                      <Link
                        href={`/barrels/${barrel.id}`}
                        className="text-accent hover:text-accent/80 font-medium transition-colors"
                      >
                        {barrel.barrel_number}
                      </Link>
                    </td>
                    <td className="px-4 py-3">
                      <SpiritBadge type={barrel.spirit_type} />
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {barrel.size_gal ? `${barrel.size_gal}g` : '—'}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {formatDate(barrel.fill_date)}
                    </td>
                    <td className="px-4 py-3 text-white/60">{spiritAge.display}</td>
                    <td className="px-4 py-3 text-white/60">{barrelAge.display}</td>
                    <td className="px-4 py-3 text-white/60">
                      {formatProof(barrel.entry_pf)}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {formatProofGallons(barrel.fill_proof_gal)}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {formatGallons(barrel.fill_wine_gal)}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {barrel.slot ?? '—'}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {rackhouse?.name ?? '—'}
                    </td>
                    <td className="px-4 py-3">
                      <StatusBadge status={barrel.status} />
                    </td>
                  </tr>
                )
              })
            )}
          </tbody>
        </table>
      </div>

      {/* Pagination */}
      {total > pageSize && (
        <Pagination
          currentPage={currentPage}
          totalPages={Math.ceil(total / pageSize)}
          searchParams={searchParams}
          basePath="/barrels"
        />
      )}
    </div>
  )
}
