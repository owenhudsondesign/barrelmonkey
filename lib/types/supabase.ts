export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "14.1"
  }
  public: {
    Tables: {
      barrel_distillation_runs: {
        Row: {
          barrel_id: string
          distillation_run_id: string
          id: string
        }
        Insert: {
          barrel_id: string
          distillation_run_id: string
          id?: string
        }
        Update: {
          barrel_id?: string
          distillation_run_id?: string
          id?: string
        }
        Relationships: [
          {
            foreignKeyName: "barrel_distillation_runs_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "active_barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_distillation_runs_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrel_timeline"
            referencedColumns: ["barrel_id"]
          },
          {
            foreignKeyName: "barrel_distillation_runs_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_distillation_runs_distillation_run_id_fkey"
            columns: ["distillation_run_id"]
            isOneToOne: false
            referencedRelation: "distillation_runs"
            referencedColumns: ["id"]
          },
        ]
      }
      barrel_events: {
        Row: {
          barrel_condition: string | null
          barrel_id: string
          barrel_stock: string | null
          barrel_treatment: string | null
          batching_run_id: string | null
          cooperage: string | null
          created_at: string
          deleted_at: string | null
          dump_batch_id: string | null
          event_date: string
          event_type: Database["public"]["Enums"]["barrel_event_type"]
          fill_batch_id: string | null
          fill_proof: number | null
          from_rackhouse_id: string | null
          gain_loss_pg: number | null
          id: string
          logged_by: string
          net_weight_lb: number | null
          notes: string | null
          position: string | null
          previous_spirit: string | null
          proof: number | null
          proof_gal: number | null
          rack: string | null
          rackhouse_id: string | null
          row: string | null
          source_tank_id: string | null
          tank_pg_end: number | null
          tank_pg_start: number | null
          temp_f: number | null
          tib_record_id: string | null
          to_rackhouse_id: string | null
          to_tank_id: string | null
          wine_gal: number | null
        }
        Insert: {
          barrel_condition?: string | null
          barrel_id: string
          barrel_stock?: string | null
          barrel_treatment?: string | null
          batching_run_id?: string | null
          cooperage?: string | null
          created_at?: string
          deleted_at?: string | null
          dump_batch_id?: string | null
          event_date?: string
          event_type: Database["public"]["Enums"]["barrel_event_type"]
          fill_batch_id?: string | null
          fill_proof?: number | null
          from_rackhouse_id?: string | null
          gain_loss_pg?: number | null
          id?: string
          logged_by: string
          net_weight_lb?: number | null
          notes?: string | null
          position?: string | null
          previous_spirit?: string | null
          proof?: number | null
          proof_gal?: number | null
          rack?: string | null
          rackhouse_id?: string | null
          row?: string | null
          source_tank_id?: string | null
          tank_pg_end?: number | null
          tank_pg_start?: number | null
          temp_f?: number | null
          tib_record_id?: string | null
          to_rackhouse_id?: string | null
          to_tank_id?: string | null
          wine_gal?: number | null
        }
        Update: {
          barrel_condition?: string | null
          barrel_id?: string
          barrel_stock?: string | null
          barrel_treatment?: string | null
          batching_run_id?: string | null
          cooperage?: string | null
          created_at?: string
          deleted_at?: string | null
          dump_batch_id?: string | null
          event_date?: string
          event_type?: Database["public"]["Enums"]["barrel_event_type"]
          fill_batch_id?: string | null
          fill_proof?: number | null
          from_rackhouse_id?: string | null
          gain_loss_pg?: number | null
          id?: string
          logged_by?: string
          net_weight_lb?: number | null
          notes?: string | null
          position?: string | null
          previous_spirit?: string | null
          proof?: number | null
          proof_gal?: number | null
          rack?: string | null
          rackhouse_id?: string | null
          row?: string | null
          source_tank_id?: string | null
          tank_pg_end?: number | null
          tank_pg_start?: number | null
          temp_f?: number | null
          tib_record_id?: string | null
          to_rackhouse_id?: string | null
          to_tank_id?: string | null
          wine_gal?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "barrel_events_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "active_barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrel_timeline"
            referencedColumns: ["barrel_id"]
          },
          {
            foreignKeyName: "barrel_events_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_batching_run_fk"
            columns: ["batching_run_id"]
            isOneToOne: false
            referencedRelation: "batching_runs"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_dump_batch_id_fkey"
            columns: ["dump_batch_id"]
            isOneToOne: false
            referencedRelation: "dump_batches"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_from_rackhouse_id_fkey"
            columns: ["from_rackhouse_id"]
            isOneToOne: false
            referencedRelation: "rackhouses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_rackhouse_id_fkey"
            columns: ["rackhouse_id"]
            isOneToOne: false
            referencedRelation: "rackhouses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_source_tank_id_fkey"
            columns: ["source_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_tib_record_fk"
            columns: ["tib_record_id"]
            isOneToOne: false
            referencedRelation: "tib_records"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_to_rackhouse_id_fkey"
            columns: ["to_rackhouse_id"]
            isOneToOne: false
            referencedRelation: "rackhouses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "barrel_events_to_tank_id_fkey"
            columns: ["to_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      barrels: {
        Row: {
          barrel_number: string
          barrel_type: string | null
          cooperage: string | null
          created_at: string
          current_dsp: string | null
          dollar_value: number | null
          dump_date: string | null
          dump_proof: number | null
          dump_proof_gal: number | null
          dump_wine_gal: number | null
          entry_pf: number | null
          expected_use: string | null
          fill_date: string | null
          fill_proof_gal: number | null
          fill_wine_gal: number | null
          filling_dsp: string | null
          gross_weight: number | null
          id: string
          internal_lot_name: string | null
          location_type: string | null
          lot_number: string | null
          net_weight: number | null
          new_or_used: string | null
          notes: string | null
          observation_notes: string | null
          offsite_facility: string | null
          offsite_slot: string | null
          owner_name: string | null
          previous_barrel_number: string | null
          product_name: string | null
          quality_rating: number | null
          rackhouse_id: string | null
          size_gal: number | null
          slot: string | null
          solera_age_date: string | null
          spirit_age_date: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          status: Database["public"]["Enums"]["barrel_status"]
          tare_weight: number | null
          ttb_characteristic_flags: number | null
          ttb_characteristic_flags_str: string | null
          updated_at: string
          ws_barrel_id: string | null
          ws_filling_run_id: string | null
        }
        Insert: {
          barrel_number: string
          barrel_type?: string | null
          cooperage?: string | null
          created_at?: string
          current_dsp?: string | null
          dollar_value?: number | null
          dump_date?: string | null
          dump_proof?: number | null
          dump_proof_gal?: number | null
          dump_wine_gal?: number | null
          entry_pf?: number | null
          expected_use?: string | null
          fill_date?: string | null
          fill_proof_gal?: number | null
          fill_wine_gal?: number | null
          filling_dsp?: string | null
          gross_weight?: number | null
          id?: string
          internal_lot_name?: string | null
          location_type?: string | null
          lot_number?: string | null
          net_weight?: number | null
          new_or_used?: string | null
          notes?: string | null
          observation_notes?: string | null
          offsite_facility?: string | null
          offsite_slot?: string | null
          owner_name?: string | null
          previous_barrel_number?: string | null
          product_name?: string | null
          quality_rating?: number | null
          rackhouse_id?: string | null
          size_gal?: number | null
          slot?: string | null
          solera_age_date?: string | null
          spirit_age_date?: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          status?: Database["public"]["Enums"]["barrel_status"]
          tare_weight?: number | null
          ttb_characteristic_flags?: number | null
          ttb_characteristic_flags_str?: string | null
          updated_at?: string
          ws_barrel_id?: string | null
          ws_filling_run_id?: string | null
        }
        Update: {
          barrel_number?: string
          barrel_type?: string | null
          cooperage?: string | null
          created_at?: string
          current_dsp?: string | null
          dollar_value?: number | null
          dump_date?: string | null
          dump_proof?: number | null
          dump_proof_gal?: number | null
          dump_wine_gal?: number | null
          entry_pf?: number | null
          expected_use?: string | null
          fill_date?: string | null
          fill_proof_gal?: number | null
          fill_wine_gal?: number | null
          filling_dsp?: string | null
          gross_weight?: number | null
          id?: string
          internal_lot_name?: string | null
          location_type?: string | null
          lot_number?: string | null
          net_weight?: number | null
          new_or_used?: string | null
          notes?: string | null
          observation_notes?: string | null
          offsite_facility?: string | null
          offsite_slot?: string | null
          owner_name?: string | null
          previous_barrel_number?: string | null
          product_name?: string | null
          quality_rating?: number | null
          rackhouse_id?: string | null
          size_gal?: number | null
          slot?: string | null
          solera_age_date?: string | null
          spirit_age_date?: string | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          status?: Database["public"]["Enums"]["barrel_status"]
          tare_weight?: number | null
          ttb_characteristic_flags?: number | null
          ttb_characteristic_flags_str?: string | null
          updated_at?: string
          ws_barrel_id?: string | null
          ws_filling_run_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "barrels_rackhouse_id_fkey"
            columns: ["rackhouse_id"]
            isOneToOne: false
            referencedRelation: "rackhouses"
            referencedColumns: ["id"]
          },
        ]
      }
      batching_run_barrels: {
        Row: {
          barrel_id: string
          batching_run_id: string
          id: string
          notes: string | null
          proof_gal_contributed: number | null
          wine_gal_contributed: number | null
        }
        Insert: {
          barrel_id: string
          batching_run_id: string
          id?: string
          notes?: string | null
          proof_gal_contributed?: number | null
          wine_gal_contributed?: number | null
        }
        Update: {
          barrel_id?: string
          batching_run_id?: string
          id?: string
          notes?: string | null
          proof_gal_contributed?: number | null
          wine_gal_contributed?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "batching_run_barrels_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "active_barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "batching_run_barrels_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrel_timeline"
            referencedColumns: ["barrel_id"]
          },
          {
            foreignKeyName: "batching_run_barrels_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "batching_run_barrels_batching_run_id_fkey"
            columns: ["batching_run_id"]
            isOneToOne: false
            referencedRelation: "batching_runs"
            referencedColumns: ["id"]
          },
        ]
      }
      batching_run_tanks: {
        Row: {
          batching_run_id: string
          id: string
          notes: string | null
          proof_gal_contributed: number | null
          tank_id: string
          wine_gal_contributed: number | null
        }
        Insert: {
          batching_run_id: string
          id?: string
          notes?: string | null
          proof_gal_contributed?: number | null
          tank_id: string
          wine_gal_contributed?: number | null
        }
        Update: {
          batching_run_id?: string
          id?: string
          notes?: string | null
          proof_gal_contributed?: number | null
          tank_id?: string
          wine_gal_contributed?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "batching_run_tanks_batching_run_id_fkey"
            columns: ["batching_run_id"]
            isOneToOne: false
            referencedRelation: "batching_runs"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "batching_run_tanks_tank_id_fkey"
            columns: ["tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      batching_runs: {
        Row: {
          actual_proof: number | null
          batch_date: string
          batch_number: string
          created_at: string
          deleted_at: string | null
          id: string
          logged_by: string
          notes: string | null
          product_name: string
          proof_gal_in: number | null
          proof_gal_out: number | null
          proof_in: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          target_proof: number | null
          to_tank_id: string | null
          updated_at: string
          water_added_gal: number | null
          wine_gal_in: number | null
          wine_gal_out: number | null
        }
        Insert: {
          actual_proof?: number | null
          batch_date: string
          batch_number: string
          created_at?: string
          deleted_at?: string | null
          id?: string
          logged_by: string
          notes?: string | null
          product_name: string
          proof_gal_in?: number | null
          proof_gal_out?: number | null
          proof_in?: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          target_proof?: number | null
          to_tank_id?: string | null
          updated_at?: string
          water_added_gal?: number | null
          wine_gal_in?: number | null
          wine_gal_out?: number | null
        }
        Update: {
          actual_proof?: number | null
          batch_date?: string
          batch_number?: string
          created_at?: string
          deleted_at?: string | null
          id?: string
          logged_by?: string
          notes?: string | null
          product_name?: string
          proof_gal_in?: number | null
          proof_gal_out?: number | null
          proof_in?: number | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          target_proof?: number | null
          to_tank_id?: string | null
          updated_at?: string
          water_added_gal?: number | null
          wine_gal_in?: number | null
          wine_gal_out?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "batching_runs_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "batching_runs_to_tank_id_fkey"
            columns: ["to_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      bottling_runs: {
        Row: {
          batching_run_id: string | null
          bottle_date: string
          bottle_size_ml: number | null
          bottles_per_case: number | null
          bottling_number: number | null
          cases_filled: number
          created_at: string
          deleted_at: string | null
          end_cs_serial: string | null
          id: string
          labor_hours: number | null
          logged_by: string
          loose_bottles: number
          lot_name: string | null
          notes: string | null
          pack_format: string | null
          pct_loss: number | null
          pg_loss: number | null
          price_per_bottle: number | null
          price_per_case: number | null
          product_name: string
          proof_gal_bottled: number | null
          recipe: string | null
          source_tank_id: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          start_cs_serial: string | null
          starting_pg_in_tank: number | null
          total_value: number | null
          ttb_formula: string | null
          updated_at: string
          wine_gal_bottled: number | null
        }
        Insert: {
          batching_run_id?: string | null
          bottle_date: string
          bottle_size_ml?: number | null
          bottles_per_case?: number | null
          bottling_number?: number | null
          cases_filled?: number
          created_at?: string
          deleted_at?: string | null
          end_cs_serial?: string | null
          id?: string
          labor_hours?: number | null
          logged_by: string
          loose_bottles?: number
          lot_name?: string | null
          notes?: string | null
          pack_format?: string | null
          pct_loss?: number | null
          pg_loss?: number | null
          price_per_bottle?: number | null
          price_per_case?: number | null
          product_name: string
          proof_gal_bottled?: number | null
          recipe?: string | null
          source_tank_id?: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          start_cs_serial?: string | null
          starting_pg_in_tank?: number | null
          total_value?: number | null
          ttb_formula?: string | null
          updated_at?: string
          wine_gal_bottled?: number | null
        }
        Update: {
          batching_run_id?: string | null
          bottle_date?: string
          bottle_size_ml?: number | null
          bottles_per_case?: number | null
          bottling_number?: number | null
          cases_filled?: number
          created_at?: string
          deleted_at?: string | null
          end_cs_serial?: string | null
          id?: string
          labor_hours?: number | null
          logged_by?: string
          loose_bottles?: number
          lot_name?: string | null
          notes?: string | null
          pack_format?: string | null
          pct_loss?: number | null
          pg_loss?: number | null
          price_per_bottle?: number | null
          price_per_case?: number | null
          product_name?: string
          proof_gal_bottled?: number | null
          recipe?: string | null
          source_tank_id?: string | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          start_cs_serial?: string | null
          starting_pg_in_tank?: number | null
          total_value?: number | null
          ttb_formula?: string | null
          updated_at?: string
          wine_gal_bottled?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "bottling_runs_batching_run_id_fkey"
            columns: ["batching_run_id"]
            isOneToOne: false
            referencedRelation: "batching_runs"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "bottling_runs_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "bottling_runs_source_tank_id_fkey"
            columns: ["source_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      csv_imports: {
        Row: {
          created_at: string
          error_count: number | null
          errors: Json | null
          filename: string
          id: string
          import_type: string
          imported_by: string
          row_count: number | null
          success_count: number | null
        }
        Insert: {
          created_at?: string
          error_count?: number | null
          errors?: Json | null
          filename: string
          id?: string
          import_type: string
          imported_by: string
          row_count?: number | null
          success_count?: number | null
        }
        Update: {
          created_at?: string
          error_count?: number | null
          errors?: Json | null
          filename?: string
          id?: string
          import_type?: string
          imported_by?: string
          row_count?: number | null
          success_count?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "csv_imports_imported_by_fkey"
            columns: ["imported_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
        ]
      }
      distillation_runs: {
        Row: {
          created_at: string
          deleted_at: string | null
          fermentation_batch_id: string | null
          id: string
          logged_by: string
          lot_name: string | null
          mash_bill: string | null
          notes: string | null
          operator: string | null
          output_account: string | null
          pg_feints: number | null
          pg_heads: number | null
          pg_hearts: number | null
          pg_low_wines: number | null
          pg_tails: number | null
          pg_total: number | null
          proof_gal: number
          proof_in: number | null
          proof_out: number | null
          run_date: string
          run_number: number
          run_phase: string | null
          run_timestamp: string
          source_run_id: string | null
          source_tank_id: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          still_name: string | null
          temp_f: number | null
          to_tank_id: string | null
          updated_at: string
        }
        Insert: {
          created_at?: string
          deleted_at?: string | null
          fermentation_batch_id?: string | null
          id?: string
          logged_by: string
          lot_name?: string | null
          mash_bill?: string | null
          notes?: string | null
          operator?: string | null
          output_account?: string | null
          pg_feints?: number | null
          pg_heads?: number | null
          pg_hearts?: number | null
          pg_low_wines?: number | null
          pg_tails?: number | null
          pg_total?: number | null
          proof_gal: number
          proof_in?: number | null
          proof_out?: number | null
          run_date: string
          run_number: number
          run_phase?: string | null
          run_timestamp: string
          source_run_id?: string | null
          source_tank_id?: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          still_name?: string | null
          temp_f?: number | null
          to_tank_id?: string | null
          updated_at?: string
        }
        Update: {
          created_at?: string
          deleted_at?: string | null
          fermentation_batch_id?: string | null
          id?: string
          logged_by?: string
          lot_name?: string | null
          mash_bill?: string | null
          notes?: string | null
          operator?: string | null
          output_account?: string | null
          pg_feints?: number | null
          pg_heads?: number | null
          pg_hearts?: number | null
          pg_low_wines?: number | null
          pg_tails?: number | null
          pg_total?: number | null
          proof_gal?: number
          proof_in?: number | null
          proof_out?: number | null
          run_date?: string
          run_number?: number
          run_phase?: string | null
          run_timestamp?: string
          source_run_id?: string | null
          source_tank_id?: string | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          still_name?: string | null
          temp_f?: number | null
          to_tank_id?: string | null
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "distillation_runs_fermentation_batch_id_fkey"
            columns: ["fermentation_batch_id"]
            isOneToOne: false
            referencedRelation: "fermentation_batches"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "distillation_runs_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "distillation_runs_source_run_id_fkey"
            columns: ["source_run_id"]
            isOneToOne: false
            referencedRelation: "distillation_runs"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "distillation_runs_source_tank_id_fkey"
            columns: ["source_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "distillation_runs_to_tank_id_fkey"
            columns: ["to_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      dump_batches: {
        Row: {
          barrel_count: number
          blend_lot_name: string | null
          created_at: string | null
          deleted_at: string | null
          dump_date: string
          dump_type: string | null
          id: string
          notes: string | null
          operator: string | null
          pct_loss: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          target_tank_id: string | null
          to_account: string | null
          total_loss_pg: number | null
          total_opg: number | null
          total_rpg: number | null
        }
        Insert: {
          barrel_count: number
          blend_lot_name?: string | null
          created_at?: string | null
          deleted_at?: string | null
          dump_date: string
          dump_type?: string | null
          id?: string
          notes?: string | null
          operator?: string | null
          pct_loss?: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          target_tank_id?: string | null
          to_account?: string | null
          total_loss_pg?: number | null
          total_opg?: number | null
          total_rpg?: number | null
        }
        Update: {
          barrel_count?: number
          blend_lot_name?: string | null
          created_at?: string | null
          deleted_at?: string | null
          dump_date?: string
          dump_type?: string | null
          id?: string
          notes?: string | null
          operator?: string | null
          pct_loss?: number | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          target_tank_id?: string | null
          to_account?: string | null
          total_loss_pg?: number | null
          total_opg?: number | null
          total_rpg?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "dump_batches_target_tank_id_fkey"
            columns: ["target_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      fermentation_batches: {
        Row: {
          batch_number: string
          bbl_size: number | null
          cook_number: number | null
          created_at: string
          deleted_at: string | null
          dsp_number: string | null
          ending_sg: number | null
          fermenter_id: string
          id: string
          internal_lot_name: string | null
          internal_run_name: string | null
          logged_by: string
          lot_name: string | null
          mash_bill: string | null
          notes: string | null
          ph: number | null
          potential_pf: number | null
          potential_pg: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          start_date: string
          start_sg: number | null
          status: Database["public"]["Enums"]["fermentation_status"]
          stripped_date: string | null
          temp_f: number | null
          total_days: number | null
          total_hours: number | null
          updated_at: string
          volume_gal: number | null
          ws_batch_number: number | null
        }
        Insert: {
          batch_number: string
          bbl_size?: number | null
          cook_number?: number | null
          created_at?: string
          deleted_at?: string | null
          dsp_number?: string | null
          ending_sg?: number | null
          fermenter_id: string
          id?: string
          internal_lot_name?: string | null
          internal_run_name?: string | null
          logged_by: string
          lot_name?: string | null
          mash_bill?: string | null
          notes?: string | null
          ph?: number | null
          potential_pf?: number | null
          potential_pg?: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          start_date: string
          start_sg?: number | null
          status?: Database["public"]["Enums"]["fermentation_status"]
          stripped_date?: string | null
          temp_f?: number | null
          total_days?: number | null
          total_hours?: number | null
          updated_at?: string
          volume_gal?: number | null
          ws_batch_number?: number | null
        }
        Update: {
          batch_number?: string
          bbl_size?: number | null
          cook_number?: number | null
          created_at?: string
          deleted_at?: string | null
          dsp_number?: string | null
          ending_sg?: number | null
          fermenter_id?: string
          id?: string
          internal_lot_name?: string | null
          internal_run_name?: string | null
          logged_by?: string
          lot_name?: string | null
          mash_bill?: string | null
          notes?: string | null
          ph?: number | null
          potential_pf?: number | null
          potential_pg?: number | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          start_date?: string
          start_sg?: number | null
          status?: Database["public"]["Enums"]["fermentation_status"]
          stripped_date?: string | null
          temp_f?: number | null
          total_days?: number | null
          total_hours?: number | null
          updated_at?: string
          volume_gal?: number | null
          ws_batch_number?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "fermentation_batches_fermenter_id_fkey"
            columns: ["fermenter_id"]
            isOneToOne: false
            referencedRelation: "fermenters"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fermentation_batches_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
        ]
      }
      fermentation_moves: {
        Row: {
          created_at: string
          fermentation_batch_id: string
          from_fermenter_id: string
          id: string
          logged_by: string
          move_date: string
          notes: string | null
          to_tank_id: string
          volume_gal: number
        }
        Insert: {
          created_at?: string
          fermentation_batch_id: string
          from_fermenter_id: string
          id?: string
          logged_by: string
          move_date?: string
          notes?: string | null
          to_tank_id: string
          volume_gal: number
        }
        Update: {
          created_at?: string
          fermentation_batch_id?: string
          from_fermenter_id?: string
          id?: string
          logged_by?: string
          move_date?: string
          notes?: string | null
          to_tank_id?: string
          volume_gal?: number
        }
        Relationships: [
          {
            foreignKeyName: "fermentation_moves_fermentation_batch_id_fkey"
            columns: ["fermentation_batch_id"]
            isOneToOne: false
            referencedRelation: "fermentation_batches"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fermentation_moves_from_fermenter_id_fkey"
            columns: ["from_fermenter_id"]
            isOneToOne: false
            referencedRelation: "fermenters"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fermentation_moves_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fermentation_moves_to_tank_id_fkey"
            columns: ["to_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      fermenters: {
        Row: {
          active: boolean
          capacity_gal: number | null
          created_at: string
          id: string
          name: string
          notes: string | null
        }
        Insert: {
          active?: boolean
          capacity_gal?: number | null
          created_at?: string
          id?: string
          name: string
          notes?: string | null
        }
        Update: {
          active?: boolean
          capacity_gal?: number | null
          created_at?: string
          id?: string
          name?: string
          notes?: string | null
        }
        Relationships: []
      }
      rackhouses: {
        Row: {
          active: boolean
          address: string | null
          created_at: string
          id: string
          is_offsite: boolean
          name: string
        }
        Insert: {
          active?: boolean
          address?: string | null
          created_at?: string
          id?: string
          is_offsite?: boolean
          name: string
        }
        Update: {
          active?: boolean
          address?: string | null
          created_at?: string
          id?: string
          is_offsite?: boolean
          name?: string
        }
        Relationships: []
      }
      tank_adjustments: {
        Row: {
          account: string
          adjustment_date: string
          created_at: string
          final_pf: number | null
          final_pg: number | null
          id: string
          logged_by: string
          net_pg: number | null
          notes: string | null
          original_pf: number | null
          original_pg: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          tank_id: string | null
          tank_name_raw: string | null
        }
        Insert: {
          account: string
          adjustment_date: string
          created_at?: string
          final_pf?: number | null
          final_pg?: number | null
          id?: string
          logged_by: string
          net_pg?: number | null
          notes?: string | null
          original_pf?: number | null
          original_pg?: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          tank_id?: string | null
          tank_name_raw?: string | null
        }
        Update: {
          account?: string
          adjustment_date?: string
          created_at?: string
          final_pf?: number | null
          final_pg?: number | null
          id?: string
          logged_by?: string
          net_pg?: number | null
          notes?: string | null
          original_pf?: number | null
          original_pg?: number | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          tank_id?: string | null
          tank_name_raw?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "tank_adjustments_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tank_adjustments_tank_id_fkey"
            columns: ["tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      tank_events: {
        Row: {
          created_at: string
          distillation_run_id: string | null
          event_date: string
          event_type: Database["public"]["Enums"]["tank_event_type"]
          from_tank_id: string | null
          id: string
          logged_by: string
          notes: string | null
          proof: number | null
          proof_gal_delta: number | null
          proof_gal_end: number | null
          proof_gal_start: number | null
          tank_id: string
          temp_f: number | null
          to_tank_id: string | null
          wine_gal: number | null
        }
        Insert: {
          created_at?: string
          distillation_run_id?: string | null
          event_date?: string
          event_type: Database["public"]["Enums"]["tank_event_type"]
          from_tank_id?: string | null
          id?: string
          logged_by: string
          notes?: string | null
          proof?: number | null
          proof_gal_delta?: number | null
          proof_gal_end?: number | null
          proof_gal_start?: number | null
          tank_id: string
          temp_f?: number | null
          to_tank_id?: string | null
          wine_gal?: number | null
        }
        Update: {
          created_at?: string
          distillation_run_id?: string | null
          event_date?: string
          event_type?: Database["public"]["Enums"]["tank_event_type"]
          from_tank_id?: string | null
          id?: string
          logged_by?: string
          notes?: string | null
          proof?: number | null
          proof_gal_delta?: number | null
          proof_gal_end?: number | null
          proof_gal_start?: number | null
          tank_id?: string
          temp_f?: number | null
          to_tank_id?: string | null
          wine_gal?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "tank_events_distillation_run_id_fkey"
            columns: ["distillation_run_id"]
            isOneToOne: false
            referencedRelation: "distillation_runs"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tank_events_from_tank_id_fkey"
            columns: ["from_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tank_events_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tank_events_tank_id_fkey"
            columns: ["tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tank_events_to_tank_id_fkey"
            columns: ["to_tank_id"]
            isOneToOne: false
            referencedRelation: "tanks"
            referencedColumns: ["id"]
          },
        ]
      }
      tanks: {
        Row: {
          active: boolean
          can_ferment: boolean
          capacity_gal: number | null
          created_at: string
          id: string
          name: string
          notes: string | null
          tank_category: string
        }
        Insert: {
          active?: boolean
          can_ferment?: boolean
          capacity_gal?: number | null
          created_at?: string
          id?: string
          name: string
          notes?: string | null
          tank_category?: string
        }
        Update: {
          active?: boolean
          can_ferment?: boolean
          capacity_gal?: number | null
          created_at?: string
          id?: string
          name?: string
          notes?: string | null
          tank_category?: string
        }
        Relationships: []
      }
      tib_barrels: {
        Row: {
          barrel_id: string
          id: string
          proof: number | null
          proof_gal: number | null
          tib_record_id: string
          wine_gal: number | null
        }
        Insert: {
          barrel_id: string
          id?: string
          proof?: number | null
          proof_gal?: number | null
          tib_record_id: string
          wine_gal?: number | null
        }
        Update: {
          barrel_id?: string
          id?: string
          proof?: number | null
          proof_gal?: number | null
          tib_record_id?: string
          wine_gal?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "tib_barrels_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "active_barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tib_barrels_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrel_timeline"
            referencedColumns: ["barrel_id"]
          },
          {
            foreignKeyName: "tib_barrels_barrel_id_fkey"
            columns: ["barrel_id"]
            isOneToOne: false
            referencedRelation: "barrels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tib_barrels_tib_record_id_fkey"
            columns: ["tib_record_id"]
            isOneToOne: false
            referencedRelation: "tib_records"
            referencedColumns: ["id"]
          },
        ]
      }
      tib_records: {
        Row: {
          container_ct: number | null
          created_at: string
          deleted_at: string | null
          dest_account: string | null
          direction: Database["public"]["Enums"]["tib_direction"]
          dsp_name: string | null
          dsp_number: string | null
          form_5100_16: string | null
          id: string
          is_organic: boolean | null
          logged_by: string
          lot_name: string | null
          notes: string | null
          pf: number | null
          po_number: string | null
          price_per_pg: number | null
          ref_number: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          tax_due: number | null
          tib_number: number | null
          tib_type: string | null
          total_pg: number | null
          total_wg: number | null
          transfer_date: string
          ttb_formula: string | null
          wip_value: number | null
        }
        Insert: {
          container_ct?: number | null
          created_at?: string
          deleted_at?: string | null
          dest_account?: string | null
          direction: Database["public"]["Enums"]["tib_direction"]
          dsp_name?: string | null
          dsp_number?: string | null
          form_5100_16?: string | null
          id?: string
          is_organic?: boolean | null
          logged_by: string
          lot_name?: string | null
          notes?: string | null
          pf?: number | null
          po_number?: string | null
          price_per_pg?: number | null
          ref_number?: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"]
          tax_due?: number | null
          tib_number?: number | null
          tib_type?: string | null
          total_pg?: number | null
          total_wg?: number | null
          transfer_date: string
          ttb_formula?: string | null
          wip_value?: number | null
        }
        Update: {
          container_ct?: number | null
          created_at?: string
          deleted_at?: string | null
          dest_account?: string | null
          direction?: Database["public"]["Enums"]["tib_direction"]
          dsp_name?: string | null
          dsp_number?: string | null
          form_5100_16?: string | null
          id?: string
          is_organic?: boolean | null
          logged_by?: string
          lot_name?: string | null
          notes?: string | null
          pf?: number | null
          po_number?: string | null
          price_per_pg?: number | null
          ref_number?: string | null
          spirit_type?: Database["public"]["Enums"]["spirit_type"]
          tax_due?: number | null
          tib_number?: number | null
          tib_type?: string | null
          total_pg?: number | null
          total_wg?: number | null
          transfer_date?: string
          ttb_formula?: string | null
          wip_value?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "tib_records_logged_by_fkey"
            columns: ["logged_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
        ]
      }
      ttb_reports: {
        Row: {
          ai_summary: string | null
          created_at: string
          filed_at: string | null
          filed_by: string | null
          generated_at: string
          generated_by: string | null
          id: string
          notes: string | null
          period_month: number
          period_year: number
          report_data: Json
          report_type: Database["public"]["Enums"]["ttb_report_type"]
          reviewed_at: string | null
          reviewed_by: string | null
          status: Database["public"]["Enums"]["ttb_report_status"]
          updated_at: string
        }
        Insert: {
          ai_summary?: string | null
          created_at?: string
          filed_at?: string | null
          filed_by?: string | null
          generated_at?: string
          generated_by?: string | null
          id?: string
          notes?: string | null
          period_month: number
          period_year: number
          report_data?: Json
          report_type: Database["public"]["Enums"]["ttb_report_type"]
          reviewed_at?: string | null
          reviewed_by?: string | null
          status?: Database["public"]["Enums"]["ttb_report_status"]
          updated_at?: string
        }
        Update: {
          ai_summary?: string | null
          created_at?: string
          filed_at?: string | null
          filed_by?: string | null
          generated_at?: string
          generated_by?: string | null
          id?: string
          notes?: string | null
          period_month?: number
          period_year?: number
          report_data?: Json
          report_type?: Database["public"]["Enums"]["ttb_report_type"]
          reviewed_at?: string | null
          reviewed_by?: string | null
          status?: Database["public"]["Enums"]["ttb_report_status"]
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "ttb_reports_filed_by_fkey"
            columns: ["filed_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "ttb_reports_generated_by_fkey"
            columns: ["generated_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "ttb_reports_reviewed_by_fkey"
            columns: ["reviewed_by"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
        ]
      }
      users: {
        Row: {
          active: boolean
          created_at: string
          email: string
          full_name: string
          id: string
          role: Database["public"]["Enums"]["user_role"]
        }
        Insert: {
          active?: boolean
          created_at?: string
          email: string
          full_name?: string
          id: string
          role?: Database["public"]["Enums"]["user_role"]
        }
        Update: {
          active?: boolean
          created_at?: string
          email?: string
          full_name?: string
          id?: string
          role?: Database["public"]["Enums"]["user_role"]
        }
        Relationships: []
      }
    }
    Views: {
      active_barrels: {
        Row: {
          barrel_number: string | null
          barrel_type: string | null
          entry_pf: number | null
          fill_date: string | null
          fill_proof_gal: number | null
          fill_wine_gal: number | null
          id: string | null
          is_offsite: boolean | null
          notes: string | null
          rackhouse: string | null
          size_gal: number | null
          slot: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"] | null
          status: Database["public"]["Enums"]["barrel_status"] | null
          years_aging: number | null
        }
        Relationships: []
      }
      barrel_timeline: {
        Row: {
          barrel_id: string | null
          barrel_number: string | null
          dump_date: string | null
          event_date: string | null
          event_id: string | null
          event_notes: string | null
          event_rackhouse: string | null
          event_type: Database["public"]["Enums"]["barrel_event_type"] | null
          fill_date: string | null
          logged_by_name: string | null
          moved_from: string | null
          moved_to: string | null
          net_weight_lb: number | null
          position: string | null
          proof: number | null
          proof_gal: number | null
          rack: string | null
          row: string | null
          spirit_type: Database["public"]["Enums"]["spirit_type"] | null
          status: Database["public"]["Enums"]["barrel_status"] | null
          temp_f: number | null
          wine_gal: number | null
        }
        Relationships: []
      }
      monthly_production: {
        Row: {
          month: string | null
          run_count: number | null
          spirit_type: Database["public"]["Enums"]["spirit_type"] | null
          total_pg: number | null
          total_proof_gal: number | null
        }
        Relationships: []
      }
    }
    Functions: {
      get_user_role: {
        Args: never
        Returns: Database["public"]["Enums"]["user_role"]
      }
    }
    Enums: {
      barrel_event_type:
        | "fill"
        | "dump"
        | "move"
        | "proof_reading"
        | "tib_out"
        | "tib_in"
        | "adjustment"
        | "inspection"
      barrel_status: "aging" | "dumped" | "empty" | "transferred"
      fermentation_status: "active" | "complete" | "scrapped"
      spirit_type:
        | "whiskey"
        | "bourbon"
        | "vodka"
        | "gin"
        | "rum"
        | "brandy"
        | "extract"
        | "other"
      tank_event_type: "move" | "adjustment" | "filtering" | "destruction"
      tib_direction: "inbound" | "outbound"
      ttb_report_status: "draft" | "reviewed" | "filed"
      ttb_report_type: "production" | "storage" | "processing"
      user_role: "admin" | "producer"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      barrel_event_type: [
        "fill",
        "dump",
        "move",
        "proof_reading",
        "tib_out",
        "tib_in",
        "adjustment",
        "inspection",
      ],
      barrel_status: ["aging", "dumped", "empty", "transferred"],
      fermentation_status: ["active", "complete", "scrapped"],
      spirit_type: [
        "whiskey",
        "bourbon",
        "vodka",
        "gin",
        "rum",
        "brandy",
        "extract",
        "other",
      ],
      tank_event_type: ["move", "adjustment", "filtering", "destruction"],
      tib_direction: ["inbound", "outbound"],
      ttb_report_status: ["draft", "reviewed", "filed"],
      ttb_report_type: ["production", "storage", "processing"],
      user_role: ["admin", "producer"],
    },
  },
} as const
