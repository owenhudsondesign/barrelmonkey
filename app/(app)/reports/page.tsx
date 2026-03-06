import { Suspense } from 'react'
import { ReportList } from '@/components/reports/report-list'
import { ReportFilters } from '@/components/reports/report-filters'

export const metadata = {
  title: 'TTB Reports — BarrelMonkey',
}

export default async function ReportsPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">TTB Reports</h1>
        <p className="text-sm text-white/40 mt-1">
          Federal reporting — production, storage, and processing
        </p>
      </div>

      <ReportFilters />

      <Suspense fallback={<ListSkeleton />}>
        <ReportList searchParams={params} />
      </Suspense>
    </div>
  )
}

function ListSkeleton() {
  return (
    <div>
      <div className="h-4 w-24 bg-white/[0.04] rounded mb-3 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 6 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
