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

export interface DistillationRun {
  id: string
  run_number: number
  lot_name: string | null
  spirit_type: SpiritType
  mash_bill: string | null
  still_name: 'Rocket' | 'Arnold' | 'Both' | null
  run_phase: 'strip' | 'spirit' | 'low_wines' | 'processing' | null
  source_run_id: string | null
  source_tank_id: string | null
  fermentation_batch_id: string | null
  run_timestamp: string
  run_date: string
  operator: string | null
  output_account: 'Production' | 'Storage' | 'ProcessingBulk' | null
  pg_feints: number | null
  pg_heads: number | null
  pg_hearts: number | null
  pg_tails: number | null
  pg_low_wines: number | null
  pg_total: number | null
  proof_in: number | null
  proof_out: number | null
  proof_gal: number
  temp_f: number | null
  to_tank_id: string | null
  notes: string | null
  logged_by: string
  created_at: string
  updated_at: string
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
      fermentation_batches: {
        Row: FermentationBatch
        Insert: Omit<FermentationBatch, 'id' | 'created_at' | 'updated_at'> & {
          id?: string
          created_at?: string
          updated_at?: string
        }
        Update: Partial<Omit<FermentationBatch, 'id'>>
      }
      fermentation_moves: {
        Row: FermentationMove
        Insert: Omit<FermentationMove, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<FermentationMove, 'id'>>
      }
      tanks: {
        Row: Tank
        Insert: Omit<Tank, 'id' | 'created_at'> & { id?: string; created_at?: string }
        Update: Partial<Omit<Tank, 'id'>>
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
