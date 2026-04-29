import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { FermentationBatchForm, type FermentationBatchRecord } from '@/components/production/fermentation-batch-form'

export const metadata = {
  title: 'Edit Fermentation Batch — BarrelMonkey',
}

export default async function EditFermentationPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const supabase = await createClient()

  const { data: record } = await supabase
    .from('fermentation_batches')
    .select('id, batch_number, cook_number, fermenter_id, spirit_type, start_date, status, mash_bill, lot_name, volume_gal, start_sg, ph, temp_f, notes')
    .eq('id', id)
    .is('deleted_at', null)
    .single()

  if (!record) notFound()

  const { data: fermenters } = await supabase
    .from('fermenters')
    .select('id, name')
    .eq('active', true)
    .order('name')

  return (
    <div className="max-w-2xl">
      <Link
        href="/production?tab=fermentation"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Fermentation
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Edit Fermentation Batch</h1>
        <p className="text-sm text-white/40 mt-1">Batch {record.batch_number}</p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <FermentationBatchForm fermenters={fermenters ?? []} record={record as FermentationBatchRecord} />
      </div>
    </div>
  )
}
