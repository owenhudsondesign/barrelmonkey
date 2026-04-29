import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { DumpBatchForm, type DumpBatchRecord } from '@/components/processing/dump-batch-form'

export const metadata = {
  title: 'Edit Dump Batch — BarrelMonkey',
}

export default async function EditDumpBatchPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const supabase = await createClient()

  const { data: record } = await supabase
    .from('dump_batches')
    .select('id, dump_date, spirit_type, barrel_count, target_tank_id, total_opg, total_rpg, total_loss_pg, blend_lot_name, dump_type, to_account, notes')
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
        href="/processing?tab=dumps"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Dump Batches
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Edit Dump Batch</h1>
        <p className="text-sm text-white/40 mt-1">{record.dump_date}</p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <DumpBatchForm tanks={tanks ?? []} record={record as DumpBatchRecord} />
      </div>
    </div>
  )
}
