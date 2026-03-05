'use client'

interface ImportResultData {
  success: number
  errors: { row: number; field: string; message: string }[]
  warnings: string[]
}

interface StepConfirmProps {
  importing: boolean
  result: ImportResultData | null
  error: string | null
  onDone: () => void
}

export function StepConfirm({ importing, result, error, onDone }: StepConfirmProps) {
  if (importing) {
    return (
      <div className="text-center py-12">
        <div className="w-12 h-12 rounded-full border-2 border-accent/30 border-t-accent animate-spin mx-auto mb-4" />
        <p className="text-white/60 text-sm">Importing data...</p>
        <p className="text-white/30 text-xs mt-1">This may take a moment for large files</p>
      </div>
    )
  }

  if (error) {
    return (
      <div className="text-center py-12">
        <div className="w-12 h-12 rounded-full bg-error/10 flex items-center justify-center mx-auto mb-4">
          <svg className="w-6 h-6 text-error" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
          </svg>
        </div>
        <h3 className="text-white font-semibold mb-1">Import Failed</h3>
        <p className="text-white/40 text-sm mb-6">{error}</p>
        <button
          onClick={onDone}
          className="bg-white/10 text-white text-sm px-6 py-2.5 rounded-md hover:bg-white/15 transition-colors"
        >
          Back to Import
        </button>
      </div>
    )
  }

  if (result) {
    const hasErrors = result.errors.length > 0

    return (
      <div className="text-center py-12">
        <div className={`w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4 ${
          hasErrors ? 'bg-warning/10' : 'bg-green-500/10'
        }`}>
          <svg className={`w-6 h-6 ${hasErrors ? 'text-warning' : 'text-green-400'}`} fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
          </svg>
        </div>
        <h3 className="text-white font-semibold mb-1">
          {hasErrors ? 'Import Complete with Errors' : 'Import Complete'}
        </h3>
        <p className="text-white/40 text-sm mb-2">
          {result.success} record{result.success !== 1 ? 's' : ''} imported successfully
          {hasErrors && `, ${result.errors.length} error${result.errors.length !== 1 ? 's' : ''}`}
        </p>

        {hasErrors && (
          <details className="text-left mt-4 mb-6 max-w-md mx-auto">
            <summary className="text-xs text-error cursor-pointer hover:text-error/80">
              View {result.errors.length} error{result.errors.length !== 1 ? 's' : ''}
            </summary>
            <div className="mt-2 space-y-1 max-h-48 overflow-y-auto">
              {result.errors.map((e, i) => (
                <div key={i} className="text-xs text-white/40 py-1 px-2 bg-error/[0.04] rounded">
                  Row {e.row + 1} [{e.field}]: {e.message}
                </div>
              ))}
            </div>
          </details>
        )}

        <button
          onClick={onDone}
          className="bg-accent text-black font-semibold text-sm px-6 py-2.5 rounded-md hover:bg-accent/90 transition-colors"
        >
          Done
        </button>
      </div>
    )
  }

  return null
}
