-- ============================================================
-- BARRELMONKEY — BARREL IMPORT
-- 1,531 barrels from WhiskeySystems CSV exports
-- Onsite (Nantucket): 1,388 barrels
-- Offsite (Southern Distilling): 143 barrels
-- ============================================================

BEGIN;

-- ============================================================
-- SCHEMA CHANGES
-- ============================================================

-- Widen size_gal constraint to include 70 and 130 gallon barrels
ALTER TABLE barrels DROP CONSTRAINT IF EXISTS barrels_size_gal_check;
ALTER TABLE barrels ADD CONSTRAINT barrels_size_gal_check
  CHECK (size_gal IN (53, 59, 60, 66, 70, 130));

-- Add columns for WS data not yet in schema
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS product_name TEXT;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS expected_use TEXT;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS ws_filling_run_id TEXT;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS quality_rating INTEGER CHECK (quality_rating BETWEEN 1 AND 10);
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS observation_notes TEXT;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS owner_name TEXT;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS ttb_characteristic_flags INTEGER DEFAULT 0;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS ttb_characteristic_flags_str TEXT;
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS net_weight NUMERIC(10,2);
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS gross_weight NUMERIC(10,2);
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS tare_weight NUMERIC(10,2);
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS solera_age_date DATE;

-- Ensure Southern Distilling Offsite rackhouse exists
INSERT INTO rackhouses (name, is_offsite) VALUES ('Southern Distilling Offsite', true)
  ON CONFLICT (name) DO NOTHING;

-- ============================================================
-- BARREL DATA
-- ============================================================

COMMIT;
