import { z } from 'zod'
import { spiritTypeSchema, dateString, optionalNumber, requiredNumber } from './shared'

export const createBottlingRunSchema = z.object({
  product_name: z.string().min(1, 'Product name is required'),
  spirit_type: spiritTypeSchema,
  bottle_date: dateString,
  bottling_number: optionalNumber,
  lot_name: z.string().optional().default(''),
  cases_filled: requiredNumber,
  loose_bottles: optionalNumber,
  proof_gal_bottled: optionalNumber,
  wine_gal_bottled: optionalNumber,
  pack_format: z.string().optional().default(''),
  bottle_size_ml: optionalNumber,
  bottles_per_case: optionalNumber,
  source_tank_id: z.string().optional().default(''),
  notes: z.string().optional().default(''),
})

export type CreateBottlingRunInput = z.infer<typeof createBottlingRunSchema>
