import Link from 'next/link'
import { getRecentActivity } from '@/lib/queries/log'
import { formatDateTime, formatProofGallons } from '@/lib/utils/format'

const EVENT_BADGE_STYLES: Record<string, { bg: string; text: string }> = {
  fill: { bg: 'bg-accent/10', text: 'text-accent' },
  dump: { bg: 'bg-error/10', text: 'text-error' },
  move: { bg: 'bg-transferred/10', text: 'text-transferred' },
  proof_reading: { bg: 'bg-white/[0.06]', text: 'text-white/70' },
  tib_out: { bg: 'bg-transferred/10', text: 'text-transferred' },
  tib_in: { bg: 'bg-transferred/10', text: 'text-transferred' },
  adjustment: { bg: 'bg-warning/10', text: 'text-warning' },
  inspection: { bg: 'bg-white/[0.06]', text: 'text-white/50' },
  filtering: { bg: 'bg-white/[0.06]', text: 'text-white/60' },
  destruction: { bg: 'bg-error/10', text: 'text-error' },
}

const EVENT_LABELS: Record<string, string> = {
  fill: 'Fill',
  dump: 'Dump',
  move: 'Move',
  proof_reading: 'Proof Reading',
  tib_out: 'TIB Out',
  tib_in: 'TIB In',
  adjustment: 'Adjustment',
  inspection: 'Inspection',
  filtering: 'Filtering',
  destruction: 'Destruction',
}

const DEFAULT_BADGE = { bg: 'bg-white/[0.06]', text: 'text-white/50' }

function truncateNotes(notes: string | null, maxLen = 60): string {
  if (!notes) return '—'
  return notes.length > maxLen ? `${notes.slice(0, maxLen)}...` : notes
}

interface ActivityFeedProps {
  searchParams: Record<string, string | undefined>
}

export async function ActivityFeed({ searchParams }: ActivityFeedProps) {
  const eventType = searchParams.eventType ?? undefined
  const entries = await getRecentActivity({ eventType })

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{entries.length} events</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Date</th>
              <th className="px-4 py-3 font-medium">Type</th>
              <th className="px-4 py-3 font-medium">Source</th>
              <th className="px-4 py-3 font-medium">PG</th>
              <th className="px-4 py-3 font-medium">Notes</th>
              <th className="px-4 py-3 font-medium">Logged By</th>
            </tr>
          </thead>
          <tbody>
            {entries.map((entry) => {
              const badge = EVENT_BADGE_STYLES[entry.event_type] ?? DEFAULT_BADGE
              const label = EVENT_LABELS[entry.event_type] ?? entry.event_type

              return (
                <tr
                  key={`${entry.source_type}-${entry.id}`}
                  className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
                >
                  <td className="px-4 py-3 text-white/60 whitespace-nowrap">
                    {formatDateTime(entry.event_date)}
                  </td>
                  <td className="px-4 py-3">
                    <span
                      className={`inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded border border-white/10 ${badge.bg} ${badge.text}`}
                    >
                      {label}
                    </span>
                  </td>
                  <td className="px-4 py-3">
                    {entry.source_type === 'barrel' ? (
                      <Link
                        href={`/barrels/${entry.source_id}`}
                        className="text-accent hover:text-accent/80 transition-colors"
                      >
                        {entry.source_label}
                      </Link>
                    ) : (
                      <span className="text-white/60">{entry.source_label}</span>
                    )}
                  </td>
                  <td className="px-4 py-3 text-white/60 font-mono">
                    {entry.proof_gal != null ? formatProofGallons(entry.proof_gal) : '—'}
                  </td>
                  <td className="px-4 py-3 text-white/40 max-w-[200px] truncate">
                    {truncateNotes(entry.notes)}
                  </td>
                  <td className="px-4 py-3 text-white/40">
                    {entry.logged_by_name ?? '—'}
                  </td>
                </tr>
              )
            })}
            {entries.length === 0 && (
              <tr>
                <td colSpan={6} className="px-4 py-8 text-center text-white/30">
                  No activity recorded yet.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
