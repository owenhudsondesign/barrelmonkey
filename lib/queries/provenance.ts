import { createClient } from '@/lib/supabase/server'
import type {
  BarrelProvenance,
  ProvenanceBatchingRun,
  ProductProvenanceResult,
  ProductProvenanceBarrel,
  SpiritType,
} from '@/lib/types/database'

/**
 * Forward provenance: given a barrel, trace what products it became.
 * barrel → batching_run_barrels → batching_runs → bottling_runs
 */
export async function getBarrelProvenance(barrelId: string): Promise<BarrelProvenance> {
  const supabase = await createClient()

  const { data, error } = await supabase
    .from('batching_run_barrels')
    .select(`
      batching_run:batching_runs (
        id,
        batch_number,
        product_name,
        spirit_type,
        batch_date,
        proof_gal_in,
        wine_gal_in,
        proof_gal_out,
        wine_gal_out,
        bottling_runs (
          id,
          bottling_number,
          product_name,
          lot_name,
          spirit_type,
          bottle_date,
          pack_format,
          bottle_size_ml,
          bottles_per_case,
          cases_filled,
          loose_bottles,
          proof_gal_bottled,
          wine_gal_bottled
        )
      )
    `)
    .eq('barrel_id', barrelId)

  if (error) throw error

  // Cast needed: Supabase can't infer nested joins through batching_run_barrels
  const rows = data as unknown as { batching_run: ProvenanceBatchingRun | null }[]
  const batchingRuns: ProvenanceBatchingRun[] = (rows ?? [])
    .map((row) => row.batching_run)
    .filter((br): br is ProvenanceBatchingRun => br != null)

  return { batchingRuns }
}

const PROVENANCE_SELECT = `
  id,
  bottling_number,
  product_name,
  lot_name,
  spirit_type,
  bottle_date,
  cases_filled,
  loose_bottles,
  bottles_per_case,
  batching_run:batching_runs (
    id,
    batch_number,
    product_name,
    batch_date,
    batching_run_barrels (
      proof_gal_contributed,
      wine_gal_contributed,
      barrel:barrels (
        id,
        barrel_number,
        spirit_type,
        status,
        fill_date,
        dump_date,
        size_gal,
        cooperage
      )
    )
  )
` as const

interface RawBatchingRunBarrel {
  proof_gal_contributed: number | null
  wine_gal_contributed: number | null
  barrel: Omit<ProductProvenanceBarrel, 'proof_gal_contributed' | 'wine_gal_contributed'> | null
}

interface RawBatchingRun {
  id: string
  batch_number: string
  product_name: string
  batch_date: string
  batching_run_barrels: RawBatchingRunBarrel[]
}

interface RawProvenanceRow {
  id: string
  bottling_number: number | null
  product_name: string
  lot_name: string | null
  spirit_type: SpiritType
  bottle_date: string
  cases_filled: number
  loose_bottles: number
  bottles_per_case: number | null
  batching_run: RawBatchingRun | null
}

/**
 * Reverse provenance: given a search term, find bottling runs and trace back to barrels.
 * Search by product name, batch number, or lot name.
 */
export async function getProductProvenance(search: string): Promise<ProductProvenanceResult[]> {
  const supabase = await createClient()

  const term = `%${search}%`

  const { data, error } = await supabase
    .from('bottling_runs')
    .select(PROVENANCE_SELECT)
    .or(`product_name.ilike.${term},lot_name.ilike.${term}`)
    .order('bottle_date', { ascending: false })

  if (error) throw error

  // Also search by batch_number on batching_runs
  const innerSelect = PROVENANCE_SELECT.replace(
    'batching_run:batching_runs (',
    'batching_run:batching_runs!inner ('
  )
  const { data: batchData, error: batchError } = await supabase
    .from('bottling_runs')
    .select(innerSelect)
    .ilike('batching_runs.batch_number', term)
    .order('bottle_date', { ascending: false })

  if (batchError) throw batchError

  // Merge and deduplicate by bottling run ID
  const seen = new Set<string>()
  const merged: ProductProvenanceResult[] = []

  const allRows = [
    ...(data ?? []),
    ...(batchData ?? []),
  ] as unknown as RawProvenanceRow[]

  for (const row of allRows) {
    if (seen.has(row.id)) continue
    seen.add(row.id)
    merged.push(normalizeProvenanceResult(row))
  }

  return merged
}

function normalizeProvenanceResult(row: RawProvenanceRow): ProductProvenanceResult {
  const batchingRun = row.batching_run
  return {
    id: row.id,
    bottling_number: row.bottling_number,
    product_name: row.product_name,
    lot_name: row.lot_name,
    spirit_type: row.spirit_type,
    bottle_date: row.bottle_date,
    cases_filled: row.cases_filled,
    loose_bottles: row.loose_bottles,
    bottles_per_case: row.bottles_per_case,
    batching_run: batchingRun
      ? {
          id: batchingRun.id,
          batch_number: batchingRun.batch_number,
          product_name: batchingRun.product_name,
          batch_date: batchingRun.batch_date,
          barrels: (batchingRun.batching_run_barrels ?? [])
            .filter((brb): brb is RawBatchingRunBarrel & { barrel: NonNullable<RawBatchingRunBarrel['barrel']> } =>
              brb.barrel != null
            )
            .map((brb) => ({
              ...brb.barrel,
              proof_gal_contributed: brb.proof_gal_contributed,
              wine_gal_contributed: brb.wine_gal_contributed,
            })),
        }
      : null,
  }
}
