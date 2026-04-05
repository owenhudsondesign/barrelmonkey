'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createBottlingRunSchema } from '@/lib/schemas/bottling-run'
import type { FormActionResult } from '@/lib/types/form'

export async function createBottlingRun(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createBottlingRunSchema.safeParse(raw)

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

  const { error } = await supabase.from('bottling_runs').insert({
    product_name: data.product_name,
    spirit_type: data.spirit_type,
    bottle_date: data.bottle_date,
    bottling_number: data.bottling_number,
    lot_name: data.lot_name || null,
    cases_filled: data.cases_filled,
    loose_bottles: data.loose_bottles ?? 0,
    proof_gal_bottled: data.proof_gal_bottled,
    wine_gal_bottled: data.wine_gal_bottled,
    pack_format: data.pack_format || null,
    bottle_size_ml: data.bottle_size_ml,
    bottles_per_case: data.bottles_per_case,
    source_tank_id: data.source_tank_id || null,
    notes: data.notes || null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath('/processing')
  redirect('/processing?tab=bottling')
}
