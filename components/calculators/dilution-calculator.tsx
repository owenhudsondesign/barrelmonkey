'use client'

import { useState, useMemo } from 'react'
import { waterToAdd } from '@/lib/utils/calculators'
import { CalculatorInput, CalculatorSection, ResultCard } from './calculator-shell'

export function DilutionCalculator() {
  const [volume, setVolume] = useState('53')
  const [currentProof, setCurrentProof] = useState('130')
  const [targetProof, setTargetProof] = useState('80')

  const result = useMemo(() => {
    const vol = parseFloat(volume)
    const current = parseFloat(currentProof)
    const target = parseFloat(targetProof)
    if (isNaN(vol) || isNaN(current) || isNaN(target)) return null
    return waterToAdd(vol, current, target)
  }, [volume, currentProof, targetProof])

  return (
    <CalculatorSection
      title="Dilution / Cut-to-Proof"
      description="Calculate how much water to add to reach a target proof."
    >
      <div className="grid grid-cols-3 gap-4 mb-6">
        <CalculatorInput
          id="current-volume"
          label="Current Volume"
          value={volume}
          onChange={setVolume}
          unit="gal"
          placeholder="53"
          min={0}
        />
        <CalculatorInput
          id="current-proof"
          label="Current Proof"
          value={currentProof}
          onChange={setCurrentProof}
          unit="PF"
          placeholder="130"
          min={0}
          max={200}
        />
        <CalculatorInput
          id="target-proof"
          label="Target Proof"
          value={targetProof}
          onChange={setTargetProof}
          unit="PF"
          placeholder="80"
          min={0}
          max={200}
        />
      </div>

      {result && (
        <div className="space-y-4">
          <div className="grid grid-cols-3 gap-4">
            <ResultCard
              label="Water to Add"
              value={`${result.waterToAdd.toFixed(2)} gal`}
              accent
            />
            <ResultCard
              label="Final Volume"
              value={`${result.finalVolume.toFixed(2)} gal`}
            />
            <ResultCard
              label="Target Proof"
              value={`${result.targetProof.toFixed(1)} PF`}
            />
          </div>
          <div className="text-xs text-white/30 flex items-center gap-1.5">
            <div className="w-1.5 h-1.5 rounded-full bg-amber-400" />
            Approximation — does not account for volume contraction
          </div>
        </div>
      )}

      {!result && volume && currentProof && targetProof && (
        <div className="text-sm text-white/30 text-center py-4">
          Target proof must be lower than current proof
        </div>
      )}
    </CalculatorSection>
  )
}
