'use client'

import { useState } from 'react'

type Mode = 'wg-to-pg' | 'pg-to-wg'

const MODES: readonly { readonly value: Mode; readonly label: string }[] = [
  { value: 'wg-to-pg', label: 'WG → PG' },
  { value: 'pg-to-wg', label: 'PG → WG' },
] as const

export function ProofGallonsCalc() {
  const [mode, setMode] = useState<Mode>('wg-to-pg')
  const [volume, setVolume] = useState('')
  const [proof, setProof] = useState('')

  const vol = parseFloat(volume)
  const prf = parseFloat(proof)
  const hasValidInput = !isNaN(vol) && vol > 0 && !isNaN(prf) && prf > 0

  const result = hasValidInput
    ? mode === 'wg-to-pg'
      ? (vol * prf) / 200
      : (vol * 200) / prf
    : null

  const volumeLabel = mode === 'wg-to-pg' ? 'Wine Gallons' : 'Proof Gallons'
  const resultLabel = mode === 'wg-to-pg' ? 'Proof Gallons' : 'Wine Gallons'

  return (
    <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5">
      <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
        Proof Gallons
      </h2>

      <div className="space-y-4">
        <div className="flex gap-1 border-b border-white/[0.08] mb-2">
          {MODES.map(({ value, label }) => (
            <button
              key={value}
              onClick={() => {
                setMode(value)
                setVolume('')
                setProof('')
              }}
              className={`px-4 py-2.5 text-sm font-medium transition-colors relative ${
                mode === value
                  ? 'text-accent'
                  : 'text-white/40 hover:text-white/60'
              }`}
            >
              {label}
              {mode === value && (
                <div className="absolute bottom-0 left-0 right-0 h-0.5 bg-accent" />
              )}
            </button>
          ))}
        </div>

        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            {volumeLabel}
          </label>
          <input
            type="number"
            step="0.01"
            min="0"
            placeholder="e.g. 53"
            value={volume}
            onChange={(e) => setVolume(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            Proof
          </label>
          <input
            type="number"
            step="0.1"
            min="0"
            placeholder="e.g. 125"
            value={proof}
            onChange={(e) => setProof(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        {result !== null && (
          <div className="bg-accent/[0.06] border border-accent/20 rounded-md p-3">
            <span className="text-[10px] text-white/30 uppercase tracking-wider">
              {resultLabel}
            </span>
            <p className="text-lg font-semibold text-accent">
              {result.toFixed(2)} gal
            </p>
          </div>
        )}
      </div>
    </div>
  )
}
