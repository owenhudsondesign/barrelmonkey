-- ============================================================
-- BARRELMONKEY — SEED EQUIPMENT
-- Rackhouses, fermenters, and base production tanks
-- (Previously only in seed.sql, which doesn't run on db push)
-- ============================================================

-- Rackhouses
INSERT INTO rackhouses (name, is_offsite) VALUES
  ('Nantucket', false),
  ('North Carolina', true)
ON CONFLICT (name) DO NOTHING;

-- Fermenters (14 named fermenters from 888)
INSERT INTO fermenters (name) VALUES
  ('WC Fields'),
  ('Townes Van Zandt'),
  ('WC Handy'),
  ('ArnoldPotStill'),
  ('Fredrico Felinni'),
  ('Gene Kruppa'),
  ('Iggy Pop'),
  ('Jim Jarmusch'),
  ('John Waters'),
  ('Penelope Houston'),
  ('Tammy Wynette'),
  ('Tom Waits'),
  ('WC Nowhere'),
  ('Yayoi Kusama')
ON CONFLICT (name) DO NOTHING;

-- Base production tanks (from WS activity)
-- Federico Fellini appears as both fermenter and tank; modeled as tank with can_ferment=true
INSERT INTO tanks (name, can_ferment, tank_category) VALUES
  ('Lone Wolf', false, 'production'),
  ('Federico Fellini', true, 'production'),
  ('Abigail Adams', false, 'production'),
  ('Tom Waits', false, 'production'),
  ('WC Handy', false, 'production')
ON CONFLICT (name) DO NOTHING;
