import { describe, it, expect } from 'vitest'
import { correctProof, waterToAdd, wineGalToProofGal, proofGalToWineGal, gauge } from './calculators'

describe('correctProof', () => {
  it('returns no correction at 60°F', () => {
    const result = correctProof(128.5, 60)
    expect(result).not.toBeNull()
    expect(result!.correctedProof).toBe(128.5)
    expect(result!.correctionFactor).toBe(0)
  })

  it('adds correction below 60°F', () => {
    const result = correctProof(128.5, 50)
    expect(result).not.toBeNull()
    expect(result!.correctedProof).toBeGreaterThan(128.5)
    expect(result!.correctionFactor).toBeGreaterThan(0)
  })

  it('subtracts correction above 60°F', () => {
    const result = correctProof(128.5, 70)
    expect(result).not.toBeNull()
    expect(result!.correctedProof).toBeLessThan(128.5)
    expect(result!.correctionFactor).toBeLessThan(0)
  })

  it('returns null for out-of-range temperature', () => {
    expect(correctProof(128.5, -10)).toBeNull()
    expect(correctProof(128.5, 110)).toBeNull()
  })
})

describe('waterToAdd', () => {
  it('calculates water needed for dilution', () => {
    const result = waterToAdd(53, 130, 80)
    expect(result).not.toBeNull()
    expect(result!.waterToAdd).toBeGreaterThan(0)
    expect(result!.finalVolume).toBeGreaterThan(53)
  })

  it('returns null when target >= current proof', () => {
    expect(waterToAdd(53, 80, 130)).toBeNull()
    expect(waterToAdd(53, 80, 80)).toBeNull()
  })

  it('returns null for invalid inputs', () => {
    expect(waterToAdd(0, 130, 80)).toBeNull()
    expect(waterToAdd(53, 0, 80)).toBeNull()
    expect(waterToAdd(53, 130, 0)).toBeNull()
  })
})

describe('wineGalToProofGal', () => {
  it('converts WG to PG correctly', () => {
    const result = wineGalToProofGal(100, 100)
    expect(result.proofGallons).toBe(100)
  })

  it('handles proof above 100', () => {
    const result = wineGalToProofGal(100, 130)
    expect(result.proofGallons).toBe(130)
  })

  it('handles proof below 100', () => {
    const result = wineGalToProofGal(100, 80)
    expect(result.proofGallons).toBe(80)
  })
})

describe('proofGalToWineGal', () => {
  it('converts PG to WG correctly', () => {
    const result = proofGalToWineGal(100, 100)
    expect(result).not.toBeNull()
    expect(result!.wineGallons).toBe(100)
  })

  it('returns null for zero proof', () => {
    expect(proofGalToWineGal(100, 0)).toBeNull()
  })

  it('returns more WG than PG below 100 proof', () => {
    const result = proofGalToWineGal(80, 80)
    expect(result).not.toBeNull()
    expect(result!.wineGallons).toBe(100)
  })
})

describe('gauge', () => {
  it('computes PG from volume and proof', () => {
    const result = gauge(53, 130)
    expect(result).not.toBeNull()
    expect(result!.proofGallons).toBe(68.9)
    expect(result!.proof).toBe(130)
  })

  it('applies temperature correction when provided', () => {
    const withTemp = gauge(53, 130, 70)
    const withoutTemp = gauge(53, 130)
    expect(withTemp).not.toBeNull()
    expect(withoutTemp).not.toBeNull()
    expect(withTemp!.proofGallons).not.toBe(withoutTemp!.proofGallons)
  })

  it('returns null for invalid inputs', () => {
    expect(gauge(0, 130)).toBeNull()
    expect(gauge(53, 0)).toBeNull()
  })

  it('returns null for out-of-range temperature', () => {
    expect(gauge(53, 130, -10)).toBeNull()
  })
})
