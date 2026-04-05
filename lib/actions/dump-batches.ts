'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createDumpBatchSchema } from '@/lib/schemas/dump-batch'
import type { FormActionResult } from '@/lib/types/form'

export async function createDumpBatch(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createDumpBatchSchema.safeParse(raw)

  if (!parsed.success) {
    return {
      success: false,
      errors: parsed.error.flatten().fieldErrors as Record<string, string[]>,
      message: 'Please fix the errors below.',
    }
  }

  const data = parsed.data
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) {
    return { success: false, message: 'You must be logged in.' }
  }

  const { error } = await supabase.from('dump_batches').insert({
    dump_date: data.dump_date,
    spirit_type: data.spirit_type,
    barrel_count: data.barrel_count,
    total_opg: data.total_opg,
    total_rpg: data.total_rpg,
    total_loss_pg: data.total_loss_pg,
    blend_lot_name: data.blend_lot_name || null,
    target_tank_id: data.target_tank_id || null,
    dump_type: data.dump_type || null,
    to_account: data.to_account || null,
    notes: data.notes || null,
    operator: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath('/processing')
  redirect('/processing?tab=dumps')
}
