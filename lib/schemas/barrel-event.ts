import { z } from 'zod'
import { barrelEventTypeSchema, dateString, optionalNumber } from './shared'

export const createBarrelEventSchema = z.object({
  barrel_id: z.string().uuid(),
  event_type: barrelEventTypeSchema,
  event_date: dateString,
  proof: optionalNumber,
  proof_gal: optionalNumber,
  wine_gal: optionalNumber,
  fill_proof: optionalNumber,
  net_weight_lb: optionalNumber,
  temp_f: optionalNumber,
  gain_loss_pg: optionalNumber,
  source_tank_id: z.string().optional().default(''),
  to_tank_id: z.string().optional().default(''),
  rackhouse_id: z.string().optional().default(''),
  from_rackhouse_id: z.string().optional().default(''),
  to_rackhouse_id: z.string().optional().default(''),
  cooperage: z.string().optional().default(''),
  barrel_condition: z.enum(['new', 'used', '']).optional().default(''),
  notes: z.string().optional().default(''),
})

export type CreateBarrelEventInput = z.infer<typeof createBarrelEventSchema>
