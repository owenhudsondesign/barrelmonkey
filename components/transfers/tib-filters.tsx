'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'

const DIRECTIONS = [
  { value: 'all', label: 'All' },
  { value: 'inbound', label: 'Inbound' },
  { value: 'outbound', label: 'Outbound' },
] as const

export function TibFilters() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const currentDirection = searchParams.get('direction') ?? 'all'

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
      router.replace(`/transfers?${params.toString()}`)
    },
    [router, searchParams]
  )

  return (
    <div className="flex gap-1 mb-4">
      {DIRECTIONS.map(({ value, label }) => (
        <button
          key={value}
          onClick={() => updateParams({ direction: value })}
          className={`text-xs px-2.5 py-1 rounded-full border transition-colors ${
            currentDirection === value
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
