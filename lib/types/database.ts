// Hand-written types matching supabase/migrations/00001_initial_schema.sql
// Replace with generated types via: npx supabase gen types typescript --local

export type UserRole = 'admin' | 'producer'
export type SpiritType = 'whiskey' | 'bourbon' | 'vodka' | 'gin' | 'rum' | 'brandy' | 'extract' | 'other'
export type BarrelStatus = 'aging' | 'dumped' | 'empty' | 'transferred'
export type BarrelEventType =
  | 'fill'
  | 'dump'
  | 'move'
  | 'proof_reading'
  | 'tib_out'
  | 'tib_in'
  | 'adjustment'
  | 'inspection'
export type FermentationStatus = 'active' | 'complete' | 'scrapped'
export type TankEventType = 'move' | 'adjustment' | 'filtering' | 'destruction'
export type TibDirection = 'inbound' | 'outbound'
export type TtbReportType = 'production' | 'storage' | 'processing'
export type TtbReportStatus = 'draft' | 'reviewed' | 'filed'

// Row types
export interface User {
  id: string
  email: string
  full_name: string
  role: UserRole
  active: boolean
  created_at: string
}

export interface Rackhouse {
  id: string
  name: string
  is_offsite: boolean
  address: string | null
  active: boolean
  created_at: string
}

export interface Fermenter {
  id: string
  name: string
  capacity_gal: number | null
  active: boolean
  notes: string | null
  created_at: string
}

export interface Tank {
  id: string
  name: string
  capacity_gal: number | null
  can_ferment: boolean
  tank_category: 'production' | 'processing' | 'extract' | 'misc'
  active: boolean
  notes: string | null
  created_at: string
}

export interface Barrel {
  id: string
  barrel_number: string
  previous_barrel_number: string | null
  ws_barrel_id: string | null
  spirit_type: SpiritType
  status: BarrelStatus
  barrel_type: string | null
  size_gal: number | null
  new_or_used: string | null
  cooperage: string | null
  rackhouse_id: string | null
  slot: string | null
  fill_date: string | null
  entry_pf: number | null
  fill_proof_gal: number | null
  fill_wine_gal: number | null
  dump_date: string | null
  dump_proof: number | null
  dump_proof_gal: number | null
  dump_wine_gal: number | null
  lot_number: string | null
  internal_lot_name: string | null
  filling_dsp: string | null
  current_dsp: string | null
  location_type: 'onsite' | 'offsite' | null
  offsite_facility: string | null
  offsite_slot: string | null
  dollar_value: number | null
  notes: string | null
  created_at: string
  updated_at: string
}

export interface BarrelEvent {
  id: string
  barrel_id: string
  event_type: BarrelEventType
  event_date: string
  rackhouse_id: string | null
  rack: string | null
  row: string | null
  position: string | null
  dump_batch_id: string | null
  fill_batch_id: string | null
  source_tank_id: string | null
  fill_proof: number | null
  tank_pg_start: number | null
  tank_pg_end: number | null
  barrel_stock: string | null
  cooperage: string | null
  previous_spirit: string | null
  barrel_treatment: string | null
  barrel_condition: 'new' | 'used' | null
  gain_loss_pg: number | null
  proof: number | null
  proof_gal: number | null
  wine_gal: number | null
  net_weight_lb: number | null
  temp_f: number | null
  to_tank_id: string | null
  batching_run_id: string | null
  from_rackhouse_id: string | null
  to_rackhouse_id: string | null
  tib_record_id: string | null
  notes: string | null
  logged_by: string
  created_at: string
}

export interface FermentationBatch {
  id: string
  cook_number: number | null
  lot_name: string | null
  batch_number: string
  ws_batch_number: number | null
  dsp_number: string | null
  internal_run_name: string | null
  internal_lot_name: string | null
  fermenter_id: string
  spirit_type: SpiritType
  mash_bill: string | null
  bbl_size: number | null
  volume_gal: number | null
  start_date: string
  stripped_date: string | null
  total_days: number | null
  total_hours: number | null
  start_sg: number | null
  potential_pf: number | null
  potential_pg: number | null
  ending_sg: number | null
  ph: number | null
  temp_f: number | null
  status: FermentationStatus
  notes: string | null
  logged_by: string
  created_at: string
  updated_at: string
}

export interface FermentationMove {
  id: string
  fermentation_batch_id: string
  from_fermenter_id: string
  to_tank_id: string
  volume_gal: number
  move_date: string
  notes: string | null
  logged_by: string
  created_at: string
}

export interface TankEvent {
  id: string
  tank_id: string
  event_type: TankEventType
  event_date: string
  proof_gal_start: number | null
  proof_gal_end: number | null
  proof_gal_delta: number | null
  wine_gal: number | null
  proof: number | null
  temp_f: number | null
  to_tank_id: string | null
  from_tank_id: string | null
  distillation_run_id: string | null
  notes: string | null
  logged_by: string
  created_at: string
}

