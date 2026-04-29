'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createFermentationBatchSchema } from '@/lib/schemas/fermentation-batch'
import type { FormActionResult } from '@/lib/types/form'

export async function createFermentationBatch(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createFermentationBatchSchema.safeParse(raw)

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

  const { error } = await supabase.from('fermentation_batches').insert({
    batch_number: data.batch_number,
    cook_number: data.cook_number,
    lot_name: data.lot_name || null,
    fermenter_id: data.fermenter_id,
    spirit_type: data.spirit_type,
    mash_bill: data.mash_bill || null,
    volume_gal: data.volume_gal,
    start_date: data.start_date,
    status: data.status,
    start_sg: data.start_sg,
    ph: data.ph,
    temp_f: data.temp_f,
    notes: data.notes || null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath('/production')
  redirect('/production?tab=fermentation')
}

export async function updateFermentationBatch(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const id = formData.get('id')
  if (typeof id !== 'string' || !id) {
    return { success: false, message: 'Missing batch id.' }
  }

  const raw = Object.fromEntries(formData.entries())
  const parsed = createFermentationBatchSchema.safeParse(raw)

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
    .from('fermentation_batches')
    .update({
      batch_number: data.batch_number,
      cook_number: data.cook_number,
      lot_name: data.lot_name || null,
      fermenter_id: data.fermenter_id,
      spirit_type: data.spirit_type,
      mash_bill: data.mash_bill || null,
      volume_gal: data.volume_gal,
      start_date: data.start_date,
      status: data.status,
      start_sg: data.start_sg,
      ph: data.ph,
      temp_f: data.temp_f,
      notes: data.notes || null,
    })
    .eq('id', id)

  if (error) return { success: false, message: error.message }

  revalidatePath('/production')
  redirect('/production?tab=fermentation')
}

export async function deleteFermentationBatch(id: string): Promise<void> {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) throw new Error('You must be logged in.')

  const { error } = await supabase
    .from('fermentation_batches')
    .update({ deleted_at: new Date().toISOString() })
    .eq('id', id)

  if (error) throw new Error(error.message)
  revalidatePath('/production')
}
