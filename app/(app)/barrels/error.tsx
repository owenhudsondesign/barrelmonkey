'use client'

export default function BarrelsError({
  error,
  reset,
}: {
  error: Error & { digest?: string }
  reset: () => void
}) {
  return (
    <div className="text-center py-16">
      <h2 className="text-lg font-semibold text-white mb-2">Something went wrong</h2>
      <p className="text-white/40 text-sm mb-4">{error.message}</p>
      <button
        onClick={reset}
        className="text-sm px-4 py-2 rounded-md bg-accent text-black font-medium hover:bg-accent/90 transition-colors"
      >
        Try again
      </button>
    </div>
  )
}
