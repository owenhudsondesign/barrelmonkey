import { Suspense } from 'react'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { AdminTabs } from '@/components/admin/admin-tabs'
import { UserList } from '@/components/admin/user-list'
import { EquipmentOverview } from '@/components/admin/equipment-overview'
import { ImportHistory } from '@/components/admin/import-history'

export const metadata = {
  title: 'Admin — BarrelMonkey',
}

export default async function AdminPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | undefined>>
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/login')

  const { data: profile } = await supabase
    .from('users')
    .select('role')
    .eq('id', user.id)
    .single<{ role: string }>()

  if (profile?.role !== 'admin') redirect('/barrels')

  const params = await searchParams
  const tab = params.tab ?? 'users'

  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Admin</h1>
        <p className="text-sm text-white/40 mt-1">
          Users, equipment, and import management
        </p>
      </div>

      <AdminTabs />

      <Suspense fallback={<SectionSkeleton />}>
        {tab === 'users' && <UserList />}
        {tab === 'equipment' && <EquipmentOverview />}
        {tab === 'imports' && <ImportHistory />}
      </Suspense>
    </div>
  )
}

function SectionSkeleton() {
  return (
    <div>
      <div className="h-4 w-24 bg-white/[0.04] rounded mb-3 animate-pulse" />
      <div className="rounded-lg border border-white/10 overflow-hidden">
        {Array.from({ length: 5 }).map((_, i) => (
          <div key={i} className="h-12 border-b border-white/[0.06] bg-white/[0.02] animate-pulse" />
        ))}
      </div>
    </div>
  )
}
