import { TankDetail } from '@/components/tanks/tank-detail'

export async function generateMetadata({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  return {
    title: `Tank ${id} — BarrelMonkey`,
  }
}

export default async function TankDetailRoute({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  return <TankDetail tankId={id} />
}
