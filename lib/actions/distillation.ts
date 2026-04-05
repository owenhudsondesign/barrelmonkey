'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createDistillationRunSchema } from '@/lib/schemas/distillation-run'
import type { FormActionResult } from '@/lib/types/form'

export async function createDistillationRun(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createDistillationRunSchema.safeParse(raw)

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

  const { error } = await supabase.from('distillation_runs').insert({
    run_number: data.run_number,
    spirit_type: data.spirit_type,
    still_name: data.still_name || null,
    run_phase: data.run_phase || null,
    run_date: data.run_date,
    run_timestamp: data.run_date,
    proof_gal: data.proof_gal,
    lot_name: data.lot_name || null,
    mash_bill: data.mash_bill || null,
    notes: data.notes || null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath('/production')
  redirect('/production?tab=distillation')
}
