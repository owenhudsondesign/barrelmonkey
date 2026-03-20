import { Suspense } from 'react'
import type { Metadata } from 'next'
import { ProductProvenancePage } from '@/components/provenance/product-provenance-page'

export const metadata: Metadata = {
  title: 'Provenance | BarrelMonkey',
}

interface PageProps {
  searchParams: Promise<Record<string, string | undefined>>
}

export default async function ProvenanceRoute({ searchParams }: PageProps) {
  const params = await searchParams
  return (
    <Suspense
      fallback={
        <div className="animate-pulse space-y-4">
          <div className="h-8 w-48 bg-white/5 rounded" />
          <div className="h-12 w-full bg-white/5 rounded" />
          <div className="h-64 w-full bg-white/5 rounded" />
        </div>
      }
    >
      <ProductProvenancePage searchParams={params} />
    </Suspense>
  )
}
