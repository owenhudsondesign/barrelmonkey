import { createClient } from '@/lib/supabase/server'
import { QuickLogPage } from '@/components/log/quick-log-page'

export const metadata = {
  title: 'Quick Log — BarrelMonkey',
}

export default async function LogPage() {
  const supabase = await createClient()

  const [{ data: barrels }, { data: rackhouses }] = await Promise.all([
    supabase
      .from('barrels')
      .select('id, barrel_number')
      .eq('status', 'aging')
      .order('barrel_number')
      .returns<{ id: string; barrel_number: string }[]>(),
    supabase
      .from('rackhouses')
      .select('id, name')
      .eq('active', true)
      .order('name')
      .returns<{ id: string; name: string }[]>(),
  ])

  return (
    <QuickLogPage
      barrels={barrels ?? []}
      rackhouses={rackhouses ?? []}
    />
  )
}
