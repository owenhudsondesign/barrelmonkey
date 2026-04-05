import { z } from 'zod'
import { spiritTypeSchema, stillNameSchema, runPhaseSchema, dateString, optionalNumber, requiredNumber } from './shared'

export const createDistillationRunSchema = z.object({
  run_number: requiredNumber,
  spirit_type: spiritTypeSchema,
  still_name: stillNameSchema.or(z.literal('')).optional().default(''),
  run_phase: runPhaseSchema.or(z.literal('')).optional().default(''),
  run_date: dateString,
  proof_gal: requiredNumber,
  lot_name: z.string().optional().default(''),
  mash_bill: z.string().optional().default(''),
  notes: z.string().optional().default(''),
})

export type CreateDistillationRunInput = z.infer<typeof createDistillationRunSchema>
