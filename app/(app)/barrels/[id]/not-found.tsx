import Link from 'next/link'

export default function BarrelNotFound() {
  return (
    <div className="text-center py-16">
      <h2 className="text-lg font-semibold text-white mb-2">Barrel not found</h2>
      <p className="text-white/40 text-sm mb-4">
        This barrel doesn&apos;t exist or you don&apos;t have access.
      </p>
      <Link
        href="/barrels"
        className="text-sm px-4 py-2 rounded-md bg-accent text-black font-medium hover:bg-accent/90 transition-colors inline-block"
      >
        Back to Barrels
      </Link>
    </div>
  )
}
