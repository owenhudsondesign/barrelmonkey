-- ============================================================
-- BARRELMONKEY — SEED DATA
-- Triple Eight Distillery reference data
-- ============================================================

-- Rackhouses
INSERT INTO rackhouses (name, is_offsite) VALUES
  ('Nantucket', false),
  ('North Carolina', true);

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
  ('Yayoi Kusama');

-- Tanks (from WS activity — confirm full list with Randy)
-- Federico Fellini appears as both fermenter and tank; modeled as tank with can_ferment=true
INSERT INTO tanks (name, can_ferment, tank_category) VALUES
  ('Lone Wolf', false, 'production'),
  ('Federico Fellini', true, 'production'),
  ('Abigail Adams', false, 'production'),
  ('Tom Waits', false, 'production'),
  ('WC Handy', false, 'production');
