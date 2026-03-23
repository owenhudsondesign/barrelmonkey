-- ============================================================
-- BARRELMONKEY — Import Tank Moves
-- Part 2 of 2
-- 195 rows from WhiskeySystems export
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-20T15:48:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    119.147798, 75.697457, 157.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-06-19T15:24:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    103.752, 131, 79.2,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-19T13:25:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    95.238612, 64.568551, 147.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-18T17:36:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    92.00235, 61.294037, 150.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'move'::tank_event_type, '2024-06-16T17:25:02',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    462.3, 402, 115,
    'Rum Hurricane Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-14T17:55:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    97.1124, 61.076981, 159,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), 'move'::tank_event_type, '2024-06-14T17:55:00',
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    490.2958, 698.427066, 70.2,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-06-07T16:44:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    57.1113, 80.1, 71.3,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-06-06T16:45:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    93.732, 109.5, 85.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-07T16:34:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    86.1192, 58.82459, 146.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-07T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    94.670856, 62.283458, 152,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-06-05T17:29:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    72.0243, 101.3, 71.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-06-05T16:26:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    91.81966, 58.076951, 158.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-31T18:02:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    99.372, 127.4, 78,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-05-31T18:02:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    83.3664, 56.866576, 146.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-30T17:04:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    97.7002, 137.8, 70.9,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '5-22F23C' LIMIT 1), 'move'::tank_event_type, '2024-05-24T09:45:00',
    (SELECT id FROM tanks WHERE name = '5-22F23C' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    437.84, 547.3, 80,
    'Vodka Organic. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2024-05-24T09:43:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    461.664, 439.68, 105,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-22T16:44:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    75.6, 60, 126,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-21T16:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    101.06, 163, 62,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-18T11:38:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    54.3992, 42.4, 128.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'move'::tank_event_type, '2024-05-20T11:22:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    461.664, 439.68, 105,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-10T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.2782, 75.1, 128.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'move'::tank_event_type, '2024-05-07T10:29:02',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    458.153, 431, 106.3,
    'Whisky Bourbon Blend NEB. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-04T13:47:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    68.8707, 53.1, 129.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-05-03T13:29:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    89.505, 70.2, 127.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2024-03-08T17:00:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    5.9552, 4.966806, 119.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-03-07T18:11:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    66.4073, 116.3, 57.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '7-23J31A' LIMIT 1), 'move'::tank_event_type, '2024-03-07T17:05:00',
    (SELECT id FROM tanks WHERE name = '7-23J31A' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    103.68, 54, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '6-23J31A' LIMIT 1), 'move'::tank_event_type, '2024-03-07T17:04:00',
    (SELECT id FROM tanks WHERE name = '6-23J31A' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    103.68, 54, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '5-23J31A' LIMIT 1), 'move'::tank_event_type, '2024-03-07T17:03:00',
    (SELECT id FROM tanks WHERE name = '5-23J31A' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    103.68, 54, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '1-23J31A' LIMIT 1), 'move'::tank_event_type, '2024-03-07T17:01:00',
    (SELECT id FROM tanks WHERE name = '1-23J31A' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    103.68, 54, 192,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-03-06T18:11:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    65.778, 114, 57.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-03-05T18:17:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    82.8624, 113.2, 73.2,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-03-03T17:06:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    57.188, 78.88, 72.5,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-03-02T16:32:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    81.2059, 111.7, 72.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-03-02T10:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    81.424, 112, 72.7,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2024-02-19T13:58:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'FIX ME!' LIMIT 1),
    19.89, 30, 66.3,
    'Vodka Vanilla. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-02-18T20:15:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    82.61, 110, 75.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-02-17T18:17:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    115.0325, 97.9, 117.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-02-16T18:28:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    106.8264, 88.8, 120.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-02-16T18:27:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    104.98455, 68.842328, 152.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-02-13T18:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    88.128, 72, 122.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-02-13T17:58:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    102.3496, 67.961222, 150.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-02-13T17:57:02',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1),
    102.3496, 67.961222, 150.6,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-02-02T17:37:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    107.92719, 67.878736, 159,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2024-02-02T13:21:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gin bottle blend 2.2024- PD' LIMIT 1),
    35.036, 38, 92.2,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-02-01T18:02:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    99.86846, 64.3068, 155.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-02-01T16:48:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    60.9427, 48.1, 126.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-31T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    76.0485, 60.5, 125.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), 'move'::tank_event_type, '2024-01-31T16:40:00',
    (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    275.6023, 379.617493, 72.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-27T17:04:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.237, 76.5, 125.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-01-26T12:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    100.68136, 70.902366, 142,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-01-18T10:18:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    97.4592, 64.457143, 151.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-26T12:15:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    21.2463, 18.3, 116.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-26T12:14:02',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    21.2463, 18.3, 116.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-25T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    108.3248, 85.7, 126.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-18T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    100.488, 79.5, 126.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-18T12:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    73.9613, 58.1, 127.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-15T10:58:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.1605, 76.5, 125.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2024-01-13T16:56:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    29.075, 25, 116.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1), 'move'::tank_event_type, '2024-01-09T16:55:00',
    (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    521.965478, 310.139916, 168.3,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '123-PD' LIMIT 1), 'move'::tank_event_type, '2023-12-19T16:53:00',
    (SELECT id FROM tanks WHERE name = '123-PD' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    24.7, 15.485893, 159.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), 'move'::tank_event_type, '2023-12-19T16:52:00',
    (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    74.7, 46.833856, 159.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '10-23A11A6' LIMIT 1), 'move'::tank_event_type, '2023-12-12T16:48:00',
    (SELECT id FROM tanks WHERE name = '10-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    422.565478, 247.693715, 170.6,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), 'move'::tank_event_type, '2023-12-09T16:47:00',
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), (SELECT id FROM tanks WHERE name = '10-23A11A6' LIMIT 1),
    101.00485, 60.590792, 166.7,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), 'move'::tank_event_type, '2023-12-08T16:44:00',
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), (SELECT id FROM tanks WHERE name = '10-23A11A6' LIMIT 1),
    90.52155, 56.364601, 160.6,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), 'move'::tank_event_type, '2023-12-07T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), (SELECT id FROM tanks WHERE name = '10-23A11A6' LIMIT 1),
    101.12712, 57.458591, 176,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), 'move'::tank_event_type, '2023-12-06T16:35:00',
    (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), (SELECT id FROM tanks WHERE name = '10-23A11A6' LIMIT 1),
    129.911958, 73.189835, 177.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-01-12T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    82.15848, 57.453483, 143,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-12T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    80.6322, 64.3, 125.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'move'::tank_event_type, '2024-01-11T16:09:00',
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    458.153, 431, 106.3,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 'move'::tank_event_type, '2024-01-11T16:05:00',
    (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    462.3, 402, 115,
    'Rum Hurricane Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-10T17:12:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    114.7079, 94.1, 121.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-01-10T16:03:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    84.09618, 58.808517, 143,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2024-01-09T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    114.2856, 88.8, 128.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2024-01-09T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    91.2665, 64.272183, 142,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-30T14:58:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    52.3554, 42.6, 122.9,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-12-29T17:36:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    79.12695, 70.02385, 113,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-28T18:20:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    100.3275, 81.9, 122.5,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-12-28T18:13:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    86.43826, 75.624024, 114.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-12-28T12:31:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Akira Kurosawa' LIMIT 1),
    29.68496, 26.410107, 112.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-27T19:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.1605, 76.5, 125.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-22T17:10:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    69.4811, 55.1, 126.1,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-21T18:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    95.931, 76.5, 125.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'move'::tank_event_type, '2023-12-21T12:35:02',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    435.93, 329.750378, 132.2,
    'Rum FdC 3yr White. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-15T19:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    108.3024, 87.2, 124.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-15T19:10:02',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    108.3024, 87.2, 124.2,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-14T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.4418, 75.7, 127.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-12-13T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    95.8545, 76.5, 125.3,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-28T19:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    89.9884, 73.4, 122.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-28T09:54:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    71.3592, 61.2, 116.6,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Notch 8- 1' LIMIT 1), 'move'::tank_event_type, '2023-11-24T11:11:02',
    (SELECT id FROM tanks WHERE name = 'Notch 8- 1' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Notch 8- 1' LIMIT 1),
    5, 5.208333, 96,
    'Whisky Single Malt Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-25T19:18:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    92.1202, 145.3, 63.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-25T19:05:02',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    92.1202, 145.3, 63.4,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-22T19:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    104.346, 168.3, 62,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-21T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    85.12, 140, 60.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-19T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    68.1036, 110.2, 61.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'FDC 5.3' LIMIT 1), 'move'::tank_event_type, '2023-11-19T14:47:00',
    (SELECT id FROM tanks WHERE name = 'FDC 5.3' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    72.655, 55, 132.1,
    'Rum FdC 3yr White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'FDC 3.3' LIMIT 1), 'move'::tank_event_type, '2023-11-19T14:46:00',
    (SELECT id FROM tanks WHERE name = 'FDC 3.3' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    72.6, 55, 132,
    'Rum FdC 3yr White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'FDC 2.3' LIMIT 1), 'move'::tank_event_type, '2023-11-19T14:45:00',
    (SELECT id FROM tanks WHERE name = 'FDC 2.3' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    72.765, 55, 132.3,
    'Rum FdC 3yr White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'FDC 16.3' LIMIT 1), 'move'::tank_event_type, '2023-11-19T14:44:00',
    (SELECT id FROM tanks WHERE name = 'FDC 16.3' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    72.6, 55, 132,
    'Rum FdC 3yr White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'FDC 14.3' LIMIT 1), 'move'::tank_event_type, '2023-11-19T14:43:00',
    (SELECT id FROM tanks WHERE name = 'FDC 14.3' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    72.6, 55, 132,
    'Rum FdC 3yr White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'FDC 1.3' LIMIT 1), 'move'::tank_event_type, '2023-11-19T14:41:00',
    (SELECT id FROM tanks WHERE name = 'FDC 1.3' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    72.71, 55, 132.2,
    'Rum FdC 3yr White. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-17T19:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Sojourner Trouth' LIMIT 1),
    103.3362, 168.3, 61.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-15T20:29:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    104.7484, 170.6, 61.4,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-14T18:36:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    117.81, 157.5, 74.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-10T10:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    42.883, 70.3, 61,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-10T09:00:02',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    42.883, 70.3, 61,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-09T10:05:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    80.7032, 112.4, 71.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'move'::tank_event_type, '2023-11-01T11:14:02',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    435.435, 499.925373, 87.1,
    'Rum FdC 8yr Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-08T10:27:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    93.6164, 113.2, 82.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-08T10:21:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    55.35, 75, 73.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-08T10:16:02',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    55.35, 75, 73.8,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-11-03T17:13:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    80.775, 112.5, 71.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-29T14:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.2904, 75.7, 127.2,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-27T13:15:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    101.8395, 97.922596, 104,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-27T13:14:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    101.8395, 97.922596, 104,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-26T11:27:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    89.9008, 70.4, 127.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2023-10-26T11:25:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.075, 83.543478, 115,
    'Whisky Crisp Maris Otter Malt 19. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'move'::tank_event_type, '2023-10-03T13:27:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    458.994, 448.236328, 102.4,
    'Whisky Bourbon Blend NEB. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'move'::tank_event_type, '2023-10-20T13:04:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    506.843302, 467.999355, 108.3,
    'Rum Blends. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-25T11:43:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    96.075, 75, 128.1,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-07T20:14:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    60.15, 51.454234, 116.9,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-10-06T15:48:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    95.904, 72, 133.2,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-09-30T17:30:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    16.1162, 12.2, 132.1,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '5-23A11A6' LIMIT 1), 'move'::tank_event_type, '2023-09-28T14:50:00',
    (SELECT id FROM tanks WHERE name = '5-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    57.402, 30.006273, 191.3,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'move'::tank_event_type, '2023-09-28T14:37:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    414.72, 216, 192,
    'Gin Gale Force R1. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-09-14T13:01:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    4.9, 4, 122.5,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-09-07T12:11:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    37.6675, 30.5, 123.5,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '22F23C-46' LIMIT 1), 'move'::tank_event_type, '2023-05-31T23:30:00',
    (SELECT id FROM tanks WHERE name = '22F23C-46' LIMIT 1), (SELECT id FROM tanks WHERE name = '22F23C-49' LIMIT 1),
    100.1, 55, 182,
    'Vodka Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'move'::tank_event_type, '2023-08-03T17:57:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), (SELECT id FROM tanks WHERE name = 'FIX ME!' LIMIT 1),
    85, 111.842105, 76,
    'Vodka Vanilla. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-08-30T12:47:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    79.3764, 61.2, 129.7,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-08-25T16:52:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    99.2, 80, 124,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-08-24T10:00:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    98.88, 80, 123.6,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-08-09T15:55:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    10.6335, 8.5, 125.1,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-08-05T15:21:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    65.832, 52, 126.6,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-07-29T15:17:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1),
    50, 31.347962, 159.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), 'move'::tank_event_type, '2023-07-29T15:16:00',
    (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1),
    50, 30.58104, 163.5,
    'Gin Gale Force. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '123-PD' LIMIT 1), 'move'::tank_event_type, '2023-07-29T15:12:00',
    (SELECT id FROM tanks WHERE name = '123-PD' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1),
    50, 31.347962, 159.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Bill Kreutzmann' LIMIT 1), 'move'::tank_event_type, '2023-07-29T15:06:00',
    (SELECT id FROM tanks WHERE name = 'Bill Kreutzmann' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1),
    50, 30.58104, 163.5,
    'Gin Kelp R1. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 'move'::tank_event_type, '2023-07-24T12:10:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    506.843302, 467.999355, 108.3,
    'Rum Blends. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 'move'::tank_event_type, '2023-07-28T12:03:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    0.242, 0.22449, 107.8,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-07-21T16:49:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    68.145, 55, 123.9,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-07-21T16:05:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    70.623, 57, 123.9,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-07-19T13:03:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Bill Kreutzmann' LIMIT 1),
    89.29351, 49.884642, 179,
    'Gin Kelp R1. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'move'::tank_event_type, '2023-07-18T11:48:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    354.9, 185.520125, 191.3,
    'Vodka Non-Organic. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '5-23A11A6' LIMIT 1), 'move'::tank_event_type, '2023-07-18T11:40:00',
    (SELECT id FROM tanks WHERE name = '5-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    45.9, 23.993727, 191.3,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '8-23A11A6' LIMIT 1), 'move'::tank_event_type, '2023-07-18T11:39:00',
    (SELECT id FROM tanks WHERE name = '8-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    103, 53.842133, 191.3,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '7-23A11A6' LIMIT 1), 'move'::tank_event_type, '2023-07-18T11:38:00',
    (SELECT id FROM tanks WHERE name = '7-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    103, 53.842133, 191.3,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '6-23A11A6' LIMIT 1), 'move'::tank_event_type, '2023-07-18T11:36:00',
    (SELECT id FROM tanks WHERE name = '6-23A11A6' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    103, 53.842133, 191.3,
    'Vodka Non-Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), 'move'::tank_event_type, '2023-07-11T09:42:00',
    (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    473, 438.77551, 107.8,
    'Whisky Bourbon Blend NEB. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), 'move'::tank_event_type, '2023-07-12T10:42:00',
    (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Bill Kreutzmann' LIMIT 1),
    94.2115, 65.018288, 144.9,
    'Brandy Grape. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-07-07T14:08:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    50.758, 41, 123.8,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-06-22T17:50:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    78.5355, 61.5, 127.7,
    'Whisky Crisp Maris Otter Malt 19. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'move'::tank_event_type, '2023-06-10T09:49:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    476.61843, 369.758285, 128.9,
    'Rum Blends. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-06-15T10:13:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    91.008, 72, 126.4,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-06-09T17:26:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    124.028, 101, 122.8,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2023-06-02T12:20:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    317.1, 174.230769, 182,
    'Vodka Organic. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2023-05-31T12:03:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = '22F23C-46' LIMIT 1),
    100.1, 55, 182,
    'Vodka Organic. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-06-01T14:03:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    82.55, 65, 127,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 'move'::tank_event_type, '2023-02-02T10:22:00',
    (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    476.61843, 369.758285, 128.9,
    'Rum Blends. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '8-22C02A' LIMIT 1), 'move'::tank_event_type, '2023-02-03T09:08:00',
    (SELECT id FROM tanks WHERE name = '8-22C02A' LIMIT 1), (SELECT id FROM tanks WHERE name = '121- PD' LIMIT 1),
    12.662, 15.8275, 80,
    'Vodka Organic. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-03-27T09:20:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    145.288, 114.4, 127,
    'Whisky Crisp Maris Otter Malt 19. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2023-04-13T17:05:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = '123-PD' LIMIT 1),
    74.7, 46.833856, 159.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2023-04-13T17:02:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1),
    74.7, 46.833856, 159.5,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), 'move'::tank_event_type, '2023-04-07T16:57:00',
    (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    48.114, 54, 89.1,
    'Gin Gale Force. From Processing Bulk to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), 'move'::tank_event_type, '2023-04-07T16:56:00',
    (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1),
    48.114, 54, 89.1,
    'Gin Gale Force. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-03-20T13:55:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    167.66232, 103.495259, 162,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-03-17T13:31:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    81.74768, 53.816774, 151.9,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-03-16T11:57:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    164.7, 270, 61,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-03-16T11:44:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    51, 75, 68,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-03-12T10:53:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    88.28173, 58.972432, 149.7,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-03-09T10:49:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    94.86708, 63.24472, 150,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-03-08T10:44:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    94.86708, 63.24472, 150,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-02-24T17:27:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    78.336, 47.620669, 164.5,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-02-24T16:47:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    114.72, 120, 95.6,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-02-23T16:36:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    86.779, 107.8, 80.5,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-02-17T16:02:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    62.69202, 45.92822, 136.5,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-02-05T15:55:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    55.14418, 38.83393, 142,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-02-04T13:12:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    20.375, 32.6, 62.5,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-02-04T12:53:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1),
    70.36962, 41.200012, 170.8,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 'move'::tank_event_type, '2023-04-17T12:47:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1),
    498.255, 457.114679, 109,
    'Whisky Bourbon Blend NEB. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-02-03T11:49:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    77.22, 117, 66,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), 'move'::tank_event_type, '2023-02-03T11:45:00',
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    44.9982, 70.2, 64.1,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'move'::tank_event_type, '2023-01-30T11:03:00',
    (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    83.692, 137.2, 61,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-01-30T10:23:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    39.07904, 86.842311, 45,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'move'::tank_event_type, '2023-01-30T10:21:00',
    (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1),
    39.07904, 86.842311, 45,
    'Rum Nantucket Molasses Grade A. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), 'move'::tank_event_type, '2023-01-30T09:58:00',
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1),
    39.02094, 80.455546, 48.5,
    'Rum Nantucket Molasses Grade A. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), 'move'::tank_event_type, '2023-01-30T09:56:00',
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1),
    39.02094, 80.455546, 48.5,
    'Rum Nantucket Molasses Grade A. From Production to Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2023-01-11T17:41:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    484.409, 509.368034, 95.1,
    'Rum Hurricane Blend. From Storage to Processing Bulk', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'move'::tank_event_type, '2023-01-10T17:39:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), (SELECT id FROM tanks WHERE name = 'PD- NH NR TIB' LIMIT 1),
    21.312, 24, 88.8,
    'Rum FdC 8yr Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'move'::tank_event_type, '2023-01-10T17:38:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), (SELECT id FROM tanks WHERE name = 'PD- NH HR TIB' LIMIT 1),
    20.424, 21.476341, 95.1,
    'Rum Hurricane Blend. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), 'move'::tank_event_type, '2023-01-27T17:16:00',
    (SELECT id FROM tanks WHERE name = 'Dish Bottom F1- Wine Deck' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Federico Fellini' LIMIT 1),
    73.326, 111.1, 66,
    'Rum Nantucket Molasses Grade A. From Production to Production', COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_events (
    tank_id, event_type, event_date,
    from_tank_id, to_tank_id,
    proof_gal_delta, wine_gal, proof,
    notes, logged_by
  ) VALUES (
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'move'::tank_event_type, '2023-01-24T15:01:00',
    (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1),
    37.5199, 25.3, 148.3,
    'Brandy Grape. From Storage to Storage', COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

END $$;

COMMIT;