'use client'

import { useState } from 'react'
import { createClient } from '@/lib/supabase/client'
import { barrelsToCsv } from '@/lib/utils/csv'
import { useSearchParams } from 'next/navigation'
import type { Database } from '@/lib/types/supabase'

type BarrelStatus = Database['public']['Enums']['barrel_status']
type SpiritType = Database['public']['Enums']['spirit_type']

export function CsvExportButton() {
  const [loading, setLoading] = useState(false)
  const searchParams = useSearchParams()

  async function handleExport() {
    setLoading(true)
    try {
      const supabase = createClient()

      let query = supabase
        .from('barrels')
        .select('*, rackhouse:rackhouses(name)')
        .order('barrel_number', { ascending: true })

      const search = searchParams.get('search')
      const status = searchParams.get('status')
      const spiritType = searchParams.get('spiritType')
      const rackhouse = searchParams.get('rackhouse')

      if (search) {
        query = query.ilike('barrel_number', `%${search}%`)
      } else if (status && status !== 'all') {
        query = query.eq('status', status as BarrelStatus)
      } else if (!status) {
        query = query.eq('status', 'aging')
      }

      if (spiritType) query = query.eq('spirit_type', spiritType as SpiritType)
      if (rackhouse) query = query.eq('rackhouse_id', rackhouse)

      const { data, error } = await query
      if (error) throw error

      const csv = barrelsToCsv(data ?? [])
      const blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' })
      const url = URL.createObjectURL(blob)
      const a = document.createElement('a')
      a.href = url
      a.download = `barrelmonkey-barrels-${new Date().toISOString().split('T')[0]}.csv`
      a.click()
      URL.revokeObjectURL(url)
    } catch (err) {
      console.error('Export failed:', err)
    } finally {
      setLoading(false)
    }
  }

  return (
    <button
      onClick={handleExport}
      disabled={loading}
      className="text-xs px-3 py-1.5 rounded-md border border-white/10 text-white/50 hover:text-white/70 hover:border-white/20 transition-colors disabled:opacity-50"
    >
      {loading ? 'Exporting...' : 'Export CSV'}
    </button>
  )
}
