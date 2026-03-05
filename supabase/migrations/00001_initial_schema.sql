-- ============================================================
-- BARRELMONKEY — SUPABASE SCHEMA
-- Triple Eight Distillery
-- ============================================================
-- Design principles:
--   1. Barrels are permanent. Dump = status change, not deletion.
--   2. Every event that touches a barrel is an immutable log entry.
--   3. TTB reports are generated from this data, never entered manually.
--   4. Two roles: admin (Nicole) and producer (Randy's crew).
-- ============================================================


-- ============================================================
-- ENUMS
-- ============================================================

CREATE TYPE user_role AS ENUM ('admin', 'producer');

CREATE TYPE spirit_type AS ENUM (
  'whiskey',
  'bourbon',
  'vodka',
  'gin',
  'rum',
  'brandy',
  'extract',
  'other'
);

CREATE TYPE barrel_status AS ENUM (
  'aging',       -- in a rackhouse, actively aging
  'dumped',      -- contents emptied into a tank/batch
  'empty',       -- waiting for next fill
  'transferred'  -- moved via TIB to another DSP
);

CREATE TYPE barrel_event_type AS ENUM (
  'fill',
  'dump',
  'move',          -- rackhouse location change
  'proof_reading', -- periodic gauging
  'tib_out',       -- transfer in bond outbound
  'tib_in',        -- transfer in bond inbound
  'adjustment',    -- manual correction with note
  'inspection'     -- physical inventory check
);

CREATE TYPE fermentation_status AS ENUM (
  'active',
  'complete',
  'scrapped'
);

CREATE TYPE tank_event_type AS ENUM (
  'move',
  'adjustment',
  'filtering',
  'destruction'
);

CREATE TYPE tib_direction AS ENUM ('inbound', 'outbound');

CREATE TYPE ttb_report_type AS ENUM (
  'production',  -- form 5110.40
  'storage',     -- form 5110.11
  'processing'   -- form 5110.28
);

CREATE TYPE ttb_report_status AS ENUM (
  'draft',
  'reviewed',
  'filed'
);


-- ============================================================
-- USERS
-- ============================================================

CREATE TABLE users (
  id              UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email           TEXT UNIQUE NOT NULL,
  full_name       TEXT NOT NULL DEFAULT '',
  role            user_role NOT NULL DEFAULT 'producer',
  active          BOOLEAN NOT NULL DEFAULT true,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE users ENABLE ROW LEVEL SECURITY;

CREATE POLICY "users_read_all" ON users
  FOR SELECT TO authenticated USING (true);

CREATE POLICY "users_admin_manage" ON users
  FOR ALL USING (
    (SELECT role FROM users WHERE id = auth.uid()) = 'admin'
  );

CREATE POLICY "users_self_read" ON users
  FOR SELECT USING (id = auth.uid());


-- ============================================================
-- HELPER FUNCTION: get current user's role
-- Must be defined after users table exists
-- Used by RLS policies throughout
-- ============================================================

CREATE OR REPLACE FUNCTION public.get_user_role()
RETURNS user_role AS $$
  SELECT role FROM public.users WHERE id = auth.uid()
$$ LANGUAGE sql SECURITY DEFINER STABLE;


-- ============================================================
-- AUTO-CREATE USER ROW ON AUTH SIGNUP
-- ============================================================

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.users (id, email, full_name, role)
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'full_name', ''),
    COALESCE(
      (NEW.raw_user_meta_data->>'role')::user_role,
      'producer'
    )
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();


-- ============================================================
-- REFERENCE TABLES
-- Named assets at 888 — fermenters, tanks, rackhouses
-- ============================================================

CREATE TABLE fermenters (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name        TEXT UNIQUE NOT NULL,
  capacity_gal NUMERIC(10,2),
  active      BOOLEAN NOT NULL DEFAULT true,
  notes       TEXT,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Note: Federico Fellini appears as both fermenter and tank in WS — model as tank with can_ferment=true
CREATE TABLE tanks (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name          TEXT UNIQUE NOT NULL,
  capacity_gal  NUMERIC(10,2),
  can_ferment   BOOLEAN NOT NULL DEFAULT false,
  tank_category TEXT NOT NULL DEFAULT 'production' CHECK (tank_category IN ('production', 'processing', 'extract', 'misc')),
  active        BOOLEAN NOT NULL DEFAULT true,
  notes         TEXT,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE rackhouses (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name        TEXT UNIQUE NOT NULL,
  is_offsite  BOOLEAN NOT NULL DEFAULT false,
  address     TEXT,
  active      BOOLEAN NOT NULL DEFAULT true,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- RLS for reference tables
ALTER TABLE fermenters ENABLE ROW LEVEL SECURITY;
ALTER TABLE tanks ENABLE ROW LEVEL SECURITY;
ALTER TABLE rackhouses ENABLE ROW LEVEL SECURITY;

CREATE POLICY "ref_read" ON fermenters FOR SELECT TO authenticated USING (true);
CREATE POLICY "ref_admin" ON fermenters FOR ALL TO authenticated USING (get_user_role() = 'admin');

CREATE POLICY "ref_read" ON tanks FOR SELECT TO authenticated USING (true);
CREATE POLICY "ref_admin" ON tanks FOR ALL TO authenticated USING (get_user_role() = 'admin');

CREATE POLICY "ref_read" ON rackhouses FOR SELECT TO authenticated USING (true);
CREATE POLICY "ref_admin" ON rackhouses FOR ALL TO authenticated USING (get_user_role() = 'admin');


-- ============================================================
-- PRODUCTION — FERMENTATION
-- ============================================================

CREATE TABLE fermentation_batches (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  cook_number     INTEGER UNIQUE,
  lot_name        TEXT,
  batch_number    TEXT UNIQUE NOT NULL,
  ws_batch_number INTEGER,
  dsp_number      TEXT,
  internal_run_name TEXT,
  internal_lot_name TEXT,
  fermenter_id    UUID NOT NULL REFERENCES fermenters(id),
  spirit_type     spirit_type NOT NULL,
  mash_bill       TEXT,
  bbl_size        INTEGER,
  volume_gal      NUMERIC(10,2),
  start_date      TIMESTAMPTZ NOT NULL,
  stripped_date    TIMESTAMPTZ,
  total_days      NUMERIC(8,2),
  total_hours     NUMERIC(10,2),
  start_sg        NUMERIC(8,4),
  potential_pf    NUMERIC(5,1),
  potential_pg    NUMERIC(10,2),
  ending_sg       NUMERIC(8,4),
  ph              NUMERIC(4,2),
  temp_f          NUMERIC(5,2),
  status          fermentation_status NOT NULL DEFAULT 'active',
  notes           TEXT,
  logged_by       UUID NOT NULL REFERENCES users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE fermentation_moves (
  id                    UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  fermentation_batch_id UUID NOT NULL REFERENCES fermentation_batches(id),
  from_fermenter_id     UUID NOT NULL REFERENCES fermenters(id),
  to_tank_id            UUID NOT NULL REFERENCES tanks(id),
  volume_gal            NUMERIC(10,2) NOT NULL,
  move_date             TIMESTAMPTZ NOT NULL DEFAULT now(),
  notes                 TEXT,
  logged_by             UUID NOT NULL REFERENCES users(id),
  created_at            TIMESTAMPTZ NOT NULL DEFAULT now()
);


-- ============================================================
-- PRODUCTION — DISTILLATION
-- ============================================================

CREATE TABLE distillation_runs (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  run_number      INTEGER UNIQUE NOT NULL,
  lot_name        TEXT,
  spirit_type     spirit_type NOT NULL,
  mash_bill       TEXT,
  still_name      TEXT CHECK (still_name IN ('Rocket', 'Arnold', 'Both')),
  run_phase       TEXT CHECK (run_phase IN ('strip', 'spirit', 'low_wines', 'processing')),
  source_run_id   UUID REFERENCES distillation_runs(id),
  source_tank_id  UUID REFERENCES tanks(id),
  fermentation_batch_id UUID REFERENCES fermentation_batches(id),
  run_timestamp   TIMESTAMPTZ NOT NULL,
  run_date        DATE NOT NULL,
  operator        TEXT,
  output_account  TEXT CHECK (output_account IN ('Production', 'Storage', 'ProcessingBulk')),
  pg_feints       NUMERIC(10,2),
  pg_heads        NUMERIC(10,2),
  pg_hearts       NUMERIC(10,2),
  pg_tails        NUMERIC(10,2),
  pg_low_wines    NUMERIC(10,2),
  pg_total        NUMERIC(10,2),
  proof_in        NUMERIC(6,2),
  proof_out       NUMERIC(6,2),
  proof_gal       NUMERIC(10,2) NOT NULL,
  temp_f          NUMERIC(5,2),
  to_tank_id      UUID REFERENCES tanks(id),
  notes           TEXT,
  logged_by       UUID NOT NULL REFERENCES users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);


-- ============================================================
-- BARRELS — CORE ENTITY
-- Permanent records. Status changes, never deleted.
-- ============================================================

CREATE TABLE barrels (
  id                     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  barrel_number          TEXT UNIQUE NOT NULL,
  previous_barrel_number TEXT,
  ws_barrel_id           TEXT UNIQUE,
  spirit_type            spirit_type NOT NULL,
  status                 barrel_status NOT NULL DEFAULT 'aging',
  -- Physical attributes
  barrel_type            TEXT,
  size_gal               NUMERIC(6,2) CHECK (size_gal IN (53, 59, 60, 66)),
  new_or_used            TEXT,
  cooperage              TEXT,
  -- Current location (denormalized for fast lookup)
  rackhouse_id           UUID REFERENCES rackhouses(id),
  slot                   TEXT,
  -- Fill summary (denormalized from first fill event)
  fill_date              DATE,
  entry_pf               NUMERIC(6,2),
  fill_proof_gal         NUMERIC(10,2),
  fill_wine_gal          NUMERIC(10,2),
  -- Dump summary (populated when dumped)
  dump_date              DATE,
  dump_proof             NUMERIC(6,2),
  dump_proof_gal         NUMERIC(10,2),
  dump_wine_gal          NUMERIC(10,2),
  -- Lot tracking
  lot_number             TEXT,
  internal_lot_name      TEXT,
  -- DSP tracking
  filling_dsp            TEXT DEFAULT 'DSP-MA-20017',
  current_dsp            TEXT DEFAULT 'DSP-MA-20017',
  -- Offsite location
  location_type          TEXT CHECK (location_type IN ('onsite', 'offsite')) DEFAULT 'onsite',
  offsite_facility       TEXT,
  offsite_slot           TEXT,
  dollar_value           NUMERIC(10,2),
  -- Metadata
  notes                  TEXT,
  created_at             TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at             TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Dump batches: a single dump operation covering multiple barrels at once
CREATE TABLE dump_batches (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  dump_date       TIMESTAMPTZ NOT NULL,
  dump_type       TEXT DEFAULT 'standard',
  spirit_type     spirit_type NOT NULL,
  target_tank_id  UUID REFERENCES tanks(id),
  to_account      TEXT CHECK (to_account IN ('Storage', 'Production', 'ProcessingBulk')),
  barrel_count    INTEGER NOT NULL,
  total_opg       NUMERIC(10,2),
  total_rpg       NUMERIC(10,2),
  total_loss_pg   NUMERIC(10,2),
  pct_loss        NUMERIC(5,2),
  blend_lot_name  TEXT,
  notes           TEXT,
  operator        TEXT,
  created_at      TIMESTAMPTZ DEFAULT now()
);

-- Junction: barrel filled from multiple distillation runs (blended fills)
CREATE TABLE barrel_distillation_runs (
  id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  barrel_id           UUID NOT NULL REFERENCES barrels(id),
  distillation_run_id UUID NOT NULL REFERENCES distillation_runs(id),
  UNIQUE (barrel_id, distillation_run_id)
);

-- Immutable event log — the killer feature
CREATE TABLE barrel_events (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  barrel_id       UUID NOT NULL REFERENCES barrels(id),
  event_type      barrel_event_type NOT NULL,
  event_date      TIMESTAMPTZ NOT NULL DEFAULT now(),
  -- Location at time of event
  rackhouse_id    UUID REFERENCES rackhouses(id),
  rack            TEXT,
  row             TEXT,
  position        TEXT,
  dump_batch_id   UUID REFERENCES dump_batches(id),
  fill_batch_id   UUID,
  -- Fill event details
  source_tank_id  UUID REFERENCES tanks(id),
  fill_proof      NUMERIC(6,2),
  tank_pg_start   NUMERIC(10,2),
  tank_pg_end     NUMERIC(10,2),
  barrel_stock    TEXT,
  cooperage       TEXT,
  previous_spirit TEXT,
  barrel_treatment TEXT,
  barrel_condition TEXT CHECK (barrel_condition IN ('new', 'used')),
  gain_loss_pg    NUMERIC(10,2),
  -- Measurements at time of event
  proof           NUMERIC(6,2),
  proof_gal       NUMERIC(10,2),
  wine_gal        NUMERIC(10,2),
  net_weight_lb   NUMERIC(8,2),
  temp_f          NUMERIC(5,2),
  -- For dump events
  to_tank_id      UUID REFERENCES tanks(id),
  batching_run_id UUID,
  -- For move events
  from_rackhouse_id UUID REFERENCES rackhouses(id),
  to_rackhouse_id   UUID REFERENCES rackhouses(id),
  -- For TIB events
  tib_record_id   UUID,
  -- Always
  notes           TEXT,
  logged_by       UUID NOT NULL REFERENCES users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
  -- No updated_at — events are immutable
);

CREATE INDEX barrel_events_barrel_id_idx ON barrel_events(barrel_id, event_date DESC);
CREATE INDEX barrel_events_type_date_idx ON barrel_events(event_type, event_date DESC);
CREATE INDEX barrels_status_idx ON barrels(status);
CREATE INDEX barrels_spirit_type_idx ON barrels(spirit_type);
CREATE INDEX barrels_rackhouse_idx ON barrels(rackhouse_id);
CREATE INDEX barrels_fill_date_idx ON barrels(fill_date);

-- RLS for barrels
ALTER TABLE barrels ENABLE ROW LEVEL SECURITY;
ALTER TABLE barrel_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE dump_batches ENABLE ROW LEVEL SECURITY;
ALTER TABLE barrel_distillation_runs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "barrels_read" ON barrels FOR SELECT TO authenticated USING (true);
CREATE POLICY "barrels_insert" ON barrels FOR INSERT TO authenticated
  WITH CHECK (get_user_role() IN ('admin', 'producer'));
CREATE POLICY "barrels_update" ON barrels FOR UPDATE TO authenticated
  USING (get_user_role() = 'admin')
  WITH CHECK (get_user_role() = 'admin');
CREATE POLICY "barrels_delete" ON barrels FOR DELETE TO authenticated
  USING (get_user_role() = 'admin');

CREATE POLICY "barrel_events_read" ON barrel_events FOR SELECT TO authenticated USING (true);
CREATE POLICY "barrel_events_insert" ON barrel_events FOR INSERT TO authenticated
  WITH CHECK (logged_by = auth.uid());
CREATE POLICY "barrel_events_update" ON barrel_events FOR UPDATE TO authenticated
  USING (get_user_role() = 'admin');
CREATE POLICY "barrel_events_delete" ON barrel_events FOR DELETE TO authenticated
  USING (get_user_role() = 'admin');

CREATE POLICY "dump_batches_read" ON dump_batches FOR SELECT TO authenticated USING (true);
CREATE POLICY "dump_batches_admin" ON dump_batches FOR ALL TO authenticated USING (get_user_role() = 'admin');

CREATE POLICY "barrel_dist_runs_read" ON barrel_distillation_runs FOR SELECT TO authenticated USING (true);
CREATE POLICY "barrel_dist_runs_insert" ON barrel_distillation_runs FOR INSERT TO authenticated
  WITH CHECK (get_user_role() IN ('admin', 'producer'));


-- ============================================================
-- TANKS
-- ============================================================

CREATE TABLE tank_events (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tank_id       UUID NOT NULL REFERENCES tanks(id),
  event_type    tank_event_type NOT NULL,
  event_date    TIMESTAMPTZ NOT NULL DEFAULT now(),
  proof_gal_start   NUMERIC(10,2),
  proof_gal_end     NUMERIC(10,2),
  proof_gal_delta   NUMERIC(10,2),
  wine_gal          NUMERIC(10,2),
  proof             NUMERIC(6,2),
  temp_f            NUMERIC(5,2),
  to_tank_id        UUID REFERENCES tanks(id),
  from_tank_id      UUID REFERENCES tanks(id),
  distillation_run_id UUID REFERENCES distillation_runs(id),
  notes             TEXT,
  logged_by         UUID NOT NULL REFERENCES users(id),
  created_at        TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE tank_events ENABLE ROW LEVEL SECURITY;
CREATE POLICY "tank_events_read" ON tank_events FOR SELECT TO authenticated USING (true);
CREATE POLICY "tank_events_insert" ON tank_events FOR INSERT TO authenticated
  WITH CHECK (logged_by = auth.uid());


-- ============================================================
-- PROCESSING — BATCHING & BOTTLING
-- ============================================================

CREATE TABLE batching_runs (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  batch_number    TEXT UNIQUE NOT NULL,
  spirit_type     spirit_type NOT NULL,
  product_name    TEXT NOT NULL,
  batch_date      DATE NOT NULL,
  proof_in        NUMERIC(6,2),
  wine_gal_in     NUMERIC(10,2),
  proof_gal_in    NUMERIC(10,2),
  water_added_gal NUMERIC(10,2),
  target_proof    NUMERIC(6,2),
  actual_proof    NUMERIC(6,2),
  wine_gal_out    NUMERIC(10,2),
  proof_gal_out   NUMERIC(10,2),
  to_tank_id      UUID REFERENCES tanks(id),
  notes           TEXT,
  logged_by       UUID NOT NULL REFERENCES users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE batching_run_barrels (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  batching_run_id UUID NOT NULL REFERENCES batching_runs(id),
  barrel_id       UUID NOT NULL REFERENCES barrels(id),
  proof_gal_contributed NUMERIC(10,2),
  wine_gal_contributed  NUMERIC(10,2),
  notes           TEXT
);

CREATE TABLE batching_run_tanks (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  batching_run_id UUID NOT NULL REFERENCES batching_runs(id),
  tank_id         UUID NOT NULL REFERENCES tanks(id),
  proof_gal_contributed NUMERIC(10,2),
  wine_gal_contributed  NUMERIC(10,2),
  notes           TEXT
);

-- Add deferred FK on barrel_events
ALTER TABLE barrel_events
  ADD CONSTRAINT barrel_events_batching_run_fk
  FOREIGN KEY (batching_run_id) REFERENCES batching_runs(id);

CREATE TABLE bottling_runs (
  id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  bottling_number   INTEGER,
  lot_name          TEXT,
  start_cs_serial   TEXT,
  end_cs_serial     TEXT,
  product_name      TEXT NOT NULL,
  recipe            TEXT,
  spirit_type       spirit_type NOT NULL,
  bottle_date       TIMESTAMPTZ NOT NULL,
  source_tank_id    UUID REFERENCES tanks(id),
  batching_run_id   UUID REFERENCES batching_runs(id),
  ttb_formula       TEXT,
  starting_pg_in_tank NUMERIC(10,2),
  proof_gal_bottled NUMERIC(10,2),
  wine_gal_bottled  NUMERIC(10,2),
  pack_format       TEXT,
  bottle_size_ml    NUMERIC(8,2),
  bottles_per_case  INTEGER,
  cases_filled      INTEGER NOT NULL DEFAULT 0,
  loose_bottles     INTEGER NOT NULL DEFAULT 0,
  pg_loss           NUMERIC(8,2),
  pct_loss          NUMERIC(6,2),
  labor_hours       NUMERIC(6,2),
  total_value       NUMERIC(12,2),
  price_per_case    NUMERIC(10,2),
  price_per_bottle  NUMERIC(8,4),
  notes             TEXT,
  logged_by         UUID NOT NULL REFERENCES users(id),
  created_at        TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at        TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE batching_runs ENABLE ROW LEVEL SECURITY;
ALTER TABLE batching_run_barrels ENABLE ROW LEVEL SECURITY;
ALTER TABLE batching_run_tanks ENABLE ROW LEVEL SECURITY;
ALTER TABLE bottling_runs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "batching_read" ON batching_runs FOR SELECT TO authenticated USING (true);
CREATE POLICY "batching_insert" ON batching_runs FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());
CREATE POLICY "batching_barrels_read" ON batching_run_barrels FOR SELECT TO authenticated USING (true);
CREATE POLICY "batching_tanks_read" ON batching_run_tanks FOR SELECT TO authenticated USING (true);
CREATE POLICY "bottling_read" ON bottling_runs FOR SELECT TO authenticated USING (true);
CREATE POLICY "bottling_insert" ON bottling_runs FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());


-- ============================================================
-- TRANSFERS IN BOND (TIB)
-- ============================================================

CREATE TABLE tib_records (
  id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tib_number        INTEGER,
  direction         tib_direction NOT NULL,
  tib_type          TEXT CHECK (tib_type IN ('TIB', 'TaxPaid')),
  transfer_date     TIMESTAMPTZ NOT NULL,
  spirit_type       spirit_type NOT NULL,
  lot_name          TEXT,
  ttb_formula       TEXT,
  dsp_name          TEXT,
  dsp_number        TEXT,
  ref_number        TEXT,
  po_number         TEXT,
  container_ct      INTEGER DEFAULT 1,
  total_pg          NUMERIC(10,2),
  total_wg          NUMERIC(10,2),
  pf                NUMERIC(6,2),
  price_per_pg      NUMERIC(8,4),
  is_organic        BOOLEAN DEFAULT false,
  dest_account      TEXT,
  wip_value         NUMERIC(10,2),
  tax_due           NUMERIC(10,2),
  form_5100_16      TEXT,
  notes             TEXT,
  logged_by         UUID NOT NULL REFERENCES users(id),
  created_at        TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE tib_barrels (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tib_record_id UUID NOT NULL REFERENCES tib_records(id),
  barrel_id     UUID NOT NULL REFERENCES barrels(id),
  proof_gal     NUMERIC(10,2),
  wine_gal      NUMERIC(10,2),
  proof         NUMERIC(6,2)
);

ALTER TABLE barrel_events
  ADD CONSTRAINT barrel_events_tib_record_fk
  FOREIGN KEY (tib_record_id) REFERENCES tib_records(id);

ALTER TABLE tib_records ENABLE ROW LEVEL SECURITY;
ALTER TABLE tib_barrels ENABLE ROW LEVEL SECURITY;
CREATE POLICY "tib_read" ON tib_records FOR SELECT TO authenticated USING (true);
CREATE POLICY "tib_insert" ON tib_records FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());
CREATE POLICY "tib_barrels_read" ON tib_barrels FOR SELECT TO authenticated USING (true);


-- ============================================================
-- TANK ADJUSTMENTS
-- ============================================================

CREATE TABLE tank_adjustments (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  adjustment_date TIMESTAMPTZ NOT NULL,
  account         TEXT NOT NULL,
  tank_id         UUID REFERENCES tanks(id),
  tank_name_raw   TEXT,
  spirit_type     spirit_type NOT NULL,
  original_pg     NUMERIC(10,2),
  original_pf     NUMERIC(6,2),
  final_pg        NUMERIC(10,2),
  final_pf        NUMERIC(6,2),
  net_pg          NUMERIC(10,2),
  notes           TEXT,
  logged_by       UUID NOT NULL REFERENCES users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE tank_adjustments ENABLE ROW LEVEL SECURITY;
CREATE POLICY "tank_adj_read" ON tank_adjustments FOR SELECT TO authenticated USING (true);
CREATE POLICY "tank_adj_insert" ON tank_adjustments FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());


-- ============================================================
-- TTB REPORTS
-- ============================================================

CREATE TABLE ttb_reports (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  report_type     ttb_report_type NOT NULL,
  period_month    INTEGER NOT NULL CHECK (period_month BETWEEN 1 AND 12),
  period_year     INTEGER NOT NULL,
  status          ttb_report_status NOT NULL DEFAULT 'draft',
  report_data     JSONB NOT NULL DEFAULT '{}',
  ai_summary      TEXT,
  generated_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
  generated_by    UUID REFERENCES users(id),
  reviewed_at     TIMESTAMPTZ,
  reviewed_by     UUID REFERENCES users(id),
  filed_at        TIMESTAMPTZ,
  filed_by        UUID REFERENCES users(id),
  notes           TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (report_type, period_month, period_year)
);

ALTER TABLE ttb_reports ENABLE ROW LEVEL SECURITY;
CREATE POLICY "ttb_read" ON ttb_reports FOR SELECT TO authenticated USING (true);
CREATE POLICY "ttb_admin_manage" ON ttb_reports FOR ALL TO authenticated USING (get_user_role() = 'admin');


-- ============================================================
-- CSV IMPORTS
-- ============================================================

CREATE TABLE csv_imports (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  import_type     TEXT NOT NULL,
  filename        TEXT NOT NULL,
  row_count       INTEGER,
  success_count   INTEGER,
  error_count     INTEGER,
  errors          JSONB,
  imported_by     UUID NOT NULL REFERENCES users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE csv_imports ENABLE ROW LEVEL SECURITY;
CREATE POLICY "csv_admin" ON csv_imports FOR ALL TO authenticated USING (get_user_role() = 'admin');


-- ============================================================
-- RLS for production tables
-- ============================================================

ALTER TABLE fermentation_batches ENABLE ROW LEVEL SECURITY;
ALTER TABLE fermentation_moves ENABLE ROW LEVEL SECURITY;
ALTER TABLE distillation_runs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "ferm_read" ON fermentation_batches FOR SELECT TO authenticated USING (true);
CREATE POLICY "ferm_insert" ON fermentation_batches FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());
CREATE POLICY "ferm_moves_read" ON fermentation_moves FOR SELECT TO authenticated USING (true);
CREATE POLICY "ferm_moves_insert" ON fermentation_moves FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());
CREATE POLICY "dist_read" ON distillation_runs FOR SELECT TO authenticated USING (true);
CREATE POLICY "dist_insert" ON distillation_runs FOR INSERT TO authenticated WITH CHECK (logged_by = auth.uid());


-- ============================================================
-- VIEWS (FIXED from original schema)
-- ============================================================

CREATE VIEW active_barrels AS
SELECT
  b.id,
  b.barrel_number,
  b.spirit_type,
  b.status,
  b.fill_date,
  b.entry_pf,
  b.fill_proof_gal,
  b.fill_wine_gal,
  b.size_gal,
  b.barrel_type,
  r.name AS rackhouse,
  r.is_offsite,
  b.slot,
  EXTRACT(YEAR FROM AGE(now(), b.fill_date::TIMESTAMPTZ))::INT AS years_aging,
  b.notes
FROM barrels b
LEFT JOIN rackhouses r ON r.id = b.rackhouse_id
WHERE b.status = 'aging'
ORDER BY b.fill_date ASC;

CREATE VIEW barrel_timeline AS
SELECT
  b.id AS barrel_id,
  b.barrel_number,
  b.spirit_type,
  b.status,
  b.fill_date,
  b.dump_date,
  be.id AS event_id,
  be.event_type,
  be.event_date,
  be.proof,
  be.proof_gal,
  be.wine_gal,
  be.net_weight_lb,
  be.temp_f,
  be.rack,
  be.row,
  be.position,
  r_event.name AS event_rackhouse,
  r_from.name  AS moved_from,
  r_to.name    AS moved_to,
  be.notes     AS event_notes,
  u.full_name  AS logged_by_name
FROM barrels b
JOIN barrel_events be ON be.barrel_id = b.id
LEFT JOIN rackhouses r_event ON r_event.id = be.rackhouse_id
LEFT JOIN rackhouses r_from  ON r_from.id  = be.from_rackhouse_id
LEFT JOIN rackhouses r_to    ON r_to.id    = be.to_rackhouse_id
LEFT JOIN users u ON u.id = be.logged_by
ORDER BY b.barrel_number, be.event_date ASC;

CREATE VIEW monthly_production AS
SELECT
  DATE_TRUNC('month', run_date::TIMESTAMPTZ) AS month,
  spirit_type,
  COUNT(*) AS run_count,
  SUM(proof_gal) AS total_proof_gal,
  SUM(pg_total) AS total_pg
FROM distillation_runs
GROUP BY 1, 2
ORDER BY 1 DESC, 2;
