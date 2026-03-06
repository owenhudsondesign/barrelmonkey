interface StatCardProps {
  label: string
  value: string | number
  accent?: boolean
}

export function StatCard({ label, value, accent = false }: StatCardProps) {
  return (
    <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-5">
      <div className={`text-2xl font-bold ${accent ? 'text-accent' : 'text-white'}`}>
        {typeof value === 'number' ? value.toLocaleString() : value}
      </div>
      <div className="text-xs text-white/40 mt-1">{label}</div>
    </div>
  )
}
