import { getEquipmentCounts } from '@/lib/queries/admin'

export async function EquipmentOverview() {
  const counts = await getEquipmentCounts()

  const items = [
    { label: 'Rackhouses', count: counts.rackhouses, href: '/admin?tab=equipment' },
    { label: 'Fermenters', count: counts.fermenters, href: '/admin?tab=equipment' },
    { label: 'Tanks', count: counts.tanks, href: '/tanks' },
  ]

  return (
    <div>
      <div className="grid gap-4 sm:grid-cols-3 mb-6">
        {items.map(({ label, count }) => (
          <div
            key={label}
            className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-5"
          >
            <div className="text-2xl font-bold text-white">{count}</div>
            <div className="text-xs text-white/40 mt-1">{label}</div>
          </div>
        ))}
      </div>
      <p className="text-sm text-white/30">
        Equipment management (CRUD) will be available in a future update.
        Currently managed via CSV import.
      </p>
    </div>
  )
}
