import Link from 'next/link'
import { Suspense } from 'react'
import { ProductionTabs } from '@/components/production/production-tabs'
import { FermentationList } from '@/components/production/fermentation-list'
import { DistillationList } from '@/components/production/distillation-list'
import { RackhouseList } from '@/components/production/rackhouse-list'
import { FermenterList } from '@/components/production/fermenter-list'

export const metadata = {
  title: 'Production — BarrelMonkey',
}

const ADD_LINKS: Record<string, { href: string; label: string }> = {
  fermentation: { href: '/production/fermentation/new', label: 'Add Batch' },
  distillation: { href: '/production/distillation/new', label: 'Add Run' },
}

export default async function ProductionPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams
  const tab = params.tab ?? 'fermentation'
  const addLink = ADD_LINKS[tab]

  return (
    <div>
      <div className="flex items-start justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white">Production</h1>
          <p className="text-sm text-white/40 mt-1">
            Fermentation, distillation, rackhouses, and fermenters
          </p>
        </div>
        {addLink && (
          <Link
            href={addLink.href}
            className="inline-flex items-center gap-1.5 bg-accent text-black font-semibold text-sm py-2 px-4 rounded-md hover:bg-accent/90 transition-colors"
          >
            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4.5v15m7.5-7.5h-15" />
            </svg>
            {addLink.label}
          </Link>
        )}
      </div>

      <ProductionTabs />

      <Suspense fallback={<ListSkeleton />}>
        {tab === 'fermentation' && <FermentationList searchParams={params} />}
        {tab === 'distillation' && <DistillationList searchParams={params} />}
        {tab === 'rackhouses' && <RackhouseList />}
        {tab === 'fermenters' && <FermenterList />}
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
