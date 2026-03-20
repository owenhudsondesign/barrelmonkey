type StatCardColor = 'accent' | 'success' | 'warning' | 'error' | 'default'

interface StatCardProps {
  readonly label: string
  readonly value: string | number
  readonly subtitle?: string
  readonly color?: StatCardColor
}

const colorClasses: Record<StatCardColor, string> = {
  accent: 'text-accent',
  success: 'text-green-400',
  warning: 'text-amber-400',
  error: 'text-red-400',
  default: 'text-white',
}

export function StatCard({ label, value, subtitle, color = 'default' }: StatCardProps) {
  return (
    <div className="rounded-lg border border-white/10 bg-white/[0.02] p-5">
      <div className="text-[10px] text-white/30 uppercase tracking-wider">{label}</div>
      <div className={`text-2xl font-bold mt-1 ${colorClasses[color]}`}>{value}</div>
      {subtitle ? (
        <div className="text-xs text-white/30 mt-1">{subtitle}</div>
      ) : null}
    </div>
  )
}
