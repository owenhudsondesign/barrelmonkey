import { BarrelDetailPage } from '@/components/barrels/barrel-detail-page'

export async function generateMetadata({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  return {
    title: `Barrel ${id} — BarrelMonkey`,
  }
}

export default async function BarrelDetailRoute({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  return <BarrelDetailPage barrelId={id} />
}
