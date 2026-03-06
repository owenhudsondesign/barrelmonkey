'use client'

import { useState, useMemo } from 'react'
import { correctProof } from '@/lib/utils/calculators'
import { TTB_TABLE_1_MIN_TEMP, TTB_TABLE_1_MAX_TEMP } from '@/lib/utils/ttb-tables'
import { CalculatorInput, CalculatorSection, ResultCard } from './calculator-shell'

export function ProofCorrection() {
  const [observedProof, setObservedProof] = useState('128.5')
  const [temperature, setTemperature] = useState('68')

  const result = useMemo(() => {
    const proof = parseFloat(observedProof)
    const temp = parseFloat(temperature)
    if (isNaN(proof) || isNaN(temp)) return null
    return correctProof(proof, temp)
  }, [observedProof, temperature])

  return (
    <CalculatorSection
      title="Proof Correction"
      description="Correct observed proof for temperature using TTB Table 1. Standard reference temperature is 60°F."
    >
      <div className="grid grid-cols-2 gap-4 mb-6">
        <CalculatorInput
          id="observed-proof"
          label="Observed Proof"
          value={observedProof}
          onChange={setObservedProof}
          unit="PF"
          placeholder="128.5"
          min={0}
          max={200}
        />
        <CalculatorInput
          id="temperature"
          label="Temperature"
          value={temperature}
          onChange={setTemperature}
          unit="°F"
          placeholder="68"
          min={TTB_TABLE_1_MIN_TEMP}
          max={TTB_TABLE_1_MAX_TEMP}
        />
      </div>

      {result && (
        <div className="space-y-4">
          <div className="grid grid-cols-2 gap-4">
            <ResultCard
              label="Corrected Proof"
              value={`${result.correctedProof.toFixed(1)} PF`}
              accent
            />
            <ResultCard
              label="Correction Factor"
              value={`${result.correctionFactor >= 0 ? '+' : ''}${result.correctionFactor.toFixed(1)}`}
            />
          </div>
          <div className="text-xs text-white/30 flex items-center gap-1.5">
            <div className="w-1.5 h-1.5 rounded-full bg-emerald-400" />
            TTB Table 1 applied at {result.temperatureF}°F
            {result.temperatureF === 60 && ' (no correction at standard temp)'}
          </div>
        </div>
      )}

      {!result && observedProof && temperature && (
        <div className="text-sm text-white/30 text-center py-4">
          Enter valid values to see results
        </div>
      )}
    </CalculatorSection>
  )
}
