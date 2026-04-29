import { z } from 'zod'

export const spiritTypeSchema = z.enum([
  'whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other',
])

export const barrelEventTypeSchema = z.enum([
  'fill', 'dump', 'move', 'proof_reading', 'tib_out', 'tib_in', 'adjustment', 'inspection',
])

export const fermentationStatusSchema = z.enum(['active', 'complete', 'scrapped'])

export const tibDirectionSchema = z.enum(['inbound', 'outbound'])

export const stillNameSchema = z.enum(['Rocket', 'Arnold', 'Both'])

export const runPhaseSchema = z.enum(['strip', 'spirit', 'low_wines', 'processing'])

export const dateString = z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Must be YYYY-MM-DD format')

export const optionalNumber = z
  .string()
  .transform((v) => (v === '' ? null : Number(v)))
  .pipe(z.number().nullable())

export const requiredNumber = z
  .string()
  .min(1, 'Required')
  .transform((v) => Number(v))
  .pipe(z.number())
