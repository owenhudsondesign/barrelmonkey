import { z } from 'zod'
import { spiritTypeSchema, dateString, optionalNumber } from './shared'

export const createBatchingRunSchema = z.object({
  batch_number: z.string().min(1, 'Batch number is required'),
  product_name: z.string().min(1, 'Product name is required'),
  spirit_type: spiritTypeSchema,
  batch_date: dateString,
  proof_in: optionalNumber,
  wine_gal_in: optionalNumber,
  target_proof: optionalNumber,
  water_added_gal: optionalNumber,
  to_tank_id: z.string().optional().default(''),
  notes: z.string().optional().default(''),
})

export type CreateBatchingRunInput = z.infer<typeof createBatchingRunSchema>
