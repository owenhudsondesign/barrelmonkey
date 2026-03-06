'use client'

import { useState } from 'react'
import { LogBarrelEvent } from './log-barrel-event'

type LogAction = 'barrel_event' | null

const ACTIONS = [
  {
    id: 'barrel_event' as const,
    label: 'Barrel Event',
    description: 'Log a proof reading, move, or inspection',
    icon: (
      <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
      </svg>
    ),
  },
] as const

interface QuickLogPageProps {
  barrels: { id: string; barrel_number: string }[]
  rackhouses: { id: string; name: string }[]
}

export function QuickLogPage({ barrels, rackhouses }: QuickLogPageProps) {
  const [activeAction, setActiveAction] = useState<LogAction>(null)

  function handleSuccess() {
    // Stay on form for consecutive entries
  }

  return (
    <div>
      <div className="mb-8">
        <h1 className="text-2xl font-bold text-white">Quick Log</h1>
        <p className="text-sm text-white/40 mt-1">
          Fast entry for production floor operations
        </p>
      </div>

      {!activeAction ? (
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {ACTIONS.map(({ id, label, description, icon }) => (
            <button
              key={id}
              onClick={() => setActiveAction(id)}
              className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6 text-left hover:bg-white/[0.04] hover:border-white/[0.15] transition-all group"
            >
              <div className="text-accent/60 group-hover:text-accent transition-colors mb-3">
                {icon}
              </div>
              <div className="text-white font-medium">{label}</div>
              <div className="text-xs text-white/40 mt-1">{description}</div>
            </button>
          ))}
        </div>
      ) : (
        <div className="max-w-lg">
          <button
            onClick={() => setActiveAction(null)}
            className="text-xs text-white/30 hover:text-white/50 transition-colors mb-4"
          >
            &larr; Back to actions
          </button>

          {activeAction === 'barrel_event' && (
            <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
              <h2 className="text-lg font-semibold text-white mb-1">Log Barrel Event</h2>
              <p className="text-sm text-white/40 mb-6">
                Record a proof reading, barrel move, or inspection
              </p>
              <LogBarrelEvent
                barrels={barrels}
                rackhouses={rackhouses}
                onSuccess={handleSuccess}
              />
            </div>
          )}
        </div>
      )}
    </div>
  )
}
