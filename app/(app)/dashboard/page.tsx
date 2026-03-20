import { Suspense } from 'react'
import { DashboardContent } from '@/components/dashboard/dashboard-content'

export const metadata = {
  title: 'Dashboard — BarrelMonkey',
}

export default function DashboardPage() {
  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Dashboard</h1>
      </div>

      <Suspense fallback={<DashboardSkeleton />}>
        <DashboardContent />
      </Suspense>
    </div>
  )
}

function DashboardSkeleton() {
  return (
    <div className="space-y-6">
      {/* Barrel stats skeleton */}
      <div>
        <div className="h-3 w-16 bg-white/[0.04] rounded mb-3 animate-pulse" />
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
          {Array.from({ length: 4 }).map((_, i) => (
            <div key={i} className="rounded-lg border border-white/10 bg-white/[0.02] p-5 animate-pulse">
              <div className="h-2.5 w-16 bg-white/[0.06] rounded mb-2" />
              <div className="h-7 w-12 bg-white/[0.06] rounded" />
            </div>
          ))}
        </div>
      </div>

      {/* Equipment skeleton */}
      <div>
        <div className="h-3 w-20 bg-white/[0.04] rounded mb-3 animate-pulse" />
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {Array.from({ length: 3 }).map((_, i) => (
            <div key={i} className="rounded-lg border border-white/10 bg-white/[0.02] p-5 animate-pulse">
              <div className="h-2.5 w-16 bg-white/[0.06] rounded mb-2" />
              <div className="h-7 w-12 bg-white/[0.06] rounded" />
            </div>
          ))}
        </div>
      </div>

      {/* TTB skeleton */}
      <div>
        <div className="h-3 w-24 bg-white/[0.04] rounded mb-3 animate-pulse" />
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {Array.from({ length: 3 }).map((_, i) => (
            <div key={i} className="rounded-lg border border-white/10 bg-white/[0.02] p-5 animate-pulse">
              <div className="h-2.5 w-16 bg-white/[0.06] rounded mb-2" />
              <div className="h-7 w-12 bg-white/[0.06] rounded" />
            </div>
          ))}
        </div>
      </div>

      {/* Recent dumps skeleton */}
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 5 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