export interface DistillationRun {
  id: string
  run_number: number
  lot_name: string | null
  spirit_type: SpiritType
  mash_bill: string | null
  still_name: 'Rocket' | 'Arnold' | 'Both' | null
  run_phase: 'strip' | 'spirit' | 'low_wines' | 'processing' | null
  run_date: string
  run_timestamp: string
  proof_gal: number
  pg_total: number | null
  notes: string | null
}

export interface DumpBatch {
  id: string
  dump_date: string
  dump_type: string | null
  spirit_type: SpiritType
  target_tank_id: string | null
  to_account: string | null
  barrel_count: number
  total_opg: number | null
  total_rpg: number | null
  total_loss_pg: number | null
  pct_loss: number | null
  blend_lot_name: string | null
  notes: string | null
  operator: string | null
  created_at: string
}

export interface BarrelDistillationRun {
  id: string
  barrel_id: string
  distillation_run_id: string
}

export interface TankAdjustment {
  id: string
  adjustment_date: string
  account: string
  tank_id: string | null
  tank_name_raw: string | null
  spirit_type: SpiritType
  original_pg: number | null
  original_pf: number | null
  final_pg: number | null
  final_pf: number | null
  net_pg: number | null
  notes: string | null
  logged_by: string
  created_at: string
}

export interface BatchingRun {
  id: string
  batch_number: string
  spirit_type: SpiritType
  product_name: string
  batch_date: string
  proof_in: number | null
  wine_gal_in: number | null
  proof_gal_in: number | null
  water_added_gal: number | null
  target_proof: number | null
  actual_proof: number | null
  wine_gal_out: number | null
  proof_gal_out: number | null
  to_tank_id: string | null
  notes: string | null
  logged_by: string
  created_at: string
  updated_at: string
}

export interface BottlingRun {
  id: string
  bottling_number: number | null
  lot_name: string | null
  start_cs_serial: string | null
  end_cs_serial: string | null
  product_name: string
  recipe: string | null
  spirit_type: SpiritType
  bottle_date: string
  source_tank_id: string | null
  batching_run_id: string | null
  ttb_formula: string | null
  starting_pg_in_tank: number | null
  proof_gal_bottled: number | null
  wine_gal_bottled: number | null
  pack_format: string | null
  bottle_size_ml: number | null
  bottles_per_case: number | null
  cases_filled: number
  loose_bottles: number
  pg_loss: number | null
  pct_loss: number | null
  labor_hours: number | null
  total_value: number | null
  price_per_case: number | null
  price_per_bottle: number | null
  notes: string | null
  logged_by: string
  created_at: string
  updated_at: string
}

export interface TibRecord {
  id: string
  tib_number: number | null
  direction: TibDirection
  tib_type: string | null
  transfer_date: string
  spirit_type: SpiritType
  lot_name: string | null
  ttb_formula: string | null
  dsp_name: string | null
  dsp_number: string | null
  ref_number: string | null
  po_number: string | null
  container_ct: number | null
  total_pg: number | null
  total_wg: number | null
  pf: number | null
  price_per_pg: number | null
  is_organic: boolean
  dest_account: string | null
  wip_value: number | null
  tax_due: number | null
  form_5100_16: string | null
  notes: string | null
  logged_by: string
  created_at: string
}

export interface TibBarrel {
  id: string
  tib_record_id: string
  barrel_id: string
  proof_gal: number | null
  wine_gal: number | null
  proof: number | null
}

export interface BatchingRunBarrel {
  id: string
  batching_run_id: string
  barrel_id: string
  proof_gal_contributed: number | null
  wine_gal_contributed: number | null
  notes: string | null
}

export interface BatchingRunTank {
  id: string
  batching_run_id: string
  tank_id: string
  proof_gal_contributed: number | null
  wine_gal_contributed: number | null
  notes: string | null
}

// Provenance types
export interface ProvenanceBottlingRun {
  id: string
  bottling_number: number | null
  product_name: string
  lot_name: string | null
  spirit_type: SpiritType
  bottle_date: string
  pack_format: string | null
  bottle_size_ml: number | null
  bottles_per_case: number | null
  cases_filled: number
  loose_bottles: number
  proof_gal_bottled: number | null
  wine_gal_bottled: number | null
}

export interface ProvenanceBatchingRun {
  id: string
  batch_number: string
  product_name: string
  spirit_type: SpiritType
  batch_date: string
  proof_gal_in: number | null
  wine_gal_in: number | null
  proof_gal_out: number | null
  wine_gal_out: number | null
  bottling_runs: ProvenanceBottlingRun[]
}

export interface BarrelProvenance {
  batchingRuns: ProvenanceBatchingRun[]
}

export interface ProductProvenanceBarrel {
  id: string
  barrel_number: string
  spirit_type: SpiritType
  status: BarrelStatus
  fill_date: string | null
  dump_date: string | null
  size_gal: number | null
  cooperage: string | null
  proof_gal_contributed: number | null
  wine_gal_contributed: number | null
}

