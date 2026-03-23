import Link from 'next/link'
import { getFermenters } from '@/lib/queries/fermenters'
import { formatGallons } from '@/lib/utils/format'

export async function FermenterList() {
  const { fermenters, total } = await getFermenters()

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{total} active fermenters</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Name</th>
              <th className="px-4 py-3 font-medium">Capacity</th>
              <th className="px-4 py-3 font-medium">Status</th>
              <th className="px-4 py-3 font-medium">Notes</th>
            </tr>
          </thead>
          <tbody>
            {fermenters.map((fm) => (
              <tr
                key={fm.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3">
                  <Link
                    href={`/production/fermenters/${fm.id}`}
                    className="text-white/80 hover:text-accent font-medium transition-colors"
                  >
                    {fm.name}
                  </Link>
                </td>
                <td className="px-4 py-3 text-white/60 font-mono">
                  {formatGallons(fm.capacity_gal)}
                </td>
                <td className="px-4 py-3">
                  <span className="inline-flex items-center text-[11px] font-medium capitalize px-2 py-0.5 rounded border bg-green-500/10 text-green-400 border-green-500/20">
                    active
                  </span>
                </td>
                <td className="px-4 py-3 text-white/40 truncate max-w-[300px]">
                  {fm.notes ?? '—'}
                </td>
              </tr>
            ))}
            {fermenters.length === 0 && (
              <tr>
                <td colSpan={4} className="px-4 py-8 text-center text-white/30">
                  No active fermenters found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
