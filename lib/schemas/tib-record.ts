import { z } from 'zod'
import { spiritTypeSchema, tibDirectionSchema, dateString, optionalNumber } from './shared'

export const createTibRecordSchema = z.object({
  tib_number: optionalNumber,
  direction: tibDirectionSchema,
  transfer_date: dateString,
  spirit_type: spiritTypeSchema,
  total_pg: optionalNumber,
  total_wg: optionalNumber,
  pf: optionalNumber,
  container_ct: optionalNumber,
  tib_type: z.string().optional().default(''),
  lot_name: z.string().optional().default(''),
  dsp_name: z.string().optional().default(''),
  dsp_number: z.string().optional().default(''),
  notes: z.string().optional().default(''),
})

export type CreateTibRecordInput = z.infer<typeof createTibRecordSchema>
