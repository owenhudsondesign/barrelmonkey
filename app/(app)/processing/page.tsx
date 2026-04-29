import Link from 'next/link'
import { Suspense } from 'react'
import { ProcessingTabs } from '@/components/processing/processing-tabs'
import { DumpBatchList } from '@/components/processing/dump-batch-list'
import { BatchingRunList } from '@/components/processing/batching-run-list'
import { BottlingRunList } from '@/components/processing/bottling-run-list'

export const metadata = {
  title: 'Processing — BarrelMonkey',
}

const ADD_LINKS: Record<string, { href: string; label: string }> = {
  dumps: { href: '/processing/dumps/new', label: 'Add Dump' },
  batching: { href: '/processing/batching/new', label: 'Add Batch' },
  bottling: { href: '/processing/bottling/new', label: 'Add Run' },
}

export default async function ProcessingPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams
  const tab = params.tab ?? 'dumps'
  const addLink = ADD_LINKS[tab]

  return (
    <div>
      <div className="flex items-start justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white">Processing</h1>
          <p className="text-sm text-white/40 mt-1">
            Dump batches, batching runs, and bottling
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

      <ProcessingTabs />

      <Suspense fallback={<ListSkeleton />}>
        {tab === 'dumps' && <DumpBatchList searchParams={params} />}
        {tab === 'batching' && <BatchingRunList searchParams={params} />}
        {tab === 'bottling' && <BottlingRunList searchParams={params} />}
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
