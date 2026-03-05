export default function BarrelsLoading() {
  return (
    <div>
      <div className="h-8 w-32 bg-white/[0.06] rounded animate-pulse mb-6" />
      <div className="h-10 bg-white/[0.04] rounded-md mb-4 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 10 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
