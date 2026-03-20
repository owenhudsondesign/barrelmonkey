import { formatDateTime } from '@/lib/utils/format'

interface ProvenanceTimelineEventProps {
  type: 'batching' | 'bottling'
  title: string
  subtitle: string
  date: string
  isLast: boolean
}

const CONFIG = {
  batching: {
    color: 'text-amber-400',
    dotColor: 'bg-amber-400',
    label: 'BATCH',
  },
  bottling: {
    color: 'text-emerald-400',
    dotColor: 'bg-emerald-400',
    label: 'BOTTLE',
  },
} as const

export function ProvenanceTimelineEvent({
  type,
  title,
  subtitle,
  date,
  isLast,
}: ProvenanceTimelineEventProps) {
  const config = CONFIG[type]

  return (
    <div className="relative flex gap-4 pb-6">
      {/* Dot — diamond shape for provenance events */}
      <div className="relative z-10 mt-1.5">
        <div
          className={`w-[9px] h-[9px] rotate-45 ring-2 ring-[#0a0a0a] ${config.dotColor}`}
        />
      </div>

      {/* Content */}
      <div className="flex-1 min-w-0">
        <div className="flex items-center gap-2 mb-0.5">
          <span
            className={`text-[10px] font-semibold uppercase tracking-wider px-1.5 py-0.5 rounded ${config.color} bg-white/[0.04]`}
          >
            {config.label}
          </span>
          <span className="text-[11px] text-white/20">{formatDateTime(date)}</span>
        </div>
        <p className={`text-sm font-medium ${config.color}`}>{title}</p>
        {subtitle && (
          <p className="text-xs text-white/40 mt-0.5">{subtitle}</p>
        )}
        {isLast && (
          <div className="mt-2 text-[10px] text-white/20 uppercase tracking-wider">
            End of provenance chain
          </div>
        )}
      </div>
    </div>
  )
}
