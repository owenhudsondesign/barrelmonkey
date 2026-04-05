'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createTibRecordSchema } from '@/lib/schemas/tib-record'
import type { FormActionResult } from '@/lib/types/form'

export async function createTibRecord(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createTibRecordSchema.safeParse(raw)

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

  const { error } = await supabase.from('tib_records').insert({
    tib_number: data.tib_number,
    direction: data.direction,
    transfer_date: data.transfer_date,
    spirit_type: data.spirit_type,
    total_pg: data.total_pg,
    total_wg: data.total_wg,
    pf: data.pf,
    container_ct: data.container_ct,
    tib_type: data.tib_type || null,
    lot_name: data.lot_name || null,
    dsp_name: data.dsp_name || null,
    dsp_number: data.dsp_number || null,
    notes: data.notes || null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath('/transfers')
  redirect('/transfers')
}
