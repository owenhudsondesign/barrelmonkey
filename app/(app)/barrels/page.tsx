import { Suspense } from 'react'
import { BarrelListPage } from '@/components/barrels/barrel-list-page'

export const metadata = {
  title: 'Barrels — BarrelMonkey',
}

export default async function BarrelsPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams
  return (
    <Suspense fallback={<BarrelListSkeleton />}>
      <BarrelListPage searchParams={params} />
    </Suspense>
  )
}

function BarrelListSkeleton() {
  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <div>
          <div className="h-8 w-32 bg-white/[0.06] rounded animate-pulse" />
          <div className="h-4 w-20 bg-white/[0.04] rounded mt-2 animate-pulse" />
        </div>
      </div>
      <div className="h-10 bg-white/[0.04] rounded-md mb-4 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 10 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
