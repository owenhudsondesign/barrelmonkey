'use server'

import { createClient } from '@/lib/supabase/server'
import { z } from 'zod'

const barrelEventSchema = z.object({
  barrelId: z.string().uuid(),
  eventType: z.enum(['proof_reading', 'move', 'inspection']),
  eventDate: z.string().min(1),
  proof: z.number().min(0).max(200).optional(),
  proofGal: z.number().min(0).optional(),
  wineGal: z.number().min(0).optional(),
  tempF: z.number().optional(),
  toRackhouseId: z.string().uuid().optional(),
  notes: z.string().optional(),
})

export async function logBarrelEvent(formData: FormData) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return { success: false, error: 'Not authenticated' }

  const raw = {
    barrelId: formData.get('barrelId') as string,
    eventType: formData.get('eventType') as string,
    eventDate: formData.get('eventDate') as string,
    proof: formData.get('proof') ? Number(formData.get('proof')) : undefined,
    proofGal: formData.get('proofGal') ? Number(formData.get('proofGal')) : undefined,
    wineGal: formData.get('wineGal') ? Number(formData.get('wineGal')) : undefined,
    tempF: formData.get('tempF') ? Number(formData.get('tempF')) : undefined,
    toRackhouseId: (formData.get('toRackhouseId') as string) || undefined,
    notes: (formData.get('notes') as string) || undefined,
  }

  const parsed = barrelEventSchema.safeParse(raw)
  if (!parsed.success) {
    return { success: false, error: parsed.error.issues[0]?.message ?? 'Invalid input' }
  }

  const { barrelId, eventType, eventDate, proof, proofGal, wineGal, tempF, toRackhouseId, notes } = parsed.data

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { error } = await (supabase.from('barrel_events') as any).insert({
    barrel_id: barrelId,
    event_type: eventType,
    event_date: eventDate,
    proof: proof ?? null,
    proof_gal: proofGal ?? null,
    wine_gal: wineGal ?? null,
    temp_f: tempF ?? null,
    to_rackhouse_id: toRackhouseId ?? null,
    notes: notes ?? null,
    logged_by: user.id,
  })

  if (error) {
    return { success: false, error: error.message }
  }

  return { success: true }
}
