import { Suspense } from 'react'
import { ProductionTabs } from '@/components/production/production-tabs'
import { FermentationList } from '@/components/production/fermentation-list'
import { DistillationList } from '@/components/production/distillation-list'

export const metadata = {
  title: 'Production — BarrelMonkey',
}

export default async function ProductionPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams
  const tab = params.tab ?? 'fermentation'

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Production</h1>
        <p className="text-sm text-white/40 mt-1">
          Fermentation and distillation runs
        </p>
      </div>

      <ProductionTabs />

      <Suspense fallback={<ListSkeleton />}>
        {tab === 'fermentation' && <FermentationList />}
        {tab === 'distillation' && <DistillationList />}
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
