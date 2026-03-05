'use client'

import { useState } from 'react'
import type { ImportType } from '@/lib/import/parsers'
import {
  parseBarrelStockRow,
  parseFillLogRow,
  parseDumpLogRow,
  parseFermentationRow,
  parseDistillationRow,
} from '@/lib/import/parsers'
import {
  importBarrelStock,
  importFillLogs,
  importDumpLogs,
  importFermentationLogs,
  importDistillationRuns,
} from '@/app/(app)/admin/import/actions'
import { StepSelectType } from './step-select-type'
import { StepUpload } from './step-upload'
import { StepReview } from './step-review'
import { StepConfirm } from './step-confirm'

type WizardStep = 'select' | 'upload' | 'review' | 'confirm'

interface ImportResult {
  success: number
  errors: { row: number; field: string; message: string }[]
  warnings: string[]
}

export function ImportWizard() {
  const [step, setStep] = useState<WizardStep>('select')
  const [selectedType, setSelectedType] = useState<ImportType | null>(null)
  const [rawRows, setRawRows] = useState<Record<string, string>[]>([])
  const [filename, setFilename] = useState('')
  const [completedTypes, setCompletedTypes] = useState<ImportType[]>([])
  const [importing, setImporting] = useState(false)
  const [result, setResult] = useState<ImportResult | null>(null)
  const [importError, setImportError] = useState<string | null>(null)

  function handleSelectType(type: ImportType) {
    setSelectedType(type)
    setStep('upload')
    setResult(null)
    setImportError(null)
  }

  function handleParsed(rows: Record<string, string>[], name: string) {
    setRawRows(rows)
    setFilename(name)
    setStep('review')
  }

  async function handleConfirm() {
    if (!selectedType) return

    setStep('confirm')
    setImporting(true)
    setResult(null)
    setImportError(null)

    try {
      let importResult: ImportResult

      switch (selectedType) {
        case 'barrel_stock': {
          const parsed = rawRows.map(parseBarrelStockRow)
          importResult = await importBarrelStock(parsed, filename)
          break
        }
        case 'fill_logs': {
          const parsed = rawRows.map(parseFillLogRow)
          importResult = await importFillLogs(parsed, filename)
          break
        }
        case 'dump_logs': {
          const parsed = rawRows.map(parseDumpLogRow)
          importResult = await importDumpLogs(parsed, filename)
          break
        }
        case 'fermentation': {
          const parsed = rawRows.map(parseFermentationRow)
          importResult = await importFermentationLogs(parsed, filename)
          break
        }
        case 'distillation': {
          const parsed = rawRows.map(parseDistillationRow)
          importResult = await importDistillationRuns(parsed, filename)
          break
        }
        default:
          throw new Error(`Unknown import type: ${selectedType}`)
      }

      setResult(importResult)

      if (importResult.success > 0) {
        setCompletedTypes((prev) =>
          prev.includes(selectedType) ? prev : [...prev, selectedType]
        )
      }
    } catch (err) {
      setImportError(err instanceof Error ? err.message : 'An unexpected error occurred')
    } finally {
      setImporting(false)
    }
  }

  function handleDone() {
    setStep('select')
    setSelectedType(null)
    setRawRows([])
    setFilename('')
    setResult(null)
    setImportError(null)
  }

  // Progress indicator
  const steps = ['Select', 'Upload', 'Review', 'Import']
  const currentIdx = ['select', 'upload', 'review', 'confirm'].indexOf(step)

  return (
    <div>
      {/* Progress bar */}
      {step !== 'select' && (
        <div className="flex items-center gap-2 mb-8">
          {steps.map((label, i) => (
            <div key={label} className="flex items-center gap-2">
              <div className={`flex items-center gap-1.5 ${
                i <= currentIdx ? 'text-accent' : 'text-white/20'
              }`}>
                <div className={`w-6 h-6 rounded-full flex items-center justify-center text-[10px] font-bold ${
                  i < currentIdx
                    ? 'bg-accent/20 text-accent'
                    : i === currentIdx
                      ? 'bg-accent text-black'
                      : 'bg-white/[0.06] text-white/20'
                }`}>
                  {i < currentIdx ? (
                    <svg className="w-3 h-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M5 13l4 4L19 7" />
                    </svg>
                  ) : (
                    i + 1
                  )}
                </div>
                <span className="text-xs font-medium">{label}</span>
              </div>
              {i < steps.length - 1 && (
                <div className={`w-8 h-px ${i < currentIdx ? 'bg-accent/30' : 'bg-white/10'}`} />
              )}
            </div>
          ))}
        </div>
      )}

      {/* Step content */}
      {step === 'select' && (
        <StepSelectType
          completedTypes={completedTypes}
          onSelect={handleSelectType}
        />
      )}

      {step === 'upload' && selectedType && (
        <StepUpload
          importType={selectedType}
          onParsed={handleParsed}
          onBack={() => setStep('select')}
        />
      )}

      {step === 'review' && selectedType && (
        <StepReview
          importType={selectedType}
          rawRows={rawRows}
          filename={filename}
          onConfirm={handleConfirm}
          onBack={() => setStep('upload')}
        />
      )}

      {step === 'confirm' && (
        <StepConfirm
          importing={importing}
          result={result}
          error={importError}
          onDone={handleDone}
        />
      )}
    </div>
  )
}
