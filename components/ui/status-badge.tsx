import type { BarrelStatus } from '@/lib/types/database'

const STATUS_STYLES: Record<BarrelStatus, string> = {
  aging: 'bg-success/10 text-success border-success/20',
  dumped: 'bg-warning/10 text-warning border-warning/20',
  empty: 'bg-white/5 text-white/40 border-white/10',
  transferred: 'bg-transferred/10 text-transferred border-transferred/20',
}

export function StatusBadge({ status }: { status: BarrelStatus }) {
  return (
    <span
      className={`inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded border ${STATUS_STYLES[status]}`}
    >
      {status}
    </span>
  )
}
