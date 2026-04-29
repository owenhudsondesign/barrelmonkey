import Link from 'next/link'
import { notFound } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { TibRecordForm, type TibRecordRecord } from '@/components/transfers/tib-record-form'

export const metadata = {
  title: 'Edit Transfer — BarrelMonkey',
}

export default async function EditTransferPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const supabase = await createClient()

  const { data: record } = await supabase
    .from('tib_records')
    .select('id, direction, transfer_date, spirit_type, tib_number, tib_type, lot_name, total_pg, total_wg, pf, container_ct, dsp_name, dsp_number, notes')
    .eq('id', id)
    .is('deleted_at', null)
    .single()

  if (!record) notFound()

  return (
    <div className="max-w-2xl">
      <Link
        href={`/transfers/${id}`}
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Transfer
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Edit Transfer</h1>
        <p className="text-sm text-white/40 mt-1">{record.transfer_date}</p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <TibRecordForm record={record as TibRecordRecord} />
      </div>
    </div>
  )
}
