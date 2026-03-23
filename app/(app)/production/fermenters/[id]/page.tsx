import { FermenterDetail } from '@/components/production/fermenter-detail'

export async function generateMetadata({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  return {
    title: `Fermenter ${id} — BarrelMonkey`,
  }
}

export default async function FermenterDetailRoute({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  return <FermenterDetail fermenterId={id} />
}
