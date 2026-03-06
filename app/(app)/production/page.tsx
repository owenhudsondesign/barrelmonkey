import { Suspense } from 'react'
import { ProductionTabs } from '@/components/production/production-tabs'
import { FermentationList } from '@/components/production/fermentation-list'
import { FermentationFilters } from '@/components/production/fermentation-filters'
import { DistillationList } from '@/components/production/distillation-list'
import { DistillationFilters } from '@/components/production/distillation-filters'
import { getFermenters } from '@/lib/queries/fermentation'

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
          Fermentation batches and distillation runs
        </p>
      </div>

      <ProductionTabs />

      {tab === 'fermentation' ? (
        <Suspense fallback={<ListSkeleton />}>
          <FermentationContent searchParams={params} />
        </Suspense>
      ) : (
        <Suspense fallback={<ListSkeleton />}>
          <DistillationContent searchParams={params} />
        </Suspense>
      )}
    </div>
  )
}

async function FermentationContent({
  searchParams,
}: {
  searchParams: Record<string, string | undefined>
}) {
  const fermenters = await getFermenters()

  return (
    <>
      <FermentationFilters fermenters={fermenters} />
      <FermentationList searchParams={searchParams} />
    </>
  )
}

function DistillationContent({
  searchParams,
}: {
  searchParams: Record<string, string | undefined>
}) {
  return (
    <>
      <DistillationFilters />
      <DistillationList searchParams={searchParams} />
    </>
  )
}

function ListSkeleton() {
  return (
    <div>
      <div className="h-8 bg-white/[0.04] rounded-md mb-4 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 8 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
