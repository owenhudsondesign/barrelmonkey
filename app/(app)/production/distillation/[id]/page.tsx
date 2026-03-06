import { Suspense } from 'react'
import { DistillationDetail } from '@/components/production/distillation-detail'

export const metadata = {
  title: 'Distillation Run — BarrelMonkey',
}

export default async function DistillationDetailPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params

  return (
    <Suspense fallback={<DetailSkeleton />}>
      <DistillationDetail id={id} />
    </Suspense>
  )
}

function DetailSkeleton() {
  return (
    <div>
      <div className="h-4 w-32 bg-white/[0.04] rounded animate-pulse mb-6" />
      <div className="h-8 w-48 bg-white/[0.06] rounded animate-pulse mb-4" />
      <div className="grid gap-6 lg:grid-cols-2">
        <div className="h-64 bg-white/[0.02] border border-white/[0.08] rounded-xl animate-pulse" />
        <div className="h-64 bg-white/[0.02] border border-white/[0.08] rounded-xl animate-pulse" />
      </div>
    </div>
  )
}
