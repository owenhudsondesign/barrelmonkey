'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'
import type { FermentationStatus, SpiritType } from '@/lib/types/database'

const STATUSES: { value: FermentationStatus | 'all'; label: string }[] = [
  { value: 'active', label: 'Active' },
  { value: 'complete', label: 'Complete' },
  { value: 'scrapped', label: 'Scrapped' },
  { value: 'all', label: 'All' },
]

const SPIRIT_TYPES: SpiritType[] = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other']

interface FermentationFiltersProps {
  fermenters: { id: string; name: string }[]
}

export function FermentationFilters({ fermenters }: FermentationFiltersProps) {
  const router = useRouter()
  const searchParams = useSearchParams()

  const currentStatus = searchParams.get('status') ?? 'active'
  const currentSpirit = searchParams.get('spiritType') ?? ''
  const currentFermenter = searchParams.get('fermenterId') ?? ''

  const updateParams = useCallback(
    (updates: Record<string, string>) => {
      const params = new URLSearchParams(searchParams.toString())
      // Preserve the tab
      if (!params.has('tab')) params.set('tab', 'fermentation')
      Object.entries(updates).forEach(([key, value]) => {
        if (value) {
          params.set(key, value)
        } else {
          params.delete(key)
        }
      })
      router.replace(`/production?${params.toString()}`)
    },
    [router, searchParams]
  )

  const hasFilters = currentStatus !== 'active' || currentSpirit || currentFermenter

  return (
    <div className="flex flex-wrap items-center gap-3 mb-4">
      <div className="flex gap-1">
        {STATUSES.map(({ value, label }) => (
          <button
            key={value}
            onClick={() => updateParams({ status: value === 'active' ? '' : value })}
            className={`text-xs px-2.5 py-1 rounded-full border transition-colors ${
              currentStatus === value
                ? 'bg-accent/10 text-accent border-accent/30'
                : 'text-white/40 border-white/10 hover:border-white/20'
            }`}
          >
            {label}
          </button>
        ))}
      </div>

      <select
        value={currentSpirit}
        onChange={(e) => updateParams({ spiritType: e.target.value })}
        className="bg-white/[0.03] border border-white/10 rounded-md px-2 py-1 text-xs text-white/60 focus:outline-none focus:border-accent/50"
      >
        <option value="">All spirits</option>
        {SPIRIT_TYPES.map((s) => (
          <option key={s} value={s}>
            {s.charAt(0).toUpperCase() + s.slice(1)}
          </option>
        ))}
      </select>

      <select
        value={currentFermenter}
        onChange={(e) => updateParams({ fermenterId: e.target.value })}
        className="bg-white/[0.03] border border-white/10 rounded-md px-2 py-1 text-xs text-white/60 focus:outline-none focus:border-accent/50"
      >
        <option value="">All fermenters</option>
        {fermenters.map((f) => (
          <option key={f.id} value={f.id}>
            {f.name}
          </option>
        ))}
      </select>

      {hasFilters && (
        <button
          onClick={() => {
            const params = new URLSearchParams()
            params.set('tab', 'fermentation')
            router.replace(`/production?${params.toString()}`)
          }}
          className="text-xs text-white/30 hover:text-white/50 transition-colors"
        >
          Clear filters
        </button>
      )}
    </div>
  )
}
