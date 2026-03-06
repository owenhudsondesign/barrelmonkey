'use client'

import { useRouter, useSearchParams } from 'next/navigation'

const TABS = [
  { value: 'users', label: 'Users' },
  { value: 'equipment', label: 'Equipment' },
  { value: 'imports', label: 'Import History' },
] as const

export function AdminTabs() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const activeTab = searchParams.get('tab') ?? 'users'

  function handleTab(tab: string) {
    router.replace(`/admin?tab=${tab}`)
  }

  return (
    <div className="flex gap-1 border-b border-white/[0.08] mb-6">
      {TABS.map(({ value, label }) => (
        <button
          key={value}
          onClick={() => handleTab(value)}
          className={`px-4 py-2.5 text-sm font-medium transition-colors relative ${
            activeTab === value
              ? 'text-accent'
              : 'text-white/40 hover:text-white/60'
          }`}
        >
          {label}
          {activeTab === value && (
            <div className="absolute bottom-0 left-0 right-0 h-0.5 bg-accent" />
          )}
        </button>
      ))}
    </div>
  )
}
