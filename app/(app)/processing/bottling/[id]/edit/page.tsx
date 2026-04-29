import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { BottlingRunForm, type BottlingRunRecord } from '@/components/processing/bottling-run-form'

export const metadata = {
  title: 'Edit Bottling Run — BarrelMonkey',
}

export default async function EditBottlingRunPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const supabase = await createClient()

  const { data: record } = await supabase
    .from('bottling_runs')
    .select('id, product_name, spirit_type, bottle_date, bottling_number, lot_name, cases_filled, loose_bottles, proof_gal_bottled, wine_gal_bottled, pack_format, bottle_size_ml, bottles_per_case, source_tank_id, notes')
    .eq('id', id)
    .is('deleted_at', null)
    .single()

  if (!record) notFound()

  const { data: tanks } = await supabase
    .from('tanks')
    .select('id, name')
    .eq('active', true)
    .order('name')

  return (
    <div className="max-w-2xl">
      <Link
        href="/processing?tab=bottling"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Bottling
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Edit Bottling Run</h1>
        <p className="text-sm text-white/40 mt-1">{record.product_name}</p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <BottlingRunForm tanks={tanks ?? []} record={record as BottlingRunRecord} />
      </div>
    </div>
  )
}
