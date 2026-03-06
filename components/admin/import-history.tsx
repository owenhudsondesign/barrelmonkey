import { getImportHistory } from '@/lib/queries/admin'
import { formatDateTime } from '@/lib/utils/format'

export async function ImportHistory() {
  const imports = await getImportHistory()

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{imports.length} imports</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Type</th>
              <th className="px-4 py-3 font-medium">File</th>
              <th className="px-4 py-3 font-medium">Rows</th>
              <th className="px-4 py-3 font-medium">Success</th>
              <th className="px-4 py-3 font-medium">Errors</th>
              <th className="px-4 py-3 font-medium">By</th>
              <th className="px-4 py-3 font-medium">Date</th>
            </tr>
          </thead>
          <tbody>
            {imports.map((row) => (
              <tr
                key={row.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-white/80 capitalize">{row.import_type}</td>
                <td className="px-4 py-3 text-white/60 text-xs max-w-[200px] truncate">
                  {row.filename}
                </td>
                <td className="px-4 py-3 text-white/60">{row.row_count ?? '—'}</td>
                <td className="px-4 py-3 text-success">{row.success_count ?? '—'}</td>
                <td className="px-4 py-3">
                  {row.error_count != null && row.error_count > 0 ? (
                    <span className="text-error">{row.error_count}</span>
                  ) : (
                    <span className="text-white/40">{row.error_count ?? '—'}</span>
                  )}
                </td>
                <td className="px-4 py-3 text-white/60 text-xs">
                  {row.imported_by_user?.full_name ?? '—'}
                </td>
                <td className="px-4 py-3 text-white/60 text-xs">
                  {formatDateTime(row.created_at)}
                </td>
              </tr>
            ))}
            {imports.length === 0 && (
              <tr>
                <td colSpan={7} className="px-4 py-8 text-center text-white/30">
                  No imports found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  )
}
