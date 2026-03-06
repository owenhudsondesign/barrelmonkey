/**
 * TTB Table 1 — Temperature Correction Factors for Proof
 *
 * Maps temperature (°F) to a correction factor applied to observed proof.
 * Source: TTB Gauging Manual, Table 1.
 *
 * At 60°F the factor is 0 (no correction needed).
 * Below 60°F the factor is positive (proof reads lower than actual).
 * Above 60°F the factor is negative (proof reads higher than actual).
 *
 * This is a simplified lookup — production distilleries use the full
 * 0.1°F-resolution table, but for our purposes integer-degree resolution
 * at the 100-proof midpoint is sufficient. The correction factor varies
 * slightly by proof level; this table uses the 100-proof column as a
 * reasonable approximation for spirits between 80-160 proof.
 */

// Correction factors per degree F, keyed by temperature
// corrected_proof = observed_proof + factor
const TABLE_1: Record<number, number> = {
  0: 6.8,
  1: 6.7,
  2: 6.6,
  3: 6.5,
  4: 6.3,
  5: 6.2,
  6: 6.1,
  7: 5.9,
  8: 5.8,
  9: 5.7,
  10: 5.5,
  11: 5.4,
  12: 5.3,
  13: 5.1,
  14: 5.0,
  15: 4.9,
  16: 4.7,
  17: 4.6,
  18: 4.5,
  19: 4.3,
  20: 4.2,
  21: 4.1,
  22: 3.9,
  23: 3.8,
  24: 3.7,
  25: 3.5,
  26: 3.4,
  27: 3.3,
  28: 3.1,
  29: 3.0,
  30: 2.9,
  31: 2.8,
  32: 2.6,
  33: 2.5,
  34: 2.4,
  35: 2.3,
  36: 2.1,
  37: 2.0,
  38: 1.9,
  39: 1.8,
  40: 1.7,
  41: 1.6,
  42: 1.5,
  43: 1.4,
  44: 1.3,
  45: 1.2,
  46: 1.1,
  47: 1.0,
  48: 0.9,
  49: 0.8,
  50: 0.7,
  51: 0.7,
  52: 0.6,
  53: 0.5,
  54: 0.4,
  55: 0.4,
  56: 0.3,
  57: 0.2,
  58: 0.2,
  59: 0.1,
  60: 0.0,
  61: -0.1,
  62: -0.2,
  63: -0.2,
  64: -0.3,
  65: -0.4,
  66: -0.4,
  67: -0.5,
  68: -0.6,
  69: -0.7,
  70: -0.7,
  71: -0.8,
  72: -0.9,
  73: -1.0,
  74: -1.0,
  75: -1.1,
  76: -1.2,
  77: -1.3,
  78: -1.3,
  79: -1.4,
  80: -1.5,
  81: -1.6,
  82: -1.7,
  83: -1.7,
  84: -1.8,
  85: -1.9,
  86: -2.0,
  87: -2.1,
  88: -2.2,
  89: -2.2,
  90: -2.3,
  91: -2.4,
  92: -2.5,
  93: -2.6,
  94: -2.7,
  95: -2.8,
  96: -2.9,
  97: -3.0,
  98: -3.1,
  99: -3.2,
  100: -3.3,
}

export const TTB_TABLE_1_MIN_TEMP = 0
export const TTB_TABLE_1_MAX_TEMP = 100

/**
 * Get the TTB Table 1 correction factor for a given temperature.
 * Linearly interpolates between integer degree entries.
 */
export function getCorrectionFactor(tempF: number): number | null {
  if (tempF < TTB_TABLE_1_MIN_TEMP || tempF > TTB_TABLE_1_MAX_TEMP) {
    return null
  }

  const lower = Math.floor(tempF)
  const upper = Math.ceil(tempF)

  if (lower === upper) {
    return TABLE_1[lower] ?? null
  }

  const lowerFactor = TABLE_1[lower]
  const upperFactor = TABLE_1[upper]

  if (lowerFactor == null || upperFactor == null) return null

  const fraction = tempF - lower
  return lowerFactor + (upperFactor - lowerFactor) * fraction
}
