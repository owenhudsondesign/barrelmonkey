'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'

const TYPES = [
  { value: 'all', label: 'All' },
  { value: 'production', label: 'Production' },
  { value: 'storage', label: 'Storage' },
  { value: 'processing', label: 'Processing' },
] as const

const STATUSES = [
  { value: 'all', label: 'All' },
  { value: 'draft', label: 'Draft' },
  { value: 'reviewed', label: 'Reviewed' },
  { value: 'filed', label: 'Filed' },
] as const

export function ReportFilters() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const currentType = searchParams.get('type') ?? 'all'
  const currentStatus = searchParams.get('status') ?? 'all'

  const updateParams = useCallback(
    (updates: Record<string, string>) => {
      const params = new URLSearchParams(searchParams.toString())
      Object.entries(updates).forEach(([key, value]) => {
        if (value && value !== 'all') {
          params.set(key, value)
        } else {
          params.delete(key)
        }
      })
      router.replace(`/reports?${params.toString()}`)
    },
    [router, searchParams]
  )

  return (
    <div className="flex flex-wrap items-center gap-3 mb-4">
      <div className="flex gap-1">
        {TYPES.map(({ value, label }) => (
          <button
            key={value}
            onClick={() => updateParams({ type: value })}
            className={`text-xs px-2.5 py-1 rounded-full border transition-colors ${
              currentType === value
                ? 'bg-accent/10 text-accent border-accent/30'
                : 'text-white/40 border-white/10 hover:border-white/20'
            }`}
          >
            {label}
          </button>
        ))}
      </div>

      <select
        value={currentStatus}
        onChange={(e) => updateParams({ status: e.target.value })}
        className="bg-white/[0.03] border border-white/10 rounded-md px-2 py-1 text-xs text-white/60 focus:outline-none focus:border-accent/50"
      >
        {STATUSES.map(({ value, label }) => (
          <option key={value} value={value}>{label}</option>
        ))}
      </select>
    </div>
  )
}
