import { RackhouseDetail } from '@/components/production/rackhouse-detail'

export async function generateMetadata({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  return {
    title: `Rackhouse ${id} — BarrelMonkey`,
  }
}

export default async function RackhouseDetailRoute({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  return <RackhouseDetail rackhouseId={id} />
}
