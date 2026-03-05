'use client'

import { IMPORT_TYPES, type ImportType } from '@/lib/import/parsers'

interface StepSelectTypeProps {
  completedTypes: ImportType[]
  onSelect: (type: ImportType) => void
}

export function StepSelectType({ completedTypes, onSelect }: StepSelectTypeProps) {
  return (
    <div className="space-y-3">
      {IMPORT_TYPES.map((type) => {
        const isComplete = completedTypes.includes(type.id)
        const isBlocked = type.requiresBarrels && !completedTypes.includes('barrel_stock')

        return (
          <button
            key={type.id}
            onClick={() => onSelect(type.id)}
            disabled={isBlocked}
            className={`w-full text-left p-4 rounded-lg border transition-colors ${
              isComplete
                ? 'border-green-500/30 bg-green-500/[0.04]'
                : isBlocked
                  ? 'border-white/5 bg-white/[0.01] opacity-40 cursor-not-allowed'
                  : 'border-white/10 bg-white/[0.02] hover:border-accent/30 hover:bg-accent/[0.03]'
            }`}
          >
            <div className="flex items-center gap-3">
              <div className={`w-7 h-7 rounded-full flex items-center justify-center text-xs font-bold ${
                isComplete
                  ? 'bg-green-500/20 text-green-400'
                  : 'bg-white/[0.06] text-white/40'
              }`}>
                {isComplete ? (
                  <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                ) : (
                  type.order
                )}
              </div>
              <div className="flex-1">
                <div className="text-sm font-medium text-white">{type.label}</div>
                <div className="text-xs text-white/40 mt-0.5">{type.description}</div>
              </div>
              {isBlocked && (
                <span className="text-[10px] text-white/20 uppercase tracking-wider">
                  Import barrels first
                </span>
              )}
            </div>
          </button>
        )
      })}
    </div>
  )
}
