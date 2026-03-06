import { Suspense } from 'react'
import { TankListPage } from '@/components/tanks/tank-list-page'

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
    <Suspense fallback={<TankListSkeleton />}>
      <TankListPage searchParams={params} />
    </Suspense>
  )
}

function TankListSkeleton() {
  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <div>
          <div className="h-8 w-24 bg-white/[0.06] rounded animate-pulse" />
          <div className="h-4 w-16 bg-white/[0.04] rounded mt-2 animate-pulse" />
        </div>
      </div>
      <div className="h-8 bg-white/[0.04] rounded-md mb-4 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 8 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
