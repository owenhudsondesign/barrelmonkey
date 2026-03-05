'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback, useEffect, useRef, useState } from 'react'
import type { BarrelStatus, SpiritType } from '@/lib/types/database'

const STATUSES: { value: BarrelStatus | 'all'; label: string }[] = [
  { value: 'aging', label: 'Aging' },
  { value: 'dumped', label: 'Dumped' },
  { value: 'empty', label: 'Empty' },
  { value: 'transferred', label: 'Transferred' },
  { value: 'all', label: 'All' },
]

const SPIRIT_TYPES: SpiritType[] = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other']

interface BarrelFiltersProps {
  rackhouses: { id: string; name: string }[]
}

export function BarrelFilters({ rackhouses }: BarrelFiltersProps) {
  const router = useRouter()
  const searchParams = useSearchParams()
  const [searchValue, setSearchValue] = useState(searchParams.get('search') ?? '')
  const debounceRef = useRef<NodeJS.Timeout>(null)

  const currentStatus = searchParams.get('status') ?? 'aging'
  const currentSpirit = searchParams.get('spiritType') ?? ''
  const currentRackhouse = searchParams.get('rackhouse') ?? ''
  const isSearching = !!searchParams.get('search')

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
      router.replace(`/barrels?${params.toString()}`)
    },
    [router, searchParams]
  )

  useEffect(() => {
    return () => {
      if (debounceRef.current) clearTimeout(debounceRef.current)
    }
  }, [])

  function handleSearch(value: string) {
    setSearchValue(value)
    if (debounceRef.current) clearTimeout(debounceRef.current)
    debounceRef.current = setTimeout(() => {
      updateParams({ search: value })
    }, 300)
  }

  function clearFilters() {
    setSearchValue('')
    router.replace('/barrels')
  }

  const hasFilters = isSearching || currentStatus !== 'aging' || currentSpirit || currentRackhouse

  return (
    <div className="space-y-4">
      {/* Search */}
      <div className="relative">
        <svg
          className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-white/30"
          fill="none"
          viewBox="0 0 24 24"
          stroke="currentColor"
        >
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
        </svg>
        <input
          type="text"
          value={searchValue}
          onChange={(e) => handleSearch(e.target.value)}
          placeholder="Search barrel number..."
          className="w-full bg-white/[0.03] border border-white/10 rounded-md pl-10 pr-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
        />
        {isSearching && (
          <div className="mt-1 text-[11px] text-accent/60">Searching all barrels regardless of status</div>
        )}
      </div>

      {/* Filter row */}
      <div className="flex flex-wrap items-center gap-3">
        {/* Status pills */}
        <div className="flex gap-1">
          {STATUSES.map(({ value, label }) => (
            <button
              key={value}
              onClick={() => updateParams({ status: value === 'aging' ? '' : value })}
              disabled={isSearching}
              className={`text-xs px-2.5 py-1 rounded-full border transition-colors ${
                !isSearching && currentStatus === value
                  ? 'bg-accent/10 text-accent border-accent/30'
                  : 'text-white/40 border-white/10 hover:border-white/20 disabled:opacity-30'
              }`}
            >
              {label}
            </button>
          ))}
        </div>

        {/* Spirit type */}
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

        {/* Rackhouse */}
        <select
          value={currentRackhouse}
          onChange={(e) => updateParams({ rackhouse: e.target.value })}
          className="bg-white/[0.03] border border-white/10 rounded-md px-2 py-1 text-xs text-white/60 focus:outline-none focus:border-accent/50"
        >
          <option value="">All rackhouses</option>
          {rackhouses.map((r) => (
            <option key={r.id} value={r.id}>
              {r.name}
            </option>
          ))}
        </select>

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
