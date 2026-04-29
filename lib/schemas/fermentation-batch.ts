import { z } from 'zod'
import { spiritTypeSchema, fermentationStatusSchema, dateString, optionalNumber } from './shared'

export const createFermentationBatchSchema = z.object({
  batch_number: z.string().min(1, 'Batch number is required'),
  cook_number: optionalNumber,
  lot_name: z.string().optional().default(''),
  fermenter_id: z.string().uuid('Select a fermenter'),
  spirit_type: spiritTypeSchema,
  mash_bill: z.string().optional().default(''),
  volume_gal: optionalNumber,
  start_date: dateString,
  status: fermentationStatusSchema.default('active'),
  start_sg: optionalNumber,
  ph: optionalNumber,
  temp_f: optionalNumber,
  notes: z.string().optional().default(''),
})

export type CreateFermentationBatchInput = z.infer<typeof createFermentationBatchSchema>
