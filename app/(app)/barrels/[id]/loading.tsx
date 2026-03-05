export default function BarrelDetailLoading() {
  return (
    <div>
      <div className="h-4 w-20 bg-white/[0.04] rounded mb-4 animate-pulse" />
      <div className="h-10 w-48 bg-white/[0.06] rounded mb-2 animate-pulse" />
      <div className="h-4 w-64 bg-white/[0.04] rounded mb-8 animate-pulse" />
      <div className="grid md:grid-cols-2 gap-6 mb-8">
        <div className="h-48 rounded-lg border border-white/10 bg-white/[0.02] animate-pulse" />
        <div className="h-48 rounded-lg border border-white/10 bg-white/[0.02] animate-pulse" />
      </div>
      <div className="h-4 w-32 bg-white/[0.04] rounded mb-4 animate-pulse" />
      {Array.from({ length: 5 }).map((_, i) => (
        <div key={i} className="flex gap-4 mb-6">
          <div className="w-3 h-3 rounded-full bg-white/[0.06] animate-pulse mt-1" />
          <div className="flex-1">
            <div className="h-4 w-32 bg-white/[0.06] rounded mb-2 animate-pulse" />
            <div className="h-3 w-48 bg-white/[0.04] rounded animate-pulse" />
          </div>
        </div>
      ))}
    </div>
  )
}
