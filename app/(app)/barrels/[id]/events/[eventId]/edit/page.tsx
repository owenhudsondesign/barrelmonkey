import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { BarrelEventForm, type BarrelEventRecord } from '@/components/barrels/barrel-event-form'

export const metadata = {
  title: 'Edit Event — BarrelMonkey',
}

export default async function EditBarrelEventPage({
  params,
}: {
  params: Promise<{ id: string; eventId: string }>
}) {
  const { id, eventId } = await params
  const supabase = await createClient()

  const { data: barrel, error: barrelError } = await supabase
    .from('barrels')
    .select('id, barrel_number')
    .eq('id', id)
    .single()

  if (barrelError || !barrel) notFound()

  const { data: record } = await supabase
    .from('barrel_events')
    .select('id, event_type, event_date, proof, proof_gal, wine_gal, fill_proof, net_weight_lb, temp_f, gain_loss_pg, source_tank_id, to_tank_id, rackhouse_id, from_rackhouse_id, to_rackhouse_id, cooperage, barrel_condition, notes')
    .eq('id', eventId)
    .eq('barrel_id', id)
    .is('deleted_at', null)
    .single()

  if (!record) notFound()

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
        <h1 className="text-2xl font-bold text-white">Edit Event</h1>
        <p className="text-sm text-white/40 mt-1">Barrel {barrel.barrel_number}</p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <BarrelEventForm
          barrelId={id}
          barrelNumber={barrel.barrel_number}
          tanks={tanks ?? []}
          rackhouses={rackhouses ?? []}
          record={record as BarrelEventRecord}
        />
      </div>
    </div>
  )
}