export interface ProductProvenanceResult {
  id: string
  bottling_number: number | null
  product_name: string
  lot_name: string | null
  spirit_type: SpiritType
  bottle_date: string
  cases_filled: number
  loose_bottles: number
  bottles_per_case: number | null
  batching_run: {
    id: string
    batch_number: string
    product_name: string
    batch_date: string
    barrels: ProductProvenanceBarrel[]
  } | null
}

// Joined types for queries
export interface BarrelWithRackhouse extends Barrel {
  rackhouse: Pick<Rackhouse, 'id' | 'name' | 'is_offsite'> | null
}

export interface BarrelEventWithDetails extends BarrelEvent {
  logged_by_user: Pick<User, 'full_name'> | null
  event_rackhouse: Pick<Rackhouse, 'name'> | null
  from_rackhouse: Pick<Rackhouse, 'name'> | null
  to_rackhouse: Pick<Rackhouse, 'name'> | null
  to_tank: Pick<Tank, 'name'> | null
  distillation_run: { run_number: number } | null
}

export interface BarrelDetail extends Barrel {
  rackhouse: Pick<Rackhouse, 'id' | 'name' | 'is_offsite'> | null
  barrel_distillation_runs: { distillation_run: { run_number: number; spirit_type: SpiritType } }[]
  events: BarrelEventWithDetails[]
}

// Supabase Database type (for client generics)
export interface Database {
  public: {
    Tables: {
      users: {
        Row: User
        Insert: Omit<User, 'created_at'> & { created_at?: string }
        Update: Partial<Omit<User, 'id'>>
      }
      rackhouses: {
        Row: Rackhouse
        Insert: Omit<Rackhouse, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<Rackhouse, 'id'>>
      }
      barrels: {
        Row: Barrel
        Insert: Omit<Barrel, 'id' | 'created_at' | 'updated_at'> & {
          id?: string
          created_at?: string
          updated_at?: string
        }
        Update: Partial<Omit<Barrel, 'id'>>
      }
      barrel_events: {
        Row: BarrelEvent
        Insert: Omit<BarrelEvent, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<BarrelEvent, 'id'>>
      }
      fermenters: {
        Row: Fermenter
        Insert: Omit<Fermenter, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<Fermenter, 'id'>>
      }
      tanks: {
        Row: Tank
        Insert: Omit<Tank, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<Tank, 'id'>>
      }
      tank_events: {
        Row: TankEvent
        Insert: Omit<TankEvent, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<TankEvent, 'id'>>
      }
      distillation_runs: {
        Row: DistillationRun
        Insert: Omit<DistillationRun, 'id'> & { id?: string }
        Update: Partial<Omit<DistillationRun, 'id'>>
      }
      dump_batches: {
        Row: DumpBatch
        Insert: Omit<DumpBatch, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<DumpBatch, 'id'>>
      }
      barrel_distillation_runs: {
        Row: BarrelDistillationRun
        Insert: Omit<BarrelDistillationRun, 'id'> & { id?: string }
        Update: Partial<Omit<BarrelDistillationRun, 'id'>>
      }
      tank_adjustments: {
        Row: TankAdjustment
        Insert: Omit<TankAdjustment, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<TankAdjustment, 'id'>>
      }
      batching_runs: {
        Row: BatchingRun
        Insert: Omit<BatchingRun, 'id' | 'created_at' | 'updated_at'> & {
          id?: string
          created_at?: string
          updated_at?: string
        }
        Update: Partial<Omit<BatchingRun, 'id'>>
      }
      batching_run_barrels: {
        Row: BatchingRunBarrel
        Insert: Omit<BatchingRunBarrel, 'id'> & { id?: string }
        Update: Partial<Omit<BatchingRunBarrel, 'id'>>
      }
      batching_run_tanks: {
        Row: BatchingRunTank
        Insert: Omit<BatchingRunTank, 'id'> & { id?: string }
        Update: Partial<Omit<BatchingRunTank, 'id'>>
      }
      bottling_runs: {
        Row: BottlingRun
        Insert: Omit<BottlingRun, 'id' | 'created_at' | 'updated_at'> & {
          id?: string
          created_at?: string
          updated_at?: string
        }
        Update: Partial<Omit<BottlingRun, 'id'>>
      }
    }
    Views: {
      active_barrels: {
        Row: {
          id: string
          barrel_number: string
          spirit_type: SpiritType
          status: BarrelStatus
          fill_date: string | null
          entry_pf: number | null
          fill_proof_gal: number | null
          fill_wine_gal: number | null
          size_gal: number | null
          barrel_type: string | null
          rackhouse: string | null
          is_offsite: boolean | null
          slot: string | null
          years_aging: number | null
          notes: string | null
        }
      }
    }
    Enums: {
      user_role: UserRole
      spirit_type: SpiritType
      barrel_status: BarrelStatus
      barrel_event_type: BarrelEventType
    }
    Functions: {
      get_user_role: {
        Args: Record<string, never>
        Returns: UserRole
      }
    }
  }
}
