// Validation rules for WS CSV imports

export interface ValidationWarning {
  row: number
  field: string
  message: string
  severity: 'warning' | 'error'
}

// WS placeholder detection
const WS_PLACEHOLDER_PG = 65.72
const WS_PLACEHOLDER_PROOF = 124.0

export function isPlaceholderPG(value: number | null | undefined): boolean {
  if (value == null) return false
  return Math.abs(value - WS_PLACEHOLDER_PG) < 0.02
}

export function isPlaceholderProof(value: number | null | undefined): boolean {
  if (value == null) return false
  return Math.abs(value - WS_PLACEHOLDER_PROOF) < 0.15
}

export function isOldFormatBarrelNumber(barrelNumber: string): boolean {
  const num = parseInt(barrelNumber, 10)
  return num >= 10000 && !isNaN(num)
}

export function validateBarrelStockRow(
  row: Record<string, string>,
  index: number,
  existingBarrelNumbers: Set<string>
): ValidationWarning[] {
  const warnings: ValidationWarning[] = []
  const barrelNumber = row['Barrel Number']?.trim()

  if (!barrelNumber) {
    warnings.push({ row: index, field: 'Barrel Number', message: 'Missing barrel number', severity: 'error' })
  } else if (existingBarrelNumbers.has(barrelNumber)) {
    warnings.push({ row: index, field: 'Barrel Number', message: `Duplicate barrel number: ${barrelNumber}`, severity: 'error' })
  }

  const fillPG = parseFloat(row['Fill PG'] ?? '')
  if (isPlaceholderPG(fillPG)) {
    warnings.push({
      row: index,
      field: 'Fill PG',
      message: `WS placeholder value (${fillPG}) — verify against your records`,
      severity: 'warning',
    })
  }

  const fillProof = parseFloat(row['Fill Proof'] ?? '')
  if (isPlaceholderProof(fillProof)) {
    warnings.push({
      row: index,
      field: 'Fill Proof',
      message: `WS placeholder value (${fillProof}) — verify against your records`,
      severity: 'warning',
    })
  }

  const spiritType = row['Spirit Type']?.trim().toLowerCase()
  const validTypes = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other']
  if (spiritType && !validTypes.includes(spiritType)) {
    warnings.push({ row: index, field: 'Spirit Type', message: `Unknown spirit type: "${spiritType}"`, severity: 'warning' })
  }

  const status = row['Status']?.trim().toLowerCase()
  const validStatuses = ['aging', 'dumped', 'empty', 'transferred']
  if (status && !validStatuses.includes(status)) {
    warnings.push({ row: index, field: 'Status', message: `Unknown status: "${status}"`, severity: 'warning' })
  }

  return warnings
}

export function validateFillLogRow(
  row: Record<string, string>,
  index: number,
  existingBarrelNumbers: Set<string>
): ValidationWarning[] {
  const warnings: ValidationWarning[] = []
  const barrelNumber = row['Barrel Number']?.trim()

  if (!barrelNumber) {
    warnings.push({ row: index, field: 'Barrel Number', message: 'Missing barrel number', severity: 'error' })
  } else if (!existingBarrelNumbers.has(barrelNumber)) {
    warnings.push({ row: index, field: 'Barrel Number', message: `Barrel ${barrelNumber} not found — import Barrel Stock first`, severity: 'error' })
  }

  return warnings
}

export function validateDumpLogRow(
  row: Record<string, string>,
  index: number
): ValidationWarning[] {
  const warnings: ValidationWarning[] = []

  const qty = parseInt(row['Qty (barrels)'] ?? '', 10)
  const totalOPG = parseFloat(row['Total OPG'] ?? '')

  if (qty && totalOPG && Math.abs(totalOPG - qty * WS_PLACEHOLDER_PG) < 0.1) {
    warnings.push({
      row: index,
      field: 'Total OPG',
      message: `Placeholder math detected (${qty} × 65.72 = ${(qty * WS_PLACEHOLDER_PG).toFixed(2)}) — not real data`,
      severity: 'warning',
    })
  }

  const pctLoss = parseFloat(row['Pct Loss'] ?? '')
  if (pctLoss === 100) {
    warnings.push({
      row: index,
      field: 'Pct Loss',
      message: '100% loss — likely an empty/leaker being cleared (valid)',
      severity: 'warning',
    })
  }

  return warnings
}

export function validateFermentationRow(
  row: Record<string, string>,
  index: number
): ValidationWarning[] {
  const warnings: ValidationWarning[] = []
  const fermenter = row['Fermenter']?.trim()

  if (fermenter === 'ArnoldPotStill') {
    warnings.push({
      row: index,
      field: 'Fermenter',
      message: '"ArnoldPotStill" is a WS data artifact — will map to existing fermenter entry',
      severity: 'warning',
    })
  }

  return warnings
}

export function countPlaceholderRows(rows: Record<string, string>[]): number {
  return rows.filter((row) => {
    const pg = parseFloat(row['Fill PG'] ?? '')
    const proof = parseFloat(row['Fill Proof'] ?? '')
    return isPlaceholderPG(pg) || isPlaceholderProof(proof)
  }).length
}
