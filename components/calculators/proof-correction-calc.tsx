'use client'

import { useState } from 'react'

const TTB_CORRECTIONS: readonly (readonly [number, number])[] = [
  [0, 0.052],
  [10, 0.0453],
  [20, 0.0388],
  [30, 0.0321],
  [40, 0.0251],
  [50, 0.015],
  [55, 0.0082],
  [58, 0.0028],
  [59, 0.0014],
  [60, 0.0],
  [61, -0.0013],
  [62, -0.0025],
  [65, -0.0066],
  [70, -0.013],
  [75, -0.0195],
  [80, -0.026],
  [85, -0.033],
  [90, -0.0399],
  [95, -0.0469],
  [100, -0.054],
] as const

function interpolateCorrectionFactor(temp: number): number | null {
  if (temp < TTB_CORRECTIONS[0][0] || temp > TTB_CORRECTIONS[TTB_CORRECTIONS.length - 1][0]) {
    return null
  }

  const exactMatch = TTB_CORRECTIONS.find(([t]) => t === temp)
  if (exactMatch) {
    return exactMatch[1]
  }

  let lowerIndex = 0
  for (let i = 0; i < TTB_CORRECTIONS.length - 1; i++) {
    if (TTB_CORRECTIONS[i][0] <= temp && TTB_CORRECTIONS[i + 1][0] > temp) {
      lowerIndex = i
      break
    }
  }

  const [t1, f1] = TTB_CORRECTIONS[lowerIndex]
  const [t2, f2] = TTB_CORRECTIONS[lowerIndex + 1]
  const ratio = (temp - t1) / (t2 - t1)

  return f1 + ratio * (f2 - f1)
}

export function ProofCorrectionCalc() {
  const [observedProof, setObservedProof] = useState('')
  const [temperature, setTemperature] = useState('60')

  const proof = parseFloat(observedProof)
  const temp = parseFloat(temperature)
  const hasValidInput = !isNaN(proof) && proof > 0 && !isNaN(temp)
  const correctionFactor = hasValidInput ? interpolateCorrectionFactor(temp) : null
  const outOfRange = hasValidInput && correctionFactor === null
  const correctedProof =
    correctionFactor !== null && hasValidInput
      ? proof + proof * correctionFactor
      : null

  return (
    <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5">
      <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
        Proof Correction
      </h2>

      <div className="space-y-4">
        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            Observed Proof
          </label>
          <input
            type="number"
            step="0.1"
            min="0"
            placeholder="e.g. 120"
            value={observedProof}
            onChange={(e) => setObservedProof(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            Temperature (°F)
          </label>
          <input
            type="number"
            step="1"
            min="0"
            max="100"
            placeholder="60"
            value={temperature}
            onChange={(e) => setTemperature(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        {outOfRange && (
          <p className="text-xs text-red-400">
            Temperature must be between 0°F and 100°F.
          </p>
        )}

        {correctedProof !== null && correctionFactor !== null && (
          <div className="bg-accent/[0.06] border border-accent/20 rounded-md p-3 space-y-2">
            <div>
              <span className="text-[10px] text-white/30 uppercase tracking-wider">
                Correction Factor
              </span>
              <p className="text-sm text-white/70 font-mono">
                {correctionFactor >= 0 ? '+' : ''}
                {correctionFactor.toFixed(4)}
              </p>
            </div>
            <div>
              <span className="text-[10px] text-white/30 uppercase tracking-wider">
                Corrected Proof
              </span>
              <p className="text-lg font-semibold text-accent">
                {correctedProof.toFixed(2)}°
              </p>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}
