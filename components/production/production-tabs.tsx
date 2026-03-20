'use client'

import { useRouter, useSearchParams } from 'next/navigation'

const TABS = [
  { value: 'fermentation', label: 'Fermentation' },
  { value: 'distillation', label: 'Distillation' },
] as const

export type ProductionTab = (typeof TABS)[number]['value']

export function ProductionTabs() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const activeTab = (searchParams.get('tab') as ProductionTab) ?? 'fermentation'

  function handleTab(tab: string) {
    router.replace(`/production?tab=${tab}`)
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
