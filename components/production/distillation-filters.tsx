'use client'

import { useRouter, useSearchParams } from 'next/navigation'
import { useCallback } from 'react'
import type { SpiritType } from '@/lib/types/database'

const STILLS = ['Rocket', 'Arnold', 'Both'] as const
const PHASES = ['strip', 'spirit', 'low_wines', 'processing'] as const
const SPIRIT_TYPES: SpiritType[] = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other']

export function DistillationFilters() {
  const router = useRouter()
  const searchParams = useSearchParams()

  const currentStill = searchParams.get('stillName') ?? ''
  const currentPhase = searchParams.get('runPhase') ?? ''
  const currentSpirit = searchParams.get('spiritType') ?? ''

  const updateParams = useCallback(
    (updates: Record<string, string>) => {
      const params = new URLSearchParams(searchParams.toString())
      if (!params.has('tab')) params.set('tab', 'distillation')
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

  const hasFilters = currentStill || currentPhase || currentSpirit

  return (
    <div className="flex flex-wrap items-center gap-3 mb-4">
      <select
        value={currentStill}
        onChange={(e) => updateParams({ stillName: e.target.value })}
        className="bg-white/[0.03] border border-white/10 rounded-md px-2 py-1 text-xs text-white/60 focus:outline-none focus:border-accent/50"
      >
        <option value="">All stills</option>
        {STILLS.map((s) => (
          <option key={s} value={s}>{s}</option>
        ))}
      </select>

      <select
        value={currentPhase}
        onChange={(e) => updateParams({ runPhase: e.target.value })}
        className="bg-white/[0.03] border border-white/10 rounded-md px-2 py-1 text-xs text-white/60 focus:outline-none focus:border-accent/50"
      >
        <option value="">All phases</option>
        {PHASES.map((p) => (
          <option key={p} value={p}>
            {p.replace('_', ' ').replace(/^\w/, (c) => c.toUpperCase())}
          </option>
        ))}
      </select>

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

      {hasFilters && (
        <button
          onClick={() => {
            const params = new URLSearchParams()
            params.set('tab', 'distillation')
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
