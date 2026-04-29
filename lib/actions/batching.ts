'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createBatchingRunSchema } from '@/lib/schemas/batching-run'
import type { FormActionResult } from '@/lib/types/form'

export async function createBatchingRun(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createBatchingRunSchema.safeParse(raw)

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

  const { error } = await supabase.from('batching_runs').insert({
    batch_number: data.batch_number,
    product_name: data.product_name,
    spirit_type: data.spirit_type,
    batch_date: data.batch_date,
    proof_in: data.proof_in,
    wine_gal_in: data.wine_gal_in,
    target_proof: data.target_proof,
    water_added_gal: data.water_added_gal,
    to_tank_id: data.to_tank_id || null,
    notes: data.notes || null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath('/processing')
  redirect('/processing?tab=batching')
}

export async function updateBatchingRun(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const id = formData.get('id')
  if (typeof id !== 'string' || !id) {
    return { success: false, message: 'Missing run id.' }
  }

  const raw = Object.fromEntries(formData.entries())
  const parsed = createBatchingRunSchema.safeParse(raw)

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
  if (!user) return { success: false, message: 'You must be logged in.' }

  const { error } = await supabase
    .from('batching_runs')
    .update({
      batch_number: data.batch_number,
      product_name: data.product_name,
      spirit_type: data.spirit_type,
      batch_date: data.batch_date,
      proof_in: data.proof_in,
      wine_gal_in: data.wine_gal_in,
      target_proof: data.target_proof,
      water_added_gal: data.water_added_gal,
      to_tank_id: data.to_tank_id || null,
      notes: data.notes || null,
    })
    .eq('id', id)

  if (error) return { success: false, message: error.message }

  revalidatePath('/processing')
  redirect('/processing?tab=batching')
}

export async function deleteBatchingRun(id: string): Promise<void> {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) throw new Error('You must be logged in.')

  const { error } = await supabase
    .from('batching_runs')
    .update({ deleted_at: new Date().toISOString() })
    .eq('id', id)

  if (error) throw new Error(error.message)
  revalidatePath('/processing')
}
