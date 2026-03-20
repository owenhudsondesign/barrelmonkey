'use client'

import { useState } from 'react'

export function DilutionCalc() {
  const [currentProof, setCurrentProof] = useState('')
  const [currentVolume, setCurrentVolume] = useState('')
  const [targetProof, setTargetProof] = useState('')

  const proof = parseFloat(currentProof)
  const volume = parseFloat(currentVolume)
  const target = parseFloat(targetProof)

  const hasValidInput =
    !isNaN(proof) && proof > 0 && !isNaN(volume) && volume > 0 && !isNaN(target) && target > 0
  const targetTooHigh = hasValidInput && target >= proof
  const waterToAdd = hasValidInput && !targetTooHigh ? volume * (proof / target - 1) : null

  return (
    <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5">
      <h2 className="text-sm font-semibold text-white/50 uppercase tracking-wider mb-4">
        Dilution
      </h2>

      <div className="space-y-4">
        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            Current Proof
          </label>
          <input
            type="number"
            step="0.1"
            min="0"
            placeholder="e.g. 130"
            value={currentProof}
            onChange={(e) => setCurrentProof(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            Current Volume (gal)
          </label>
          <input
            type="number"
            step="0.01"
            min="0"
            placeholder="e.g. 53"
            value={currentVolume}
            onChange={(e) => setCurrentVolume(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        <div>
          <label className="text-[10px] text-white/30 uppercase tracking-wider mb-1 block">
            Target Proof
          </label>
          <input
            type="number"
            step="0.1"
            min="0"
            placeholder="e.g. 80"
            value={targetProof}
            onChange={(e) => setTargetProof(e.target.value)}
            className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2 text-sm text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
          />
        </div>

        {targetTooHigh && (
          <p className="text-xs text-red-400">
            Target proof must be less than current proof.
          </p>
        )}

        {waterToAdd !== null && (
          <div className="bg-accent/[0.06] border border-accent/20 rounded-md p-3 space-y-2">
            <div>
              <span className="text-[10px] text-white/30 uppercase tracking-wider">
                Water to Add
              </span>
              <p className="text-lg font-semibold text-accent">
                {waterToAdd.toFixed(2)} gal
              </p>
            </div>
            <div>
              <span className="text-[10px] text-white/30 uppercase tracking-wider">
                Final Volume
              </span>
              <p className="text-sm text-white/70">
                {(volume + waterToAdd).toFixed(2)} gal
              </p>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}
