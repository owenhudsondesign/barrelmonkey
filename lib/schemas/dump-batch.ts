import { z } from 'zod'
import { spiritTypeSchema, dateString, optionalNumber, requiredNumber } from './shared'

export const createDumpBatchSchema = z.object({
  dump_date: dateString,
  spirit_type: spiritTypeSchema,
  barrel_count: requiredNumber,
  total_opg: optionalNumber,
  total_rpg: optionalNumber,
  total_loss_pg: optionalNumber,
  blend_lot_name: z.string().optional().default(''),
  target_tank_id: z.string().optional().default(''),
  dump_type: z.string().optional().default(''),
  to_account: z.string().optional().default(''),
  notes: z.string().optional().default(''),
})

export type CreateDumpBatchInput = z.infer<typeof createDumpBatchSchema>
