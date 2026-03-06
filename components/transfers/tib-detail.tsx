import Link from 'next/link'
import { getTibRecordById } from '@/lib/queries/transfers'
import { SpiritBadge } from '@/components/ui/spirit-badge'
import { formatDate, formatProofGallons } from '@/lib/utils/format'

interface TibDetailProps {
  id: string
}

export async function TibDetail({ id }: TibDetailProps) {
  const record = await getTibRecordById(id)

  return (
    <div>
      <div className="mb-6">
        <Link
          href="/transfers"
          className="text-xs text-white/30 hover:text-white/50 transition-colors"
        >
          &larr; Back to Transfers
        </Link>
      </div>

      <div className="flex items-start justify-between mb-8">
        <div>
          <h1 className="text-2xl font-bold text-white">
            TIB {record.tib_number != null ? `#${record.tib_number}` : record.id.slice(0, 8)}
          </h1>
          <div className="flex items-center gap-3 mt-2">
            <SpiritBadge type={record.spirit_type} />
            <span className={`text-xs px-2 py-0.5 rounded-full border ${
              record.direction === 'inbound'
                ? 'bg-success/10 text-success border-success/20'
                : 'bg-transferred/10 text-transferred border-transferred/20'
            }`}>
              {record.direction}
            </span>
            {record.tib_type && (
              <span className="text-xs px-2 py-0.5 rounded-full bg-white/[0.06] text-white/50">
                {record.tib_type}
              </span>
            )}
          </div>
        </div>
      </div>

      <div className="grid gap-6 lg:grid-cols-2">
        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Transfer Info
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <DetailField label="Transfer Date" value={formatDate(record.transfer_date)} />
            <DetailField label="DSP Name" value={record.dsp_name} />
            <DetailField label="DSP Number" value={record.dsp_number} />
            <DetailField label="Lot Name" value={record.lot_name} />
            <DetailField label="Ref #" value={record.ref_number} />
            <DetailField label="PO #" value={record.po_number} />
            <DetailField label="Containers" value={record.container_ct?.toString()} />
            <DetailField label="Form 5100.16" value={record.form_5100_16} />
          </dl>
        </div>

        <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
          <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
            Quantities
          </h2>
          <dl className="grid grid-cols-2 gap-4 text-sm">
            <DetailField label="Total PG" value={formatProofGallons(record.total_pg)} />
            <DetailField label="Total WG" value={record.total_wg != null ? `${record.total_wg.toFixed(2)} WG` : undefined} />
            <DetailField label="Proof" value={record.pf != null ? `${record.pf.toFixed(1)} PF` : undefined} />
          </dl>
        </div>

        {record.notes && (
          <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
            <h2 className="text-sm font-semibold text-white/60 uppercase tracking-wider mb-4">
              Notes
            </h2>
            <p className="text-sm text-white/60 whitespace-pre-wrap">{record.notes}</p>
          </div>
        )}
      </div>

      {record.tib_barrels.length > 0 && (
        <div className="mt-8">
          <h2 className="text-lg font-semibold text-white mb-4">Barrels</h2>
          <div className="rounded-lg border border-white/10 overflow-hidden">
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
                  <th className="px-4 py-3 font-medium">Barrel</th>
                  <th className="px-4 py-3 font-medium">Proof Gal</th>
                  <th className="px-4 py-3 font-medium">Wine Gal</th>
                  <th className="px-4 py-3 font-medium">Proof</th>
                </tr>
              </thead>
              <tbody>
                {record.tib_barrels.map((tb) => (
                  <tr key={tb.id} className="border-b border-white/[0.04]">
                    <td className="px-4 py-3">
                      {tb.barrel ? (
                        <Link
                          href={`/barrels/${tb.barrel.id}`}
                          className="text-accent hover:underline"
                        >
                          {tb.barrel.barrel_number}
                        </Link>
                      ) : '—'}
                    </td>
                    <td className="px-4 py-3 text-white/60 font-mono">
                      {formatProofGallons(tb.proof_gal)}
                    </td>
                    <td className="px-4 py-3 text-white/60 font-mono">
                      {tb.wine_gal != null ? `${tb.wine_gal.toFixed(2)} WG` : '—'}
                    </td>
                    <td className="px-4 py-3 text-white/60">
                      {tb.proof != null ? `${tb.proof.toFixed(1)} PF` : '—'}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}
    </div>
  )
}

function DetailField({ label, value }: { label: string; value?: string | null }) {
  return (
    <div>
      <dt className="text-white/30 text-xs">{label}</dt>
      <dd className="text-white/80 mt-0.5">{value ?? '—'}</dd>
    </div>
  )
}
