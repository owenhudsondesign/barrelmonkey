'use client'

import type { ImportType } from '@/lib/import/parsers'
import type { ValidationWarning } from '@/lib/import/validators'
import {
  validateBarrelStockRow,
  validateFillLogRow,
  validateDumpLogRow,
  validateFermentationRow,
  countPlaceholderRows,
} from '@/lib/import/validators'
import { useMemo } from 'react'

interface StepReviewProps {
  importType: ImportType
  rawRows: Record<string, string>[]
  filename: string
  onConfirm: () => void
  onBack: () => void
}

export function StepReview({ importType, rawRows, filename, onConfirm, onBack }: StepReviewProps) {
  const { warnings, errors, placeholderCount } = useMemo(() => {
    const allWarnings: ValidationWarning[] = []
    const existingNumbers = new Set<string>()

    for (let i = 0; i < rawRows.length; i++) {
      const row = rawRows[i]
      let rowWarnings: ValidationWarning[] = []

      switch (importType) {
        case 'barrel_stock':
          rowWarnings = validateBarrelStockRow(row, i, existingNumbers)
          existingNumbers.add(row['Barrel Number']?.trim() ?? '')
          break
        case 'fill_logs':
          rowWarnings = validateFillLogRow(row, i, existingNumbers)
          break
        case 'dump_logs':
          rowWarnings = validateDumpLogRow(row, i)
          break
        case 'fermentation':
          rowWarnings = validateFermentationRow(row, i)
          break
        default:
          break
      }

      allWarnings.push(...rowWarnings)
    }

    const errorsOnly = allWarnings.filter((w) => w.severity === 'error')
    const warningsOnly = allWarnings.filter((w) => w.severity === 'warning')
    const placeholder = importType === 'barrel_stock' ? countPlaceholderRows(rawRows) : 0

    return { warnings: warningsOnly, errors: errorsOnly, placeholderCount: placeholder }
  }, [importType, rawRows])

  const columns = Object.keys(rawRows[0] ?? {})
  const previewRows = rawRows.slice(0, 20)

  return (
    <div>
      <div className="flex items-center gap-3 mb-6">
        <button onClick={onBack} className="text-white/40 hover:text-white/60 transition-colors">
          <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
          </svg>
        </button>
        <div>
          <h2 className="text-lg font-semibold text-white">Review Import</h2>
          <p className="text-xs text-white/40">{filename} — {rawRows.length} rows</p>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-3 gap-4 mb-6">
        <div className="rounded-lg border border-white/10 bg-white/[0.02] p-4">
          <div className="text-2xl font-bold text-white">{rawRows.length}</div>
          <div className="text-xs text-white/40 mt-0.5">Total rows</div>
        </div>
        <div className={`rounded-lg border p-4 ${
          warnings.length > 0 ? 'border-warning/30 bg-warning/[0.04]' : 'border-white/10 bg-white/[0.02]'
        }`}>
          <div className={`text-2xl font-bold ${warnings.length > 0 ? 'text-warning' : 'text-white'}`}>
            {warnings.length}
          </div>
          <div className="text-xs text-white/40 mt-0.5">Warnings</div>
        </div>
        <div className={`rounded-lg border p-4 ${
          errors.length > 0 ? 'border-error/30 bg-error/[0.04]' : 'border-white/10 bg-white/[0.02]'
        }`}>
          <div className={`text-2xl font-bold ${errors.length > 0 ? 'text-error' : 'text-white'}`}>
            {errors.length}
          </div>
          <div className="text-xs text-white/40 mt-0.5">Errors</div>
        </div>
      </div>

      {/* Placeholder warning */}
      {placeholderCount > 0 && (
        <div className="mb-6 p-4 rounded-lg border border-warning/30 bg-warning/[0.04]">
          <div className="text-sm font-medium text-warning mb-1">WS Placeholder Values Detected</div>
          <p className="text-xs text-white/50">
            {placeholderCount} barrel{placeholderCount !== 1 ? 's have' : ' has'} WS default values for fill PG (65.72) and/or fill proof (124.0).
            These are Whiskey Systems placeholders — verify against your records before finalizing.
          </p>
        </div>
      )}

      {/* Warnings list */}
      {warnings.length > 0 && (
        <details className="mb-6">
          <summary className="text-sm text-warning cursor-pointer hover:text-warning/80">
            {warnings.length} warning{warnings.length !== 1 ? 's' : ''} — click to expand
          </summary>
          <div className="mt-2 space-y-1 max-h-48 overflow-y-auto">
            {warnings.map((w, i) => (
              <div key={i} className="text-xs text-white/40 py-1 px-2 bg-white/[0.02] rounded">
                Row {w.row + 1} [{w.field}]: {w.message}
              </div>
            ))}
          </div>
        </details>
      )}

      {/* Errors list */}
      {errors.length > 0 && (
        <details className="mb-6" open>
          <summary className="text-sm text-error cursor-pointer hover:text-error/80">
            {errors.length} error{errors.length !== 1 ? 's' : ''} — these rows will be skipped
          </summary>
          <div className="mt-2 space-y-1 max-h-48 overflow-y-auto">
            {errors.map((e, i) => (
              <div key={i} className="text-xs text-white/40 py-1 px-2 bg-error/[0.04] rounded">
                Row {e.row + 1} [{e.field}]: {e.message}
              </div>
            ))}
          </div>
        </details>
      )}

      {/* Preview table */}
      <div className="overflow-x-auto rounded-lg border border-white/10 mb-6">
        <table className="w-full text-xs">
          <thead>
            <tr className="border-b border-white/10 text-white/30 uppercase tracking-wider">
              <th className="px-3 py-2 text-left font-medium">#</th>
              {columns.slice(0, 8).map((col) => (
                <th key={col} className="px-3 py-2 text-left font-medium whitespace-nowrap">{col}</th>
              ))}
              {columns.length > 8 && <th className="px-3 py-2 text-left font-medium">...</th>}
            </tr>
          </thead>
          <tbody className="divide-y divide-white/[0.04]">
            {previewRows.map((row, i) => (
              <tr key={i} className="hover:bg-white/[0.02]">
                <td className="px-3 py-1.5 text-white/20">{i + 1}</td>
                {columns.slice(0, 8).map((col) => (
                  <td key={col} className="px-3 py-1.5 text-white/50 max-w-[150px] truncate">
                    {row[col] || '—'}
                  </td>
                ))}
                {columns.length > 8 && <td className="px-3 py-1.5 text-white/20">...</td>}
              </tr>
            ))}
          </tbody>
        </table>
        {rawRows.length > 20 && (
          <div className="px-3 py-2 text-xs text-white/20 border-t border-white/[0.04]">
            Showing first 20 of {rawRows.length} rows
          </div>
        )}
      </div>

      {/* Actions */}
      <div className="flex items-center gap-3">
        <button
          onClick={onConfirm}
          className="bg-accent text-black font-semibold text-sm px-6 py-2.5 rounded-md hover:bg-accent/90 transition-colors"
        >
          Import {rawRows.length - errors.length} rows
        </button>
        <button
          onClick={onBack}
          className="text-sm text-white/40 hover:text-white/60 transition-colors px-4 py-2.5"
        >
          Cancel
        </button>
      </div>
    </div>
  )
}
