import Link from 'next/link'
import { Suspense } from 'react'
import { TibList } from '@/components/transfers/tib-list'
import { TibFilters } from '@/components/transfers/tib-filters'

export const metadata = {
  title: 'Transfers — BarrelMonkey',
}

export default async function TransfersPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams

  return (
    <div>
      <div className="flex items-start justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white">Transfers in Bond</h1>
          <p className="text-sm text-white/40 mt-1">
            TIB records — inbound and outbound transfers
          </p>
        </div>
        <Link
          href="/transfers/new"
          className="inline-flex items-center gap-1.5 bg-accent text-black font-semibold text-sm py-2 px-4 rounded-md hover:bg-accent/90 transition-colors"
        >
          <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4.5v15m7.5-7.5h-15" />
          </svg>
          Add Transfer
        </Link>
      </div>

      <TibFilters />

      <Suspense fallback={<ListSkeleton />}>
        <TibList searchParams={params} />
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
