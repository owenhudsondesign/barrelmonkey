-- ============================================================
-- BARRELMONKEY — Import Barrel Fill Events from BarrelFills.csv
-- 182 fill records from WhiskeySystems export
-- Each fill covers a range of barrels (BblRange)
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  -- Ensure referenced tanks exist
  INSERT INTO tanks (name, tank_category) VALUES ('Abigail Adams', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Akira Kurosawa', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Ava DuVernay', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Brian Eno', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Clyde Stubblefield', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Debbie Harry', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Eilen Gray', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Emmylou Harris', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Gary Numan', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('George Washington Carver', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Hal Blaine- Steel Drum', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Howard Hawk', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Lone Wolf', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Nina Hagen', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Penelope Houston', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Polly Platt', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sir Dump A Lot', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Slope Bottom F4- Wine Deck', 'production') ON CONFLICT (name) DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:17:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 55.12, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1854'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:17:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 55.12, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1855'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:17:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 55.12, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1856'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:36:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2142'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:42:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 64.9, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2147'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:42:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 64.9, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2148'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T19:49:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 107.700000, 63.543, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Double Arnold with a little Rocket new make redistilled. Dirty Dean', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2233'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T18:41:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 59.64, 60.0,
    'Whisky Crisp Maris Otter Malt 19. SRT Rum/Rum/Rum/Rum/MO19
5th use', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2027'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T18:41:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 59.64, 60.0,
    'Whisky Crisp Maris Otter Malt 19. SRT Rum/Rum/Rum/Rum/MO19
5th use', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2028'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-25T14:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 123.600000, 65.508, 53.0,
    'Rum Nantucket Molasses Grade A. Pulled new make of this for reference. Rocket Top Feed C1-193 C2-150 DistilamaxRM Fruit 28 Day ferment Never over 84 F', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1789'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1877'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1878'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1879'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1880'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1881'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1882'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 106.600000, 26.040857, 24.428571,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 
STR or STR Bourbon', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1883'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-14T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 121.800000, 64.554, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2250'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-14T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 121.800000, 64.554, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2251'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-14T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 121.800000, 64.554, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2252'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-14T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 121.800000, 64.554, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2253'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-14T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 121.800000, 64.554, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2254'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-14T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 121.800000, 64.554, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2255'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 113.000000, 66.67, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2234'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 113.000000, 66.67, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2235'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 113.000000, 66.67, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2236'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 113.000000, 66.67, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2237'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-08T20:06:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 118.000000, 69.62, 59.0,
    'Rum Nantucket Molasses Grade A. DistillaMax RM
25-30% Dunder
Fruit Bacteria post Ferm
C1-192 C2-150 Top Feed 
28 Day Fermentation
Rocket still has continuously losing alcohol in the stillage. More than it should', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1790'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-08T20:06:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 118.000000, 69.62, 59.0,
    'Rum Nantucket Molasses Grade A. DistillaMax RM
25-30% Dunder
Fruit Bacteria post Ferm
C1-192 C2-150 Top Feed 
28 Day Fermentation
Rocket still has continuously losing alcohol in the stillage. More than it should', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1791'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:30:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 69.0, 60.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1833'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:30:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 69.0, 60.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1834'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1738'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1739'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1740'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1741'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1742'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1743'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1744'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1745'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1746'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1747'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1748'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1749'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1750'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1751'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1752'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-04-07T17:43:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 63.042, 57.0,
    'Rum Blends. Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1753'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-22T20:40:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 109.500000, 58.035, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1989'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-22T20:40:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 109.500000, 58.035, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1990'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-05T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.71, 53.5,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2132'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-05T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.71, 53.5,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2133'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-05T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.71, 53.5,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2134'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-05T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.71, 53.5,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2135'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1765'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1766'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1767'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1768'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1769'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1770'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1771'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1772'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-26T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 101.000000, 53.193333, 52.666667,
    'Whisky Bourbon Blend NEB. 3.5yo southern distilling used', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1773'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 111.200000, 65.608, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Column and Pot Still new make blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2049'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 111.200000, 65.608, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Column and Pot Still new make blend', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2050'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2051'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2052'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2053'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2054'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2055'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2056'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-20T21:41:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 103.200000, 55.458333, 53.74,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1695'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-20T21:41:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 103.200000, 55.458333, 53.74,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1696'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-20T21:41:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 103.200000, 55.458333, 53.74,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1697'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T19:29:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 60.6, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1959'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T19:29:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 60.6, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1960'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T19:29:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 60.6, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1961'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-05T20:38:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 133.000000, 67.83, 51.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2268'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-13T14:33:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 120.300000, 62.556, 52.0,
    'Whisky Single Malt. fraziers'' barrels', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2279'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-08T00:11:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 116.900000, 70.14, 60.0,
    'Rum Nantucket Molasses Grade A. DistillaMaxRM & SafAle BE-134', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1803'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:39:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1837'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:39:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1838'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:39:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1839'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:39:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1840'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T20:58:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 59.36, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2019'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T20:58:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 59.36, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2020'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.000000, 60.95, 53.0,
    'Whisky Crisp Maris Otter Malt 19. 62% Rocket Spirit
38% Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2238'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.000000, 60.95, 53.0,
    'Whisky Crisp Maris Otter Malt 19. 62% Rocket Spirit
38% Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2239'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.000000, 60.95, 53.0,
    'Whisky Crisp Maris Otter Malt 19. 62% Rocket Spirit
38% Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2240'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.000000, 60.95, 53.0,
    'Whisky Crisp Maris Otter Malt 19. 62% Rocket Spirit
38% Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2241'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.000000, 60.95, 53.0,
    'Whisky Crisp Maris Otter Malt 19. 62% Rocket Spirit
38% Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2242'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.000000, 60.95, 53.0,
    'Whisky Crisp Maris Otter Malt 19. 62% Rocket Spirit
38% Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2243'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-30T16:03:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 114.000000, 68.4, 60.0,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1998'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:29:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 121.900000, 64.607, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1863'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 63.0, 56.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2075'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 63.0, 56.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2076'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 63.0, 56.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2077'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 63.0, 56.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2078'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T17:53:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 112.000000, 59.36, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit and Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2082'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:42:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 69.0, 60.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1843'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-21T20:15:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 115.800000, 69.48, 60.0,
    'Whisky Crisp Maris Otter Malt 19. A touch of spirit with a "low" cut, but the rest distilled caps down. The Low Wines were a mix of rocket and Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2071'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T23:51:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 124.000000, 65.72, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket (compare others)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2244'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T23:51:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 124.000000, 65.72, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket (compare others)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2245'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T23:51:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 124.000000, 65.72, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket (compare others)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2246'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T23:51:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 124.000000, 65.72, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket (compare others)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2247'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T23:51:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 124.000000, 65.72, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket (compare others)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2248'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-16T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.200000, 61.586, 53.0,
    'Rum Nantucket Molasses Grade A. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1714'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-16T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.200000, 61.586, 53.0,
    'Rum Nantucket Molasses Grade A. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1715'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-16T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.200000, 61.586, 53.0,
    'Rum Nantucket Molasses Grade A. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1716'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-16T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.200000, 61.586, 53.0,
    'Rum Nantucket Molasses Grade A. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1717'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-16T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.200000, 61.586, 53.0,
    'Rum Nantucket Molasses Grade A. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1718'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-26T17:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.900000, 56.657, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1729'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-26T17:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.900000, 56.657, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1730'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-26T17:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.900000, 56.657, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1731'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-26T17:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.900000, 56.657, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1732'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-26T17:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.900000, 56.657, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1733'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-14T16:56:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 122.500000, 64.925, 53.0,
    'Rum Nantucket Molasses Grade A. Rocket spirit DistillaMaxRM', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1793'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-21T14:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 62.72, 56.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2203'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-21T14:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 62.72, 56.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2204'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-21T14:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 62.72, 56.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2205'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-21T14:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 62.72, 56.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2206'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-20T21:35:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.700000, 54.961, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1817'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-20T21:35:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.700000, 54.961, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1818'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-20T21:35:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.700000, 54.961, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1819'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-23T15:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 115.800000, 61.374, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1991'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-23T15:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 115.800000, 61.374, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1992'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T19:43:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 108.500000, 64.015, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1964'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-10T18:27:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 128.300000, 84.678, 66.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1782'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-10T18:27:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 128.300000, 84.678, 66.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1783'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T19:54:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 122.900000, 65.137, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1830'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-21T20:18:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 107.800000, 64.68, 60.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit between 125 - 127 distillation proof. VFD has been down so more of a manual run', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2072'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-05T22:00:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 105.300000, 55.809, 53.0,
    'Whisky Single Malt. 73.3% Simpsons Finest Lager 26.7% Weyermann Vienna
8% ABV and 3.6pH
25 day fermentation
Very little burp from the previous distillation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2184'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-04T22:13:00',
    (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1), 120.000000, 79.2, 66.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1729'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-05-25T19:27:00',
    (SELECT id FROM tanks WHERE name = 'Hal Blaine- Steel Drum' LIMIT 1), 100.000000, 52.74, 52.74,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1759'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:43:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.800000, 63.602, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Medium Long Toast
Extra tight grain American Oak staved air dried minimum 3 years', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2048'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-05T20:46:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 116.000000, 62.64, 54.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2269'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-05T20:46:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 116.000000, 62.64, 54.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2270'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T20:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 42.834, 39.333333,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 SO4 Red Star SRT STR lower cuts than in the past', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1871'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T20:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 42.834, 39.333333,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 SO4 Red Star SRT STR lower cuts than in the past', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1872'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T20:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 42.834, 39.333333,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 SO4 Red Star SRT STR lower cuts than in the past', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1873'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-05T14:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 116.400000, 61.692, 53.0,
    'Whisky Single Malt. 73.3% Simpsons Finest Lager 26.7% Weyermann Vienna
8% ABV and 3.6pH
25 day fermentation
some type of burp during column distillation. Hazy days of summer', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2183'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 60.95, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1835'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 60.95, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1836'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T19:26:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 107.700000, 63.543, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket distillate after column still modifications', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2230'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2087'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2088'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2089'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2090'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2091'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2092'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-07T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 41.000000, 23.487143, 57.285714,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2093'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-13T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 125.800000, 70.448, 56.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2280'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2007'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2008'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2009'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2010'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2011'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2012'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2013'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-15T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 102.500000, 59.45, 58.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit run
Rocket Stripping run
Hybrid plates and bubble caps not engaged. Cut around 100 proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2014'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T18:53:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 113.800000, 67.142, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 SO4 Red Star Symphony new Nadalie', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1874'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-13T16:02:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 120.000000, 60.0, 50.0,
    'Whisky GL', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2105'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-20T22:15:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Mix of MO#19 and Pilsner Vienna', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2200'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-20T22:15:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Mix of MO#19 and Pilsner Vienna', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2201'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-10T18:32:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 128.300000, 76.98, 60.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1784'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-10T18:32:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 128.300000, 76.98, 60.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1785'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T20:23:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2287'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T20:23:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2288'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T20:23:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2289'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T20:23:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2290'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T20:23:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2291'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T20:23:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2292'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-13T21:51:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.300000, 61.639, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1848'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-13T21:51:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.300000, 61.639, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1849'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-22T19:31:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 97.000000, 64.02, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Ex-Sherry Casknolia Oloroso', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1985'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.000000, 55.64, 52.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2125'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.000000, 55.64, 52.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2126'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.000000, 55.64, 52.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2127'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2157'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2158'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2159'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2160'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2161'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2162'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2163'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2164'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2165'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2166'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2167'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2168'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2169'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2170'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2171'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2172'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2173'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2174'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-01T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 109.500000, 63.51, 58.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2175'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T18:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19. VFD has been down
Rocket Spirit typically between 122-125', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2057'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T18:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19. VFD has been down
Rocket Spirit typically between 122-125', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2058'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T18:32:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 109.800000, 58.194, 53.0,
    'Whisky Crisp Maris Otter Malt 19. VFD has been down
Rocket Spirit typically between 122-125', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2059'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-08T14:47:00',
    (SELECT id FROM tanks WHERE name = 'Slope Bottom F4- Wine Deck' LIMIT 1), 121.300000, 84.91, 70.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '711'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-13T21:57:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 109.800000, 64.782, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket and Rocket Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1853'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-27T22:02:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.500000, 64.5, 60.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1867'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T13:56:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.000000, 64.96, 58.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2122'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T13:56:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.000000, 64.96, 58.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2123'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 61.36, 59.0,
    'Whisky Crisp Maris Otter Malt 19. see 1854-1856 or the barrel book
lower cuts', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1857'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 61.36, 59.0,
    'Whisky Crisp Maris Otter Malt 19. see 1854-1856 or the barrel book
lower cuts', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1858'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 61.36, 59.0,
    'Whisky Crisp Maris Otter Malt 19. see 1854-1856 or the barrel book
lower cuts', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1859'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 61.36, 59.0,
    'Whisky Crisp Maris Otter Malt 19. see 1854-1856 or the barrel book
lower cuts', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1860'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 61.36, 59.0,
    'Whisky Crisp Maris Otter Malt 19. see 1854-1856 or the barrel book
lower cuts', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1861'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-18T15:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 104.000000, 61.36, 59.0,
    'Whisky Crisp Maris Otter Malt 19. see 1854-1856 or the barrel book
lower cuts', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1862'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T18:55:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 71.874, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 SO4 Red Star Oloroso Sherry Casknolia', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1869'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T12:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 124.000000, 81.84, 66.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2038'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T12:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 124.000000, 81.84, 66.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2039'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-21T18:51:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 109.700000, 58.141, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Dec 20thn distillation was hazy off the rocket, yet tasted fine. This barrel is about 22 gallons of that with Rocket Spirit from Penelope (clear, no haze)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2070'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2207'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2208'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2209'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2210'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2211'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2212'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2213'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 101.000000, 57.44375, 56.875,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2214'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-09T16:35:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 133.000000, 87.78, 66.0,
    'Whisky Single Malt. former barrels 10001 & 10002', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1780'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-09T16:35:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 133.000000, 87.78, 66.0,
    'Whisky Single Malt. former barrels 10001 & 10002', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1781'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-30T15:57:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 114.000000, 67.26, 59.0,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1993'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-30T15:57:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 114.000000, 67.26, 59.0,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1994'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-30T15:57:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 114.000000, 67.26, 59.0,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1995'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-30T15:57:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 114.000000, 67.26, 59.0,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1996'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-30T15:57:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 114.000000, 67.26, 59.0,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1997'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:44:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 66.0, 60.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2149'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-22T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 111.000000, 58.83, 53.0,
    'Rum Nantucket Molasses Grade A. 100% molasses rather long ferment', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1754'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-22T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 111.000000, 58.83, 53.0,
    'Rum Nantucket Molasses Grade A. 100% molasses rather long ferment', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1755'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-22T21:16:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 111.000000, 58.83, 53.0,
    'Rum Nantucket Molasses Grade A. 100% molasses rather long ferment', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1756'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1794'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1795'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1796'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1797'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1798'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1799'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-18T16:23:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.300000, 62.868857, 59.142857,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1800'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T20:45:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 59.36, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2015'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T20:45:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 59.36, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2016'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T20:45:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 59.36, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2017'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T20:45:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 59.36, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2018'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-21T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 107.700000, 71.082, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit between 125 - 127 distillation proof. VFD has been down so more of a manual run', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2074'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-09T16:16:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 124.400000, 65.932, 53.0,
    'Rum Nantucket Molasses Grade A. Fermentation had a temperature spike. Bacteria took a hold. Acetic quality', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1760'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2106'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2107'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2108'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2109'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2110'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2111'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2112'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2113'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2114'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2115'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2116'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-21T20:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 106.100000, 58.8855, 55.5,
    'Whisky Bourbon Blend NEB. Re-barrel NEB bottling blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2117'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1999'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2000'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2001'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2002'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2003'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2004'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2005'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-05T14:35:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 102.000000, 60.18, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2006'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-06T15:36:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 123.600000, 64.89, 52.5,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2271'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-06T15:36:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 123.600000, 64.89, 52.5,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2272'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-20T22:07:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 105.000000, 55.65, 53.0,
    'Whisky Crisp Maris Otter Malt 19. MO#19 and some Vienna and Pilsner from earlier distillation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2199'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-05-04T15:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1755'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-05-04T15:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1756'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-30T21:37:00',
    (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1), 108.600000, 64.844622, 59.71,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1734'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-30T21:37:00',
    (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1), 108.600000, 64.844622, 59.71,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1735'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-30T21:37:00',
    (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1), 108.600000, 64.844622, 59.71,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1736'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-30T21:37:00',
    (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1), 108.600000, 64.844622, 59.71,
    'Whisky Bourbon MGP 21Rye', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1737'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-27T18:51:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 107.800000, 47.971, 44.5,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1774'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-27T18:51:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 107.800000, 47.971, 44.5,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1775'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-21T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 115.800000, 76.428, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Ex-Oloroso Sherry barrel. CaskNola?
Arnold spirit from a combo of Arnold and Rocket Low Wines. This combination lowered the low wine abc to 30%', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2073'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-24T21:59:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 112.500000, 59.625, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1806'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-24T21:59:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 112.500000, 59.625, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1807'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-23T19:56:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 117.800000, 75.392, 64.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2038'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-23T19:56:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 117.800000, 75.392, 64.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2039'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-23T19:56:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 117.800000, 75.392, 64.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2040'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-23T19:56:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 117.800000, 75.392, 64.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2041'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-23T19:56:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 117.800000, 75.392, 64.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2042'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-22T18:34:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 115.000000, 57.5, 50.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2118'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-22T18:34:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 115.000000, 57.5, 50.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2119'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:29:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.000000, 60.77, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Medium Long Toast
Extra tight grain American Oak staved air dried minimum 3 years', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2043'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:29:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.000000, 60.77, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Medium Long Toast
Extra tight grain American Oak staved air dried minimum 3 years', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2044'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:29:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.000000, 60.77, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Medium Long Toast
Extra tight grain American Oak staved air dried minimum 3 years', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2045'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:29:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.000000, 60.77, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Medium Long Toast
Extra tight grain American Oak staved air dried minimum 3 years', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2046'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-10-12T20:29:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.000000, 60.77, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Medium Long Toast
Extra tight grain American Oak staved air dried minimum 3 years', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2047'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T18:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 113.800000, 75.108, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 SO4 Red Star Oloroso Sherry Casknolia', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1868'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-18T17:31:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.500000, 74.25, 66.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2037'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-29T17:15:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 99.500000, 62.685, 63.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2151'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-29T17:15:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 99.500000, 62.685, 63.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2152'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1698'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1699'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1700'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1701'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1702'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1703'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1704'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1705'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-01T20:51:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 110.600000, 61.274778, 55.402222,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1706'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T22:30:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.900000, 66.54, 60.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Rocket Spirit Maris Otter STR Chard Cider', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1878'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-07-12T17:57:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 121.400000, 64.342, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1775'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-07-12T17:57:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 121.400000, 64.342, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1776'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-28T17:28:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 112.400000, 59.572, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1823'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:40:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 60.95, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1841'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:40:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 60.95, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1842'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T21:30:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 58.646, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble caps down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2034'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 61.891, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1979'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 61.891, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1980'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 61.891, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1981'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 61.891, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1982'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 61.891, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1983'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 61.891, 59.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1984'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T13:54:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.000000, 64.96, 58.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2120'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T13:54:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.000000, 64.96, 58.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2121'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-29T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 115.100000, 61.003, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Whisky Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1808'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-29T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 115.100000, 61.003, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Whisky Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1809'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-29T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 115.100000, 61.003, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Whisky Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1810'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-29T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 115.100000, 61.003, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Whisky Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1811'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T12:22:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 124.000000, 73.16, 59.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2040'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T20:13:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 64.251, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Arnold Spirit Maris Otter 19 SO4 Red Star new symphony Nadalie', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1875'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 67.614, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 Symphony', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1876'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-21T18:39:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 115.400000, 61.162, 53.0,
    'Whisky Crisp Maris Otter Malt 19. The new make was a little hazy but tasted good', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2069'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-12T18:54:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 129.000000, 58.05, 45.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2276'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-12T18:54:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 129.000000, 58.05, 45.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2277'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-22T20:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 109.500000, 64.605, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1987'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-22T20:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 109.500000, 64.605, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1988'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2185'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2186'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2187'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2188'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2189'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2190'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2191'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2192'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2193'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2194'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2195'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:47:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 50.68, 56.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2196'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T19:12:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 119.300000, 70.387, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1824'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T19:12:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 119.300000, 70.387, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1825'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-08T20:11:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 67.614, 59.0,
    'Whisky Crisp Maris Otter Malt 19. See notes on barrels 1812-1815
Post Johnny Jeffery visit
Intentionally feints-y', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1816'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-20T22:20:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 105.000000, 55.65, 53.0,
    'Whisky Crisp Maris Otter Malt 19. This is actually 100% MO#19
There was an issue during distillation and some extra high boilers / tails cut may be present.
Barrel was proofed, filled then transferred to Ava', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2202'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-08T20:06:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 60.738, 53.0,
    'Whisky Crisp Maris Otter Malt 19. The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1812'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-08T20:06:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 60.738, 53.0,
    'Whisky Crisp Maris Otter Malt 19. The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1813'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-08T20:06:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 60.738, 53.0,
    'Whisky Crisp Maris Otter Malt 19. The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1814'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-08T20:06:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 60.738, 53.0,
    'Whisky Crisp Maris Otter Malt 19. The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1815'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T18:44:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 113.800000, 67.142, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 SO4 Red Star SRT STR', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1870'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 62.94, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1973'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 62.94, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1974'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 62.94, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1975'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 62.94, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1976'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 62.94, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1977'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-14T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 104.900000, 62.94, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1978'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:00:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1831'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:00:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1832'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T20:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 119.300000, 63.229, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1826'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T20:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 119.300000, 63.229, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1827'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T20:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 119.300000, 63.229, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1828'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-30T20:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 119.300000, 63.229, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1829'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-09T20:24:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 118.000000, 59.0, 50.0,
    'Whisky Single Malt. 117>>124', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2274'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:40:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 64.9, 59.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2146'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2295'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2296'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2297'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2298'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2299'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2300'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2301'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-03-11T17:34:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 108.500000, 57.505, 53.0,
    'Whisky Crisp Maris Otter Malt 19. SRT smw and rum', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2302'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-05-22T20:37:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 109.500000, 64.605, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1986'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-05-10T17:38:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 108.500000, 59.675, 55.0,
    'Whisky Bourbon Southern Distilling', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2176'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-24T22:28:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.18, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1707'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-24T22:28:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.18, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1708'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-24T22:28:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.18, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1709'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-24T22:28:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.18, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1710'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-24T22:28:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.18, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1711'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-02-24T22:28:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 106.000000, 56.18, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1712'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-02T16:29:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 112.100000, 66.139, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2035'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-07-02T16:29:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 112.100000, 66.139, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps Down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2036'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T17:59:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 113.000000, 59.89, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Gale Force winds previously
One nice day at 74 degrees', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2215'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-08-29T17:59:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 113.000000, 59.89, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Gale Force winds previously
One nice day at 74 degrees', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2216'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2143'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2144'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-03T18:38:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2145'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:23:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2263'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:23:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2264'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:23:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2265'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:23:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2266'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:23:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2267'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 107.700000, 63.543, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Wine barrel that was STR, filled with rum, dumped and filled with MO#19 Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2231'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-19T17:05:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 121.000000, 64.13, 53.0,
    'Rum Nantucket Molasses Grade A. Rum DistilamaxRM
Rocket Spirit Top Feed
30% Dunder
GoFermEvoProtect', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1786'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-19T17:05:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 121.000000, 64.13, 53.0,
    'Rum Nantucket Molasses Grade A. Rum DistilamaxRM
Rocket Spirit Top Feed
30% Dunder
GoFermEvoProtect', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1787'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-19T17:05:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 121.000000, 64.13, 53.0,
    'Rum Nantucket Molasses Grade A. Rum DistilamaxRM
Rocket Spirit Top Feed
30% Dunder
GoFermEvoProtect', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1788'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-20T22:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 103.300000, 60.947, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Straight from Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2229'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-20T21:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.700000, 61.183, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Symphony A Medium Long Toast with watering during firing. Wood is hand selected extra grain tight American Oak aged a minimum of three years.

Barrels 1817-1822 have been sent off for GC readings', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1820'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-20T21:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.700000, 61.183, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Symphony A Medium Long Toast with watering during firing. Wood is hand selected extra grain tight American Oak aged a minimum of three years.

Barrels 1817-1822 have been sent off for GC readings', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1821'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-12-20T21:39:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.700000, 61.183, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Symphony A Medium Long Toast with watering during firing. Wood is hand selected extra grain tight American Oak aged a minimum of three years.

Barrels 1817-1822 have been sent off for GC readings', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1822'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T19:40:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 108.500000, 65.1, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1962'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-04-12T19:40:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 108.500000, 65.1, 60.0,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1963'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2217'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2218'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2219'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2220'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2221'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2222'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2223'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-09-11T19:28:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 112.000000, 62.02, 55.375,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2224'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:07:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 119.500000, 78.87, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit
ExSherry 2ndFill', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2257'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T18:25:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 112.700000, 67.0565, 59.5,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2083'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T18:25:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 112.700000, 67.0565, 59.5,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2084'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-29T20:04:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 57.717, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2153'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-29T20:04:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 57.717, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2154'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-29T20:04:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 57.717, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2155'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-29T20:04:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.900000, 57.717, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2156'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T21:00:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 52.682, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2029'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T21:00:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 52.682, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2030'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T21:00:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 52.682, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2031'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T21:00:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 52.682, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2032'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-26T21:00:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 99.400000, 52.682, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Bubble Caps down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2033'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-06T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 104.400000, 59.682, 57.166667,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2136'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-06T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 104.400000, 59.682, 57.166667,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2137'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-06T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 104.400000, 59.682, 57.166667,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2138'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-06T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 104.400000, 59.682, 57.166667,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2139'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-06T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 104.400000, 59.682, 57.166667,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2140'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-06T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 104.400000, 59.682, 57.166667,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2141'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:53:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 47.965, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2197'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-09T15:53:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 90.500000, 47.965, 53.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2198'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-06-14T19:17:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 118.000000, 62.54, 53.0,
    'Rum Nantucket Molasses Grade A. Some of the spirit that had a temperature spike doing fermentation and had bacteria get ahold. 15% of that spirit probably', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1761'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:33:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 48.9915, 42.75,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 STR', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1879'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:33:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 48.9915, 42.75,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 STR', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1880'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:33:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 48.9915, 42.75,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 STR', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1881'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-03-08T21:33:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 114.600000, 48.9915, 42.75,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 STR', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1882'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-04-25T18:39:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 120.000000, 54.0, 45.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2150'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-20T19:36:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 101.000000, 52.52, 52.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2284'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-20T19:36:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 101.000000, 52.52, 52.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2285'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-20T19:36:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 101.000000, 52.52, 52.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2286'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1719'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1720'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1721'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1722'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1723'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1724'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1725'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1726'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1727'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-03-22T21:04:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 108.000000, 56.28402, 52.115,
    'Whisky Bourbon Blend NEB', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1728'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-03-04T20:52:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 112.300000, 58.396, 52.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2131'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-11T23:53:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 120.000000, 63.6, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold (to compare)', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2249'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-20T21:51:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 116.600000, 61.798, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit straight to barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2228'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-09T17:32:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 118.000000, 61.36, 52.0,
    'Whisky Single Malt. dumped 104 & 109 together and back into 109', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2273'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-12T21:36:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 126.000000, 48.4848, 38.48,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2278'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-07T18:22:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 123.000000, 65.19, 53.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1777'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-08-07T18:22:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 123.000000, 65.19, 53.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1778'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:44:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1844'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-04T18:44:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 115.000000, 67.85, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1845'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-27T21:58:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.500000, 56.975, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1864'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-27T21:58:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.500000, 56.975, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1865'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-27T21:58:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.500000, 56.975, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1866'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-06-04T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 20.000000, 11.6, 58.0,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2177'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-06-04T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 20.000000, 11.6, 58.0,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2178'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-06-04T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 20.000000, 11.6, 58.0,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2179'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-06-04T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 20.000000, 11.6, 58.0,
    'brandy pommeau', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2180'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-10-29T13:21:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 121.200000, 63.024, 52.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2225'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:03:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 119.500000, 78.87, 66.0,
    'Whisky Crisp Maris Otter Malt 19. Arnoldx2
Used sherry. 2nd fill?', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2256'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-05-04T14:49:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 113.300000, 60.049, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1754'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:18:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ARNOLDx2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2258'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:18:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ARNOLDx2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2259'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:18:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ARNOLDx2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2260'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:18:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ARNOLDx2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2261'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-01-31T21:18:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 119.500000, 63.335, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ARNOLDx2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2262'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-12T16:12:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 119.800000, 69.484, 58.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1846'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-12T16:12:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 119.800000, 69.484, 58.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1847'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-13T16:42:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 125.800000, 70.448, 56.0,
    'Whisky Single Malt', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2281'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1686'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1687'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1688'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1689'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1690'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1691'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1692'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1693'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-27T20:18:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 113.800000, 64.321331, 56.521111,
    'Rum Blends', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1694'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-13T21:54:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.300000, 68.617, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1850'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-13T21:54:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.300000, 68.617, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1851'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-01-13T21:54:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 116.300000, 68.617, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1852'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-09-08T20:11:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 118.000000, 62.54, 53.0,
    'Rum Nantucket Molasses Grade A. DistillaMax RM
25-30% Dunder
Fruit Bacteria post Ferm
C1-192 C2-150 Top Feed 
28 Day Fermentation
Rocket still has continuously losing alcohol in the stillage. More than it should', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1792'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-02T14:34:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.600000, 57.558, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ex Pommeau barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2181'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-07-02T14:34:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 108.600000, 57.558, 53.0,
    'Whisky Crisp Maris Otter Malt 19. ex Pommeau barrel', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2182'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-25T15:42:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.000000, 56.71, 53.0,
    'Whisky Crisp Maris Otter Malt 19. from ava', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2128'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-25T15:42:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.000000, 56.71, 53.0,
    'Whisky Crisp Maris Otter Malt 19. from ava', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2129'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-25T15:42:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 107.000000, 56.71, 53.0,
    'Whisky Crisp Maris Otter Malt 19. from ava', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2130'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-19T22:34:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 123.600000, 65.508, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Previously held Hurricane rum at 90 proof. Originally a used bourbon that was scrapped and retoasted. 2nd fill since then', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2226'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-19T22:34:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 123.600000, 65.508, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Previously held Hurricane rum at 90 proof. Originally a used bourbon that was scrapped and retoasted. 2nd fill since then', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2227'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T21:26:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2293'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-22T21:26:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 122.800000, 65.084, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold and Rocket', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2294'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T17:44:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 59.625, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2079'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T17:44:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 59.625, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2080'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-01-10T17:44:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 112.500000, 59.625, 53.0,
    'Whisky Crisp Maris Otter Malt 19', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2081'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-10T19:50:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 118.000000, 56.64, 48.0,
    'Whisky Single Malt. segal barrels- back into 141', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2275'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T18:45:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.000000, 58.3, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Half Rocket Spirit
Half Arnold
The Arnold Low Wines used was a combo of Rocket and Arnold Low Wines', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2060'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2061'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2062'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2063'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2064'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2065'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2066'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2067'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-12-11T20:21:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 110.500000, 58.565, 53.0,
    'Whisky Crisp Maris Otter Malt 19. Arnold Spirit from low wines from both Arnold and Rocket. Lower proof in the LW equalled lower final proof in distillate? Still was run hard, bubble caps up no dephleg', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2068'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-02-24T18:36:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 103.000000, 53.56, 52.0,
    'Whisky Crisp Maris Otter Malt 19. 28 gallons from penelope-22 gallons from ava', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2124'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2025-12-21T19:47:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 107.700000, 63.543, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Double Arnold. Low Cuts including rocket new make that had to be redistilled. Dirty Dean', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2232'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-03T20:58:00',
    (SELECT id FROM tanks WHERE name = 'Clyde Stubblefield' LIMIT 1), 124.000000, 68.2, 55.0,
    'Whisky Single Malt. Karil''s barrels to re-fill sherry', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1684'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-01-03T20:58:00',
    (SELECT id FROM tanks WHERE name = 'Clyde Stubblefield' LIMIT 1), 124.000000, 68.2, 55.0,
    'Whisky Single Malt. Karil''s barrels to re-fill sherry', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1685'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-05T14:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 121.000000, 64.13, 53.0,
    'Rum Nantucket Molasses Grade A. New Make sample pulled. Testing fermentation protocols', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1801'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-05T14:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 121.000000, 64.13, 53.0,
    'Rum Nantucket Molasses Grade A. New Make sample pulled. Testing fermentation protocols', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1802'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-02-15T18:49:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 113.800000, 67.142, 59.0,
    'Whisky Crisp Maris Otter Malt 19. Rocket Spirit Maris Otter 19 SO4 Red Star Randy SRT STR', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1872'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-05-05T15:05:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 110.000000, 58.3, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1757'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-05-05T15:05:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 110.000000, 58.3, 53.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1758'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-24T21:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 112.500000, 66.375, 59.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1804'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2023-10-24T21:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 112.500000, 66.375, 59.0,
    'Rum Nantucket Molasses Grade A', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '1805'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T21:03:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 66.08, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2021'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T21:03:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 66.08, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2022'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T21:03:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 66.08, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2023'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T21:03:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 66.08, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2024'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T21:03:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 66.08, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2025'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2024-06-18T21:03:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 112.000000, 66.08, 59.0,
    'Rum Hurricane Blend', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2026'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-13T19:07:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 121.700000, 53.548, 44.0,
    'Whisky Single Malt. 3 Cs barrels', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2282'
  ON CONFLICT DO NOTHING;

  INSERT INTO barrel_events (
    barrel_id, event_type, event_date,
    source_tank_id, fill_proof, proof_gal, wine_gal,
    notes, logged_by
  )
  SELECT
    b.id, 'fill'::barrel_event_type, '2026-02-13T19:07:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 121.700000, 53.548, 44.0,
    'Whisky Single Malt. 3 Cs barrels', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  FROM barrels b WHERE b.barrel_number = '2283'
  ON CONFLICT DO NOTHING;

END $$;

COMMIT;