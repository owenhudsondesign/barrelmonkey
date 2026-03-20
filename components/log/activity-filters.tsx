'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'

const EVENT_TYPES: { value: string; label: string }[] = [
  { value: '', label: 'All' },
  { value: 'fill', label: 'Fill' },
  { value: 'dump', label: 'Dump' },
  { value: 'move', label: 'Move' },
  { value: 'proof_reading', label: 'Proof Reading' },
  { value: 'adjustment', label: 'Adjustment' },
  { value: 'tib_out', label: 'TIB Out' },
  { value: 'tib_in', label: 'TIB In' },
  { value: 'filtering', label: 'Filtering' },
  { value: 'destruction', label: 'Destruction' },
  { value: 'inspection', label: 'Inspection' },
]

export function ActivityFilters() {
  const router = useRouter()
  const searchParams = useSearchParams()

  const currentEventType = searchParams.get('eventType') ?? ''

  const updateParams = useCallback(
    (updates: Record<string, string>) => {
      const params = new URLSearchParams(searchParams.toString())
      Object.entries(updates).forEach(([key, value]) => {
        if (value) {
          params.set(key, value)
        } else {
          params.delete(key)
        }
      })
      const qs = params.toString()
      router.replace(qs ? `/log?${qs}` : '/log')
    },
    [router, searchParams]
  )

  return (
    <div className="mb-6">
      <div className="flex flex-wrap gap-1">
        {EVENT_TYPES.map(({ value, label }) => (
          <button
            key={value || 'all'}
            onClick={() => updateParams({ eventType: value })}
            className={`text-xs px-2.5 py-1 rounded-full border transition-colors ${
              currentEventType === value
                ? 'bg-accent/10 text-accent border-accent/30'
                : 'text-white/40 border-white/10 hover:border-white/20'
            }`}
          >
            {label}
          </button>
        ))}
      </div>
    </div>
  )
}
