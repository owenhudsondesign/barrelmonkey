import { Suspense } from 'react'
import { TankFilters } from '@/components/tanks/tank-filters'
import { TankList } from '@/components/tanks/tank-list'

export const metadata = {
  title: 'Tanks — BarrelMonkey',
}

export default async function TanksPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Tanks</h1>
        <p className="text-sm text-white/40 mt-1">
          Production, processing, and extract tanks
        </p>
      </div>

      <TankFilters />

      <Suspense fallback={<ListSkeleton />}>
        <TankList searchParams={params} />
      </Suspense>
    </div>
  )
}

function ListSkeleton() {
  return (
    <div>
      <div className="h-4 w-24 bg-white/[0.04] rounded mb-3 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 8 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
