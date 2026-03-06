'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'

const CATEGORIES = [
  { value: 'all', label: 'All' },
  { value: 'production', label: 'Production' },
  { value: 'processing', label: 'Processing' },
  { value: 'extract', label: 'Extract' },
  { value: 'misc', label: 'Misc' },
] as const

export function TankFilters() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const currentCategory = searchParams.get('category') ?? 'all'

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
      router.replace(`/tanks?${params.toString()}`)
    },
    [router, searchParams]
  )

  return (
    <div className="flex gap-1">
      {CATEGORIES.map(({ value, label }) => (
        <button
          key={value}
          onClick={() => updateParams({ category: value })}
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
  )
}
