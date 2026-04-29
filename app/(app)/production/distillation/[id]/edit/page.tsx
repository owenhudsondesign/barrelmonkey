import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { DistillationRunForm, type DistillationRunRecord } from '@/components/production/distillation-run-form'

export const metadata = {
  title: 'Edit Distillation Run — BarrelMonkey',
}

export default async function EditDistillationPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const supabase = await createClient()

  const { data: record } = await supabase
    .from('distillation_runs')
    .select('id, run_number, spirit_type, still_name, run_phase, run_date, proof_gal, lot_name, mash_bill, notes')
    .eq('id', id)
    .is('deleted_at', null)
    .single()

  if (!record) notFound()

  return (
    <div className="max-w-2xl">
      <Link
        href="/production?tab=distillation"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Distillation
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Edit Distillation Run</h1>
        <p className="text-sm text-white/40 mt-1">Run #{record.run_number}</p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <DistillationRunForm record={record as DistillationRunRecord} />
      </div>
    </div>
  )
}
