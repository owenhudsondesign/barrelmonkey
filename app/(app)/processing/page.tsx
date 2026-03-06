import { Suspense } from 'react'
import { ProcessingTabs } from '@/components/processing/processing-tabs'
import { DumpBatchList } from '@/components/processing/dump-batch-list'
import { BatchingRunList } from '@/components/processing/batching-run-list'
import { BottlingRunList } from '@/components/processing/bottling-run-list'

export const metadata = {
  title: 'Processing — BarrelMonkey',
}

export default async function ProcessingPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const params = await searchParams
  const tab = params.tab ?? 'dumps'

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Processing</h1>
        <p className="text-sm text-white/40 mt-1">
          Dump batches, batching runs, and bottling
        </p>
      </div>

      <ProcessingTabs />

      <Suspense fallback={<ListSkeleton />}>
        {tab === 'dumps' && <DumpBatchList />}
        {tab === 'batching' && <BatchingRunList />}
        {tab === 'bottling' && <BottlingRunList />}
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
