'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { createBarrelEventSchema } from '@/lib/schemas/barrel-event'
import type { FormActionResult } from '@/lib/types/form'

export async function createBarrelEvent(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const raw = Object.fromEntries(formData.entries())
  const parsed = createBarrelEventSchema.safeParse(raw)

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

  const { error } = await supabase.from('barrel_events').insert({
    barrel_id: data.barrel_id,
    event_type: data.event_type,
    event_date: data.event_date,
    proof: data.proof,
    proof_gal: data.proof_gal,
    wine_gal: data.wine_gal,
    fill_proof: data.fill_proof,
    net_weight_lb: data.net_weight_lb,
    temp_f: data.temp_f,
    gain_loss_pg: data.gain_loss_pg,
    source_tank_id: data.source_tank_id || null,
    to_tank_id: data.to_tank_id || null,
    rackhouse_id: data.rackhouse_id || null,
    from_rackhouse_id: data.from_rackhouse_id || null,
    to_rackhouse_id: data.to_rackhouse_id || null,
    cooperage: data.cooperage || null,
    barrel_condition: data.barrel_condition || null,
    notes: data.notes || null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, message: error.message }
  }

  revalidatePath(`/barrels/${data.barrel_id}`)
  return { success: true, message: 'Event logged successfully.' }
}

export async function updateBarrelEvent(
  _prev: FormActionResult,
  formData: FormData
): Promise<FormActionResult> {
  const id = formData.get('id')
  if (typeof id !== 'string' || !id) {
    return { success: false, message: 'Missing event id.' }
  }

  const raw = Object.fromEntries(formData.entries())
  const parsed = createBarrelEventSchema.safeParse(raw)

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
    .from('barrel_events')
    .update({
      event_type: data.event_type,
      event_date: data.event_date,
      proof: data.proof,
      proof_gal: data.proof_gal,
      wine_gal: data.wine_gal,
      fill_proof: data.fill_proof,
      net_weight_lb: data.net_weight_lb,
      temp_f: data.temp_f,
      gain_loss_pg: data.gain_loss_pg,
      source_tank_id: data.source_tank_id || null,
      to_tank_id: data.to_tank_id || null,
      rackhouse_id: data.rackhouse_id || null,
      from_rackhouse_id: data.from_rackhouse_id || null,
      to_rackhouse_id: data.to_rackhouse_id || null,
      cooperage: data.cooperage || null,
      barrel_condition: data.barrel_condition || null,
      notes: data.notes || null,
    })
    .eq('id', id)

  if (error) return { success: false, message: error.message }

  revalidatePath(`/barrels/${data.barrel_id}`)
  redirect(`/barrels/${data.barrel_id}`)
}

export async function deleteBarrelEvent(id: string, barrelId: string): Promise<void> {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) throw new Error('You must be logged in.')

  const { error } = await supabase
    .from('barrel_events')
    .update({ deleted_at: new Date().toISOString() })
    .eq('id', id)

  if (error) throw new Error(error.message)
  revalidatePath(`/barrels/${barrelId}`)
}
