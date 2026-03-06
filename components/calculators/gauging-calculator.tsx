'use client'

import { useState, useMemo } from 'react'
import { gauge } from '@/lib/utils/calculators'
import { TTB_TABLE_1_MIN_TEMP, TTB_TABLE_1_MAX_TEMP } from '@/lib/utils/ttb-tables'
import { CalculatorInput, CalculatorSection, ResultCard } from './calculator-shell'

export function GaugingCalculator() {
  const [volume, setVolume] = useState('53')
  const [proof, setProof] = useState('128.5')
  const [temperature, setTemperature] = useState('')
  const [useTempCorrection, setUseTempCorrection] = useState(false)

  const result = useMemo(() => {
    const vol = parseFloat(volume)
    const pf = parseFloat(proof)
    if (isNaN(vol) || isNaN(pf)) return null

    const temp = useTempCorrection ? parseFloat(temperature) : undefined
    if (useTempCorrection && (isNaN(temp!) || temp == null)) return null

    return gauge(vol, pf, temp)
  }, [volume, proof, temperature, useTempCorrection])

  return (
    <CalculatorSection
      title="Gauging"
      description="Calculate proof gallons from volume and proof. Optionally apply temperature correction."
    >
      <div className="grid grid-cols-2 gap-4 mb-4">
        <CalculatorInput
          id="gauge-volume"
          label="Volume"
          value={volume}
          onChange={setVolume}
          unit="gal"
          placeholder="53"
          min={0}
        />
        <CalculatorInput
          id="gauge-proof"
          label="Observed Proof"
          value={proof}
          onChange={setProof}
          unit="PF"
          placeholder="128.5"
          min={0}
          max={200}
        />
      </div>

      <div className="mb-6">
        <label className="flex items-center gap-2 cursor-pointer mb-3">
          <input
            type="checkbox"
            checked={useTempCorrection}
            onChange={(e) => setUseTempCorrection(e.target.checked)}
            className="w-4 h-4 rounded border-white/20 bg-white/[0.06] text-accent focus:ring-accent/30"
          />
          <span className="text-xs text-white/50">Apply temperature correction</span>
        </label>

        {useTempCorrection && (
          <div className="w-1/2">
            <CalculatorInput
              id="gauge-temp"
              label="Temperature"
              value={temperature}
              onChange={setTemperature}
              unit="°F"
              placeholder="68"
              min={TTB_TABLE_1_MIN_TEMP}
              max={TTB_TABLE_1_MAX_TEMP}
            />
          </div>
        )}
      </div>

      {result && (
        <div className="space-y-4">
          <div className="grid grid-cols-3 gap-4">
            <ResultCard
              label="Proof Gallons"
              value={`${result.proofGallons.toFixed(2)} PG`}
              accent
            />
            <ResultCard
              label="Wine Gallons"
              value={`${result.wineGallons.toFixed(2)} WG`}
            />
            <ResultCard
              label={useTempCorrection ? 'Corrected Proof' : 'Proof'}
              value={`${result.proof.toFixed(1)} PF`}
            />
          </div>
          {useTempCorrection && (
            <div className="text-xs text-white/30 flex items-center gap-1.5">
              <div className="w-1.5 h-1.5 rounded-full bg-emerald-400" />
              Temperature-corrected via TTB Table 1
            </div>
          )}
        </div>
      )}
    </CalculatorSection>
  )
}
