import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { BottlingRunForm } from '@/components/processing/bottling-run-form'

export const metadata = {
  title: 'New Bottling Run — BarrelMonkey',
}

export default async function NewBottlingRunPage() {
  const supabase = await createClient()
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
        <h1 className="text-2xl font-bold text-white">New Bottling Run</h1>
        <p className="text-sm text-white/40 mt-1">
          Log a new bottling run
        </p>
      </div>

      <div className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
        <BottlingRunForm tanks={tanks ?? []} />
      </div>
    </div>
  )
}
