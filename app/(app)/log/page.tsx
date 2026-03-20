import { Suspense } from 'react'
import { ActivityFilters } from '@/components/log/activity-filters'
import { ActivityFeed } from '@/components/log/activity-feed'

export const metadata = {
  title: 'Activity Log — BarrelMonkey',
}

export default async function LogPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Activity Log</h1>
        <p className="text-sm text-white/40 mt-1">
          Recent barrel and tank events
        </p>
      </div>

      <ActivityFilters />

      <Suspense fallback={<FeedSkeleton />}>
        <ActivityFeed searchParams={params} />
      </Suspense>
    </div>
  )
}

function FeedSkeleton() {
  return (
    <div>
      <div className="h-4 w-24 bg-white/[0.04] rounded mb-3 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 10 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
