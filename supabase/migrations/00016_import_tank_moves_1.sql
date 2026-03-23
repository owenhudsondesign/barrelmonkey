-- ============================================================
-- BARRELMONKEY — Import Tank Moves
-- Part 1 of 2
-- 300 rows from WhiskeySystems export
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  -- Ensure referenced tanks exist
  INSERT INTO tanks (name, tank_category) VALUES ('096-PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('1-23J31A', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('1-24A04A', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('1-24F13', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('10-22F23C', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('10-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('10-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('11-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('11-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('12-24F13', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('12-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('121- PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('122-PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('123-PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('2-24F13', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('22F23C-46', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('22F23C-49', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('25I11-5', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('25I11-6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('25I11-7', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('25I11-8', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('3-24F13', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('4-24F13', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('4-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('5-22F23C', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('5-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('5-23J31A', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('6-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('6-23J31A', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('7-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('7-23J31A', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('8-22C02A', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('8-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('8-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('9-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Abigail Adams', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Akira Kurosawa', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('ArnoldPotStill', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Ava DuVernay', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Betty Bumpers', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Bill Kreutzmann', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Brian Eno', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Debbie Harry', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Dish Bottom F1- Wine Deck', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Dolly Parton', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Emmylou Harris', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Exene Cervenka', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 1.3', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 14.3', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 16.3', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 2.3', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 3.3', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 5.3', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FIX ME!', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Federico Fellini', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Gary Numan', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('George Washington Carver', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Gin bottle blend 2.2024- PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Greta Gerwig', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Gunga Din', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Hedy Lamar', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Howard Hawk', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('JOseph "Zigaboo" Modeliste- SD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Jim Jarmusch', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('John Herndon', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('John Waters', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Katherine Bigelow', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Lone Wolf', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Nina Hagen', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Notch 8- 1', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('PD- NH HR TIB', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('PD- NH NR TIB', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Penelope Houston', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Polly Platt', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sir Dump A Lot', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sojourner Trouth', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Stewart Copeland', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('VANILLA EXTRACT', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Yayoi Kusama', 'production') ON CONFLICT (name) DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-03-11T14:18:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    115.4574, 74.488645, 155,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-03-08T18:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    125.50647, 80.971916, 155,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-03-07T17:53:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    127.7858, 95.07872, 134.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-03-06T18:58:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    85.191, 109.5, 77.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-03-06T18:51:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    118.41744, 98.845943, 119.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-03-05T19:37:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    44.1612, 56.4, 78.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-03-05T17:37:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    105.60128, 78.806925, 134,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-03-05T17:23:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    75.0766, 87.4, 85.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-03-04T17:20:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    84.693, 109, 77.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-03-01T19:20:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    57.4236, 70.2, 81.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-02-28T19:15:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    79.31, 103, 77,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-02-22T17:24:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    73.304, 107.8, 68,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 'move'::tank_event_type, '2026-02-20T15:25:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    488, 470.134875, 103.8,
    'Rum Hurricane Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 'move'::tank_event_type, '2026-02-18T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    134.1145, 107.982689, 124.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-02-17T16:47:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    105.83595, 68.281258, 155,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-02-09T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    107.2953, 67.908418, 158,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-21T17:05:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    60.0237, 47.3, 126.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-21T16:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    94.9053, 59.688868, 159,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-20T17:17:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    99.4112, 78.4, 126.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-20T17:06:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    82.05, 51.963268, 157.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-20T09:34:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    80.8414, 65.3, 123.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-18T09:25:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    42.5, 34, 125,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-19T16:38:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    75.12714, 47.42875, 158.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-18T16:34:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    76.68876, 48.29267, 158.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-16T17:29:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    125.0832, 101.2, 123.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-16T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    82.16, 52, 158,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-15T16:12:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    121.8, 100, 121.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 'move'::tank_event_type, '2026-01-16T14:00:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    550.589, 533, 103.3,
    'Whisky Single Malt. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-14T13:03:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    71.16525, 45.041297, 158,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1), 'move'::tank_event_type, '2026-01-13T16:16:00',
    (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1), (SELECT id FROM tanks WHERE name = 'ArnoldPotStill' LIMIT 1),
    72, 134.579439, 53.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-13T16:13:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    78.87217, 51.787374, 152.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2026-01-11T17:29:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    145.1, 97.974342, 148.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 'move'::tank_event_type, '2026-01-11T17:28:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    222.5, 180.894309, 123,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-11T16:16:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    61.3272, 50.6, 121.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-11T16:12:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    89.38755, 56.218585, 159,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2026-01-10T11:58:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    139.748, 112.7, 124,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-07T17:06:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    96.72, 62, 156,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-06T16:59:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    98.56, 64, 154,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2026-01-05T16:24:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    99.864, 65.7, 152,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 'move'::tank_event_type, '2025-12-21T16:12:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    43.6, 35.475997, 122.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-12-21T16:05:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    98, 71.428571, 137.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 'move'::tank_event_type, '2025-12-21T16:04:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    133.6, 108.706265, 122.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-20T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    44.031, 29.630552, 148.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-20T16:57:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    88.8, 60, 148,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-20T16:53:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    16.178, 10.643421, 152,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-12-19T17:49:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    147.4594, 247.00067, 59.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1), 'move'::tank_event_type, '2025-12-19T17:47:00',
    (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1), (SELECT id FROM tanks WHERE name = 'ArnoldPotStill' LIMIT 1),
    102, 138.398915, 73.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-17T11:55:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    15.25, 12.5, 122,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-17T11:50:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    135.5738, 111.4, 121.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-16T11:47:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    66.582, 54, 123.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 'move'::tank_event_type, '2025-12-12T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), (SELECT id FROM tanks WHERE name = '10-22F23C' LIMIT 1),
    4.88, 5, 97.6,
    'Whisky Single Malt. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2025-12-12T08:00:02',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    483.12, 501.161826, 96.4,
    'Whisky Single Malt. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-13T15:07:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    79.0832, 64.4, 122.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-13T14:44:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    80.46, 54, 149,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-11T14:47:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    90.3303, 60.1, 150.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-10T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    39.9517, 33.1, 120.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-10T15:07:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    50.9243, 31.947491, 159.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-09T15:05:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    51.86685, 32.62066, 159,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-09T09:31:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    115.056, 94, 122.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 'move'::tank_event_type, '2025-12-04T15:41:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    77.8, 65.820643, 118.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-12-04T15:40:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    116.03, 94.9509, 122.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-04T15:32:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    99.72288, 79.082379, 126.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-12-03T11:35:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    116.025, 97.5, 119,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-12-03T11:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    77.80592, 68.611922, 113.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-12-02T11:02:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    406.8522, 340.177425, 119.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-11-23T10:52:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    112.6389, 95.7, 117.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-11-21T18:02:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    133.7493, 112.3, 119.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-11-19T17:53:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    70.5664, 59.2, 119.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-11-18T15:27:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    91.92, 76.6, 120,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-11-14T18:36:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    70.4186, 125.3, 56.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-11-13T18:28:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    77.0408, 121.9, 63.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-11-13T13:30:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    110.6165, 92.180417, 120,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-11-06T17:50:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    32.35725, 72.876689, 44.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-11-05T17:44:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    45.198, 80.423488, 56.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-11-04T17:27:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    45.12768, 77.538969, 58.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '25I11-8' LIMIT 1), 'move'::tank_event_type, '2025-10-22T13:36:00',
    (SELECT id FROM tanks WHERE name = '25I11-8' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.4, 54.981742, 191.7,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '25I11-7' LIMIT 1), 'move'::tank_event_type, '2025-10-22T13:00:00',
    (SELECT id FROM tanks WHERE name = '25I11-7' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.4, 54.981742, 191.7,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '25I11-6' LIMIT 1), 'move'::tank_event_type, '2025-10-22T12:30:00',
    (SELECT id FROM tanks WHERE name = '25I11-6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.4, 54.981742, 191.7,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '25I11-5' LIMIT 1), 'move'::tank_event_type, '2025-10-22T12:00:00',
    (SELECT id FROM tanks WHERE name = '25I11-5' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.4, 54.981742, 191.7,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-31T10:45:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    43.20457, 78.269149, 55.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 'move'::tank_event_type, '2025-10-30T12:00:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    483.12, 495, 97.6,
    'Whisky Single Malt. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-30T12:35:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    41.38752, 78.534194, 52.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-29T12:33:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    41.04958, 84.290719, 48.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-28T12:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    42.30508, 77.624, 54.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-25T14:14:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    23.50595, 46.63879, 50.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-25T14:05:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    44.77938, 81.122065, 55.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-24T14:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Waters' LIMIT 1),
    42.91378, 80.063022, 53.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-23T10:29:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    48.02462, 77.459065, 62,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-22T10:26:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    36.29988, 90.074144, 40.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-21T10:19:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    42.33768, 76.421805, 55.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-18T10:16:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    41.5701, 77.701121, 53.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-17T10:13:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    37.11, 74.22, 50,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-16T09:19:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    42.86856, 78.370311, 54.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-15T09:15:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    43.19146, 70.459152, 61.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-14T09:14:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    43.4265, 80.568646, 53.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-10T15:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    38.923248, 73.440091, 53,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-09T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    22.85955, 39.143065, 58.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-09T10:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    45.94092, 77.341616, 59.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-10-09T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    46.99687, 79.92665, 58.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-09-28T13:26:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    39.6417, 79.761972, 49.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-09-27T13:24:02',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1),
    39.6417, 79.761972, 49.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-09-26T16:02:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    46.1862, 99.97013, 46.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-09-25T16:01:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    30.008, 49.764511, 60.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-09-24T13:28:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    49.77936, 55.004818, 90.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-09-24T13:27:02',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1),
    49.77936, 55.004818, 90.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '8-25D08' LIMIT 1), 'move'::tank_event_type, '2025-09-23T09:55:00',
    (SELECT id FROM tanks WHERE name = '8-25D08' LIMIT 1), (SELECT id FROM tanks WHERE name = '096-PD' LIMIT 1),
    4.356, 3.6, 121,
    'Gin Amaro. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '096-PD' LIMIT 1), 'move'::tank_event_type, '2025-09-18T09:39:00',
    (SELECT id FROM tanks WHERE name = '096-PD' LIMIT 1), (SELECT id FROM tanks WHERE name = '9-25D08' LIMIT 1),
    4.8, 4.363636, 110,
    'Gin Amaro. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-09-10T18:33:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    66.846, 85.7, 78,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-09-10T18:29:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    81.4293, 111.7, 72.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-09-10T18:26:02',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    81.4293, 111.7, 72.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'move'::tank_event_type, '2025-09-04T13:00:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    32.362, 30.21662, 107.1,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'move'::tank_event_type, '2025-09-04T12:00:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    442, 412.698413, 107.1,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'move'::tank_event_type, '2025-09-01T08:00:02',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    510.12, 574.459459, 88.8,
    'Rum Hurricane Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-08-29T13:58:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1),
    10, 8.333333, 120,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), 'move'::tank_event_type, '2025-08-29T13:45:02',
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    298.786708, 401.595038, 74.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-08-29T11:26:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Stewart Copeland' LIMIT 1),
    65, 37.834692, 171.8,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-08-29T11:25:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Herndon' LIMIT 1),
    65, 37.834692, 171.8,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Stewart Copeland' LIMIT 1), 'move'::tank_event_type, '2025-08-29T11:24:00',
    (SELECT id FROM tanks WHERE name = 'Stewart Copeland' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    56, 56, 100,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'John Herndon' LIMIT 1), 'move'::tank_event_type, '2025-08-29T11:23:00',
    (SELECT id FROM tanks WHERE name = 'John Herndon' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    56, 56, 100,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-08-29T11:22:02',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    361.370747, 210.343857, 171.8,
    'Gin Gale Force. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-08-29T11:17:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    130, 75.669383, 171.8,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-08-20T18:18:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    70.0291, 58.7, 119.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '9-25D08' LIMIT 1), 'move'::tank_event_type, '2025-08-15T17:24:00',
    (SELECT id FROM tanks WHERE name = '9-25D08' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1),
    105.35, 54.869792, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '12-25D08' LIMIT 1), 'move'::tank_event_type, '2025-08-15T17:23:00',
    (SELECT id FROM tanks WHERE name = '12-25D08' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1),
    105.35, 54.869792, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '11-25D08' LIMIT 1), 'move'::tank_event_type, '2025-08-15T17:22:00',
    (SELECT id FROM tanks WHERE name = '11-25D08' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1),
    105.35, 54.869792, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '10-25D08' LIMIT 1), 'move'::tank_event_type, '2025-08-15T17:21:00',
    (SELECT id FROM tanks WHERE name = '10-25D08' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1),
    105.35, 54.869792, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-08-13T17:07:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    100.772, 59, 170.8,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-08-09T16:27:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    115.9872, 67.947979, 170.7,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-08-07T16:11:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    110.40029, 64.037291, 172.4,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-08-06T16:08:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    88.1928, 51.126261, 172.5,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-08-05T16:05:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    76.018457, 43.91592, 173.1,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 'move'::tank_event_type, '2025-08-13T15:31:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    658.91, 604.504587, 109,
    'Rum Hurricane Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-08-09T14:15:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    78.065, 65, 120.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-08-07T13:20:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    134.3199, 111.1, 120.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'move'::tank_event_type, '2025-08-05T09:33:02',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    487.458, 546.477578, 89.2,
    'Whisky Bourbon Blend NEB. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'move'::tank_event_type, '2025-07-19T13:31:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    338.55, 426.923077, 79.3,
    'Vodka Vanilla. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '4-25D08' LIMIT 1), 'move'::tank_event_type, '2025-07-12T13:53:00',
    (SELECT id FROM tanks WHERE name = '4-25D08' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.35, 54.869792, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-07-05T17:23:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    53.058, 44.4, 119.5,
    'Whisky Single Malt. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-07-05T11:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    3.3756, 2.9, 116.4,
    'Whisky Single Malt. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-07-02T10:33:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    57, 47.46045, 120.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-06-29T16:19:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    123.1025, 102.5, 120.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 'move'::tank_event_type, '2025-06-23T08:00:02',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    22, 55.837563, 39.4,
    'brandy pommeau. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2025-06-20T15:56:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    22, 84.942085, 25.9,
    'brandy pommeau. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-06-19T17:07:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    59.9064, 87.2, 68.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-06-17T17:05:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    74.3922, 111.7, 66.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-06-16T16:57:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    69.1599, 85.7, 80.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-06-15T16:31:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    65.9088, 79.6, 82.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 'move'::tank_event_type, '2025-06-18T07:30:02',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    108.732, 102, 106.6,
    'Rum Nantucket White. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'JOseph "Zigaboo" Modeliste- SD' LIMIT 1), 'move'::tank_event_type, '2025-06-09T11:54:00',
    (SELECT id FROM tanks WHERE name = 'JOseph "Zigaboo" Modeliste- SD' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    45.72, 36, 127,
    'Rum Nantucket White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2025-06-01T13:59:02',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    486.36, 434.25, 112,
    'Rum Hurricane Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2025-05-17T12:38:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    349.39, 429.753998, 81.3,
    'Vodka Vanilla. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 'move'::tank_event_type, '2025-05-29T11:54:00',
    (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    488.124, 459.627119, 106.2,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-04-24T15:48:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    111.6747, 70.68019, 158,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '12-24F13' LIMIT 1), 'move'::tank_event_type, '2025-04-16T14:54:00',
    (SELECT id FROM tanks WHERE name = '12-24F13' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Katherine Bigelow' LIMIT 1),
    105.35, 54.984342, 191.6,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-04-04T15:24:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    116.8862, 73.559597, 158.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-04-03T14:37:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    13.578, 12.090828, 112.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-04-02T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    85.251, 108.6, 78.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-04-01T17:09:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    85.7, 100, 85.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-03-29T12:01:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    89.99824, 58.402492, 154.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-03-28T14:48:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    81.8, 100, 81.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-03-27T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    72.9358, 82.6, 88.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-03-25T14:39:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    73.40364, 48.773183, 150.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-03-21T16:25:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    71.60252, 48.217185, 148.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-03-20T16:22:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    68.392224, 43.149668, 158.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-03-18T17:37:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    70.38576, 44.831694, 157,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-03-17T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    82.65804, 53.259046, 155.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-02-24T13:26:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    78.5378, 63.285898, 124.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'move'::tank_event_type, '2025-02-22T13:29:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1),
    488.124, 459.627119, 106.2,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-14T17:03:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    44.8232, 34.4, 130.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-13T10:59:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    103.3326, 82.6, 125.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-12T18:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.3661, 75.7, 127.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-12T12:35:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    106.5547, 84.1, 126.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-02-12T12:33:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    111.0756, 90.6, 122.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-09T15:59:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    52.4076, 73.4, 71.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-02-09T15:42:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    23.98155, 53.65, 44.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-08T15:36:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    71.463, 83, 86.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-02-08T15:23:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    20.53767, 50.585394, 40.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-02-07T15:01:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    22.68638, 55.877783, 40.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-02-06T14:52:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    44.47548, 91.702021, 48.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-02-07T14:42:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    95.018, 77, 123.4,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-02-06T14:33:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    44.7599, 93.639958, 47.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-31T16:21:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    28.44344, 81.969568, 34.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-01-30T13:33:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    111.0756, 90.6, 122.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-29T12:54:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    42.45934, 86.299472, 49.2,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-25T17:43:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    32.518248, 84.682938, 38.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-24T14:22:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    38.15138, 67.286384, 56.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '11-23A11A6' LIMIT 1), 'move'::tank_event_type, '2025-01-24T14:19:00',
    (SELECT id FROM tanks WHERE name = '11-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    62.1874, 50.6, 122.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-01-23T14:08:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    75.096, 59.6, 126,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-23T14:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    17.2484, 38.244789, 45.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-22T18:03:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    48.8214, 67.713454, 72.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-01-19T17:10:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    90.0188, 71.9, 125.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-19T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    46.204956, 80.919363, 57.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-17T16:37:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    43.285088, 83.885829, 51.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-16T17:09:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    44.6462, 73.310673, 60.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-15T17:03:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    46.2924, 76.643046, 60.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'move'::tank_event_type, '2025-01-16T09:28:02',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    461.664, 519.891892, 88.8,
    'Whisky Bourbon Blend NEB. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2025-01-10T12:52:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    50.05, 39.132134, 127.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2025-01-10T11:40:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    20.4891, 16.3, 125.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-08T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    43.83072, 54.515821, 80.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-07T16:33:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    44.64027, 70.189104, 63.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2025-01-03T17:46:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    97.9216, 78.4, 124.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2025-01-03T16:16:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    96.116724, 62.657578, 153.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-27T13:16:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    93.2543, 71.9, 129.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-26T13:14:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    20.4891, 16.3, 125.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-12-21T13:50:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    32.3, 25.136187, 128.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-15T15:29:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    89.38755, 56.218585, 159,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-13T15:26:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    87.6582, 57.669868, 152,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-19T15:10:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    84.6036, 66.2, 127.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-16T15:08:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    82.9472, 64.4, 128.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 'move'::tank_event_type, '2024-12-20T10:54:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    486.36, 434.25, 112,
    'Rum Hurricane Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-15T11:14:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    68.4084, 52.3, 130.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-14T15:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    54.1683, 41.7, 129.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-14T10:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    89.4465, 69.5, 128.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-12-14T06:00:02',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    94.752, 75.2, 126,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), 'move'::tank_event_type, '2024-12-12T13:33:00',
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    368.69124, 580.616126, 63.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-12T13:32:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    94.752, 75.2, 126,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-10T17:24:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    93.50924, 62.969185, 148.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-10T17:19:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    73.6764, 58.8, 125.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2024-12-10T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    422.209, 343.538649, 122.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-06T11:32:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    57.2164, 45.7, 125.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-06T11:23:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    90.2638, 60.783704, 148.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-04T11:18:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    28.4328, 35.9, 79.2,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-04T11:14:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    96.60424, 64.575027, 149.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-04T11:13:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    34.889, 27.8, 125.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-12-04T09:40:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.1968, 78.4, 122.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-04T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    95.11272, 64.395884, 147.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-12-01T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    104.28648, 71.331382, 146.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-11-30T14:52:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    106.1284, 77.86383, 136.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-11-30T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    21.0012, 17.2, 122.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-11-27T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    86.52, 70, 123.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-11-27T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    62.1368, 50.6, 122.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-11-21T15:24:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    15.3786, 28.269485, 54.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-11-20T14:19:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    70.0944, 81.6, 85.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-11-14T14:11:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    47.68875, 83.811511, 56.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-11-13T14:09:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    47.54118, 90.900918, 52.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-11-01T14:47:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    24.7379, 52.3, 47.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-31T18:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    16.1674, 22.9, 70.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-31T15:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    47.39644, 93.300079, 50.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-29T18:10:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    47.45187, 58.946422, 80.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-25T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    24.0327, 53.052318, 45.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-24T15:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    67.962, 96.4, 70.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-23T20:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    87.24, 120, 72.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-23T18:15:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    66.3901, 83.3, 79.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-23T16:38:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    49.78925, 99.5785, 50,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-23T10:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    22.92732, 51.063073, 44.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-10-15T15:17:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'John Herndon' LIMIT 1),
    56, 56, 100,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-10-15T15:16:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Stewart Copeland' LIMIT 1),
    56, 56, 100,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), 'move'::tank_event_type, '2024-10-12T16:42:00',
    (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    34.41, 22.57874, 152.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-11T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    52.1136, 75.2, 69.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-11T16:40:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    25.137, 49, 51.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-11T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    102.098, 143.8, 71,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-10-11T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    72.447, 123, 58.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-09T17:51:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    83.0346, 109.4, 75.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-09T16:08:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    114.38835, 73.798935, 155,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-10-09T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    109.773609, 75.033226, 146.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-28T13:37:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    116.43863, 89.361957, 130.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-26T18:36:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    104.0026, 88.588245, 117.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '4-24F13' LIMIT 1), 'move'::tank_event_type, '2024-09-19T13:07:00',
    (SELECT id FROM tanks WHERE name = '4-24F13' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.35, 54.984342, 191.6,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '3-24F13' LIMIT 1), 'move'::tank_event_type, '2024-09-19T13:06:00',
    (SELECT id FROM tanks WHERE name = '3-24F13' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    55.35, 28.888309, 191.6,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '2-24F13' LIMIT 1), 'move'::tank_event_type, '2024-09-19T13:05:00',
    (SELECT id FROM tanks WHERE name = '2-24F13' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.35, 54.984342, 191.6,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '1-24F13' LIMIT 1), 'move'::tank_event_type, '2024-09-18T13:04:00',
    (SELECT id FROM tanks WHERE name = '1-24F13' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    105.35, 54.984342, 191.6,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '3-24F13' LIMIT 1), 'move'::tank_event_type, '2024-09-05T12:05:00',
    (SELECT id FROM tanks WHERE name = '3-24F13' LIMIT 1), (SELECT id FROM tanks WHERE name = 'VANILLA EXTRACT' LIMIT 1),
    50, 26.096033, 191.6,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gin bottle blend 2.2024- PD' LIMIT 1), 'move'::tank_event_type, '2024-09-17T16:51:00',
    (SELECT id FROM tanks WHERE name = 'Gin bottle blend 2.2024- PD' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    35.036, 38, 92.2,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-09-17T16:43:02',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    521.20644, 342.898974, 152,
    'Gin Gale Force. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-11T16:41:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    121.7601, 85.325929, 142.7,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-10T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    107.06823, 70.439625, 152,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-06T11:48:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    62.4175, 35.667143, 175,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1), 'move'::tank_event_type, '2024-09-06T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    269, 140.177176, 191.9,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-05T11:27:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    55.13717, 34.808819, 158.4,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-05T10:59:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    57.79116, 35.260012, 163.9,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-05T10:53:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    57.56268, 47.066787, 122.3,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-09-05T10:44:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    59.4696, 34.177931, 174,
    'Gin Gale Force. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-09-04T10:37:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    269.31, 140.338718, 191.9,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 'move'::tank_event_type, '2024-08-27T13:13:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    269.31, 140.338718, 191.9,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 'move'::tank_event_type, '2024-08-27T13:12:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    269, 140.177176, 191.9,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-08-22T16:47:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    87.172, 124, 70.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-08-22T10:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    8.89, 7, 127,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2024-08-15T14:47:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1),
    58.901668, 36.381512, 161.9,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-08-15T14:46:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    40.401648, 24.939289, 162,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-08-07T14:38:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    18.50002, 11.433881, 161.8,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2024-07-17T11:22:02',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    466, 524.774775, 88.8,
    'Rum FdC 8yr Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Dolly Parton' LIMIT 1), 'move'::tank_event_type, '2024-07-16T11:10:00',
    (SELECT id FROM tanks WHERE name = 'Dolly Parton' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    466, 353.297953, 131.9,
    'Rum FdC 8yr Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2024-07-27T10:44:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1),
    150.287743, 125.869131, 119.4,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-26T16:06:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    24.37434, 15.725381, 155,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-25T16:05:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    41.304, 27.408096, 150.7,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-20T15:20:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    19.839939, 13.23545, 149.9,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-19T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    64.769464, 69.495133, 93.2,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2024-07-19T17:51:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1),
    64.769464, 69.495133, 93.2,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-19T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    19.796724, 13.286392, 149,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-18T17:15:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    19.6669, 13.024437, 151,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-07-17T17:19:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    25.30584, 17.179796, 147.3,
    'Brandy Apple. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2024-07-17T13:52:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    57.402, 30.006273, 191.3,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-07-17T18:13:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    109.35, 150, 72.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-07-16T17:19:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    100.868, 120.8, 83.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '1-24A04A' LIMIT 1), 'move'::tank_event_type, '2024-07-16T13:21:00',
    (SELECT id FROM tanks WHERE name = '1-24A04A' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    66.188, 34.472917, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-07-12T17:43:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    94.668, 137.2, 69,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-28T16:39:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    105.0525, 70.694818, 148.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-27T16:09:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    94.709526, 60.517269, 156.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-25T16:54:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    95.691804, 64.309008, 148.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'move'::tank_event_type, '2024-06-24T15:31:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1),
    564.04, 478, 118,
    'Whisky Single Malt. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

END $$;

COMMIT;