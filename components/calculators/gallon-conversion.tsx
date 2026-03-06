'use client'

import { useState, useMemo } from 'react'
import { wineGalToProofGal, proofGalToWineGal } from '@/lib/utils/calculators'
import { CalculatorInput, CalculatorSection, ResultCard } from './calculator-shell'

type Direction = 'wg-to-pg' | 'pg-to-wg'

export function GallonConversion() {
  const [direction, setDirection] = useState<Direction>('wg-to-pg')
  const [gallons, setGallons] = useState('350')
  const [proof, setProof] = useState('130')

  const result = useMemo(() => {
    const gal = parseFloat(gallons)
    const pf = parseFloat(proof)
    if (isNaN(gal) || isNaN(pf)) return null

    if (direction === 'wg-to-pg') {
      return wineGalToProofGal(gal, pf)
    }
    return proofGalToWineGal(gal, pf)
  }, [gallons, proof, direction])

  return (
    <CalculatorSection
      title="Gallon Conversion"
      description="Convert between wine gallons (WG) and proof gallons (PG)."
    >
      <div className="flex gap-2 mb-6">
        <button
          onClick={() => setDirection('wg-to-pg')}
          className={`text-xs px-3 py-1.5 rounded transition-colors ${
            direction === 'wg-to-pg'
              ? 'bg-accent text-black font-semibold'
              : 'bg-white/[0.06] text-white/40 hover:text-white/60'
          }`}
        >
          WG → PG
        </button>
        <button
          onClick={() => setDirection('pg-to-wg')}
          className={`text-xs px-3 py-1.5 rounded transition-colors ${
            direction === 'pg-to-wg'
              ? 'bg-accent text-black font-semibold'
              : 'bg-white/[0.06] text-white/40 hover:text-white/60'
          }`}
        >
          PG → WG
        </button>
      </div>

      <div className="grid grid-cols-2 gap-4 mb-6">
        <CalculatorInput
          id="gallons-input"
          label={direction === 'wg-to-pg' ? 'Wine Gallons' : 'Proof Gallons'}
          value={gallons}
          onChange={setGallons}
          unit={direction === 'wg-to-pg' ? 'WG' : 'PG'}
          placeholder="350"
          min={0}
        />
        <CalculatorInput
          id="proof-input"
          label="Proof"
          value={proof}
          onChange={setProof}
          unit="PF"
          placeholder="130"
          min={0}
          max={200}
        />
      </div>

      {result && (
        <div className="grid grid-cols-3 gap-4">
          <ResultCard
            label="Wine Gallons"
            value={`${result.wineGallons.toFixed(2)} WG`}
            accent={direction === 'pg-to-wg'}
          />
          <ResultCard
            label="Proof Gallons"
            value={`${result.proofGallons.toFixed(2)} PG`}
            accent={direction === 'wg-to-pg'}
          />
          <ResultCard
            label="Proof"
            value={`${result.proof.toFixed(1)} PF`}
          />
        </div>
      )}
    </CalculatorSection>
  )
}
