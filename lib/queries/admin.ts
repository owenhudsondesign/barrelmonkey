import { createClient } from '@/lib/supabase/server'

export interface UserListRow {
  id: string
  email: string
  full_name: string
  role: string
  active: boolean
  created_at: string
}

export interface EquipmentCounts {
  rackhouses: number
  fermenters: number
  tanks: number
}

export interface ImportHistoryRow {
  id: string
  import_type: string
  filename: string
  row_count: number | null
  success_count: number | null
  error_count: number | null
  created_at: string
  imported_by_user: { full_name: string } | null
}

export async function getUsers() {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('users')
    .select('id, email, full_name, role, active, created_at')
    .order('full_name')
    .returns<UserListRow[]>()

  if (error) throw error
  return data ?? []
}

export async function getEquipmentCounts(): Promise<EquipmentCounts> {
  const supabase = await createClient()

  const [rh, fm, tk] = await Promise.all([
    supabase.from('rackhouses').select('*', { count: 'exact', head: true }).eq('active', true),
    supabase.from('fermenters').select('*', { count: 'exact', head: true }).eq('active', true),
    supabase.from('tanks').select('*', { count: 'exact', head: true }).eq('active', true),
  ])

  return {
    rackhouses: rh.count ?? 0,
    fermenters: fm.count ?? 0,
    tanks: tk.count ?? 0,
  }
}

export async function getImportHistory() {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('csv_imports')
    .select(
      `id, import_type, filename, row_count, success_count, error_count, created_at,
       imported_by_user:users(full_name)`
    )
    .order('created_at', { ascending: false })
    .limit(50)
    .returns<ImportHistoryRow[]>()

  if (error) throw error
  return data ?? []
}
