import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { BarrelEventForm } from '@/components/barrels/barrel-event-form'

export const metadata = {
  title: 'Add Event — BarrelMonkey',
}

export default async function NewBarrelEventPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const supabase = await createClient()

  const { data: barrel, error } = await supabase
    .from('barrels')
    .select('id, barrel_number')
    .eq('id', id)
    .single()

  if (error || !barrel) {
    notFound()
  }

  const { data: tanks } = await supabase
    .from('tanks')
    .select('id, name')
    .eq('active', true)
    .order('name')

  const { data: rackhouses } = await supabase
    .from('rackhouses')
    .select('id, name')
    .eq('active', true)
    .order('name')

  return (
    <div className="max-w-2xl">
      <Link
        href={`/barrels/${id}`}
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to {barrel.barrel_number}
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Add Event</h1>
        <p className="text-sm text-white/40 mt-1">
          Log an event for barrel {barrel.barrel_number}
        </p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <BarrelEventForm
          barrelId={id}
          barrelNumber={barrel.barrel_number}
          tanks={tanks ?? []}
          rackhouses={rackhouses ?? []}
        />
      </div>
    </div>
  )
}
