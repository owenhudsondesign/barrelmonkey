import { Suspense } from 'react'
import { DashboardPage as DashboardContent } from '@/components/dashboard/dashboard-page'

export const metadata = {
  title: 'Dashboard — BarrelMonkey',
}

export default function DashboardPage() {
  return (
    <Suspense fallback={<DashboardSkeleton />}>
      <DashboardContent />
    </Suspense>
  )
}

function DashboardSkeleton() {
  return (
    <div>
      <div className="mb-8">
        <div className="h-8 w-36 bg-white/[0.06] rounded animate-pulse" />
        <div className="h-4 w-48 bg-white/[0.04] rounded mt-2 animate-pulse" />
      </div>
      <div className="grid grid-cols-2 lg:grid-cols-3 xl:grid-cols-6 gap-4 mb-8">
        {Array.from({ length: 6 }).map((_, i) => (
          <div key={i} className="h-20 bg-white/[0.02] border border-white/[0.08] rounded-xl animate-pulse" />
        ))}
      </div>
      <div className="grid gap-6 lg:grid-cols-2 xl:grid-cols-3">
        {Array.from({ length: 3 }).map((_, i) => (
          <div key={i} className="h-64 bg-white/[0.02] border border-white/[0.08] rounded-xl animate-pulse" />
        ))}
      </div>
    </div>
  )
}
