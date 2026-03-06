import { getCorrectionFactor } from './ttb-tables'

export interface ProofCorrectionResult {
  correctedProof: number
  correctionFactor: number
  observedProof: number
  temperatureF: number
}

export interface DilutionResult {
  waterToAdd: number
  currentProof: number
  targetProof: number
  currentVolume: number
  finalVolume: number
}

export interface GallonConversionResult {
  wineGallons: number
  proofGallons: number
  proof: number
}

export interface GaugingResult {
  proofGallons: number
  wineGallons: number
  proof: number
}

/**
 * Correct observed proof for temperature using TTB Table 1.
 * Returns null if temperature is out of range.
 */
export function correctProof(
  observedProof: number,
  temperatureF: number
): ProofCorrectionResult | null {
  const factor = getCorrectionFactor(temperatureF)
  if (factor == null) return null

  return {
    correctedProof: Math.round((observedProof + factor) * 10) / 10,
    correctionFactor: Math.round(factor * 10) / 10,
    observedProof,
    temperatureF,
  }
}

/**
 * Calculate water needed to dilute spirits to a target proof.
 * Uses the formula: water = volume * (currentProof / targetProof - 1)
 *
 * This is an approximation. For precise work, use TTB tables for
 * volume contraction when mixing water and alcohol.
 */
export function waterToAdd(
  currentVolume: number,
  currentProof: number,
  targetProof: number
): DilutionResult | null {
  if (targetProof <= 0 || targetProof >= currentProof) return null
  if (currentVolume <= 0 || currentProof <= 0) return null

  const water = currentVolume * (currentProof / targetProof - 1)
  const finalVolume = currentVolume + water

  return {
    waterToAdd: Math.round(water * 100) / 100,
    currentProof,
    targetProof,
    currentVolume,
    finalVolume: Math.round(finalVolume * 100) / 100,
  }
}

/**
 * Convert wine gallons to proof gallons at a given proof.
 * PG = WG * (proof / 100)
 */
export function wineGalToProofGal(wineGallons: number, proof: number): GallonConversionResult {
  return {
    wineGallons,
    proofGallons: Math.round((wineGallons * proof) / 100 * 100) / 100,
    proof,
  }
}

/**
 * Convert proof gallons to wine gallons at a given proof.
 * WG = PG / (proof / 100)
 */
export function proofGalToWineGal(proofGallons: number, proof: number): GallonConversionResult | null {
  if (proof <= 0) return null

  return {
    wineGallons: Math.round((proofGallons / proof) * 100 * 100) / 100,
    proofGallons,
    proof,
  }
}

/**
 * Gauge a container: given proof and volume, compute proof gallons.
 * Optionally applies temperature correction.
 */
export function gauge(
  volume: number,
  observedProof: number,
  temperatureF?: number
): GaugingResult | null {
  if (volume <= 0 || observedProof <= 0) return null

  let proof = observedProof

  if (temperatureF != null) {
    const corrected = correctProof(observedProof, temperatureF)
    if (!corrected) return null
    proof = corrected.correctedProof
  }

  const proofGallons = Math.round((volume * proof) / 100 * 100) / 100

  return {
    proofGallons,
    wineGallons: volume,
    proof,
  }
}
