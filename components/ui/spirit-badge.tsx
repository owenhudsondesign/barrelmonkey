import type { SpiritType } from '@/lib/types/database'

export function SpiritBadge({ type }: { type: SpiritType }) {
  return (
    <span className="inline-flex items-center text-[11px] font-medium uppercase tracking-wider px-2 py-0.5 rounded bg-white/[0.06] text-white/50 border border-white/10">
      {type}
    </span>
  )
}
