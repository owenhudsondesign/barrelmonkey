'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'

const CATEGORIES: { value: string; label: string }[] = [
  { value: 'all', label: 'All' },
  { value: 'production', label: 'Production' },
  { value: 'processing', label: 'Processing' },
  { value: 'extract', label: 'Extract' },
  { value: 'misc', label: 'Misc' },
]

export function TankFilters() {
  const router = useRouter()
  const searchParams = useSearchParams()

  const currentCategory = searchParams.get('category') ?? 'all'
  const currentActive = searchParams.get('active') ?? ''

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
      router.replace(`/tanks?${params.toString()}`)
    },
    [router, searchParams]
  )

  function clearFilters() {
    router.replace('/tanks')
  }

  const hasFilters = currentCategory !== 'all' || currentActive !== ''

  return (
    <div className="space-y-4 mb-6">
      {/* Filter row */}
      <div className="flex flex-wrap items-center gap-3">
        {/* Category pills */}
        <div className="flex gap-1">
          {CATEGORIES.map(({ value, label }) => (
            <button
              key={value}
              onClick={() => updateParams({ category: value === 'all' ? '' : value })}
              className={`text-xs px-2.5 py-1 rounded-full border transition-colors ${
                currentCategory === value
                  ? 'bg-accent/10 text-accent border-accent/30'
                  : 'text-white/40 border-white/10 hover:border-white/20'
              }`}
            >
              {label}
            </button>
          ))}
        </div>

        {/* Active toggle */}
        <label className="flex items-center gap-1.5 text-xs text-white/40 cursor-pointer select-none">
          <input
            type="checkbox"
            checked={currentActive === 'true'}
            onChange={(e) => updateParams({ active: e.target.checked ? 'true' : '' })}
            className="w-3.5 h-3.5 rounded border-white/20 bg-white/[0.03] accent-accent"
          />
          Active only
        </label>

        {/* Clear */}
        {hasFilters && (
          <button
            onClick={clearFilters}
            className="text-xs text-white/30 hover:text-white/50 transition-colors"
          >
            Clear filters
          </button>
        )}
      </div>
    </div>
  )
}
