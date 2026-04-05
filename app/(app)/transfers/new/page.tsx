import Link from 'next/link'
import { TibRecordForm } from '@/components/transfers/tib-record-form'

export const metadata = {
  title: 'New Transfer — BarrelMonkey',
}

export default function NewTransferPage() {
  return (
    <div className="max-w-2xl">
      <Link
        href="/transfers"
        className="inline-flex items-center gap-1 text-white/40 hover:text-white/60 text-sm mb-4 transition-colors"
      >
        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Transfers
      </Link>

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">New Transfer</h1>
        <p className="text-sm text-white/40 mt-1">
          Log a new TIB transfer record
        </p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <TibRecordForm />
      </div>
    </div>
  )
}
