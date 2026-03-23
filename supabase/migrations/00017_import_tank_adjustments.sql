-- ============================================================
-- BARRELMONKEY — Import Tank Adjustments
-- 74 rows from WhiskeySystems export
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  -- Ensure referenced tanks exist
  INSERT INTO tanks (name, tank_category) VALUES ('090-PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('096-PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('097- Glass Carboy', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('122-PD', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('5-22F23C', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('6-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('7-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('8-23A11A6', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('9-25D08', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Abigail Adams', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Ava DuVernay', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Betty Bumpers', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Bill Kreutzmann', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Brian Eno', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Debbie Harry', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Dolly Parton', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Exene Cervenka', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Gary Numan', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('George Washington Carver', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Greta Gerwig', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Gunga Din', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Hedy Lamar', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Howard Hawk', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Jim Jarmusch', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Lone Wolf', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Nina Hagen', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Notch 8- 1', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Penelope Houston', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Polly Platt', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sir Dump A Lot', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Yayoi Kusama', 'production') ON CONFLICT (name) DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2026-03-10T14:11:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'Polly Platt', 'vodka'::spirit_type,
    267.8, 79.7, 255.36, 76, -12.44,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2026-03-02T14:26:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'Abigail Adams', 'brandy'::spirit_type,
    5.46, 25.9, 0, 0, -5.46,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2026-02-13T11:21:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'Polly Platt', 'vodka'::spirit_type,
    346.5, 76.5, 346.5, 76, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2026-02-13T11:04:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'Polly Platt', 'vodka'::spirit_type,
    346.5, 77.5, 346.5, 76.5, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-12-12T09:30:01', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'Betty Bumpers', 'whiskey'::spirit_type,
    483.12, 96.4, 483.12, 96.4, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-12-12T08:00:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'Betty Bumpers', 'whiskey'::spirit_type,
    483.12, 97.6, 483.12, 96.4, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-10-22T14:00:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 'Debbie Harry', 'vodka'::spirit_type,
    421.6, 191.7, 421.6, 114.9, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-10-03T18:00:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'Polly Platt', 'vodka'::spirit_type,
    346.5, 82.3, 346.5, 76.6, 0,
    'Filtered', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-09-29T11:54:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'Penelope Houston', 'gin'::spirit_type,
    473.370747, 146.8, 473.370747, 88.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-09-18T09:46:00', 'Storage', (SELECT id FROM tanks WHERE name = '9-25D08' LIMIT 1), '9-25D08', 'gin'::spirit_type,
    4.8, 110, 4.8, 110, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-09-01T13:00:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'rum'::spirit_type,
    464.424, 88.8, 467.088, 88.8, 2.664,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-09-01T12:30:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'rum'::spirit_type,
    464.424, 88.8, 464.424, 88.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-09-01T12:00:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'rum'::spirit_type,
    510.12, 88.8, 464.424, 88.8, -45.696,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-09-01T08:00:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'rum'::spirit_type,
    510.12, 109, 510.12, 88.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-08-29T11:22:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'Penelope Houston', 'gin'::spirit_type,
    361.370747, 171.8, 361.370747, 171.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-08-13T15:33:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'rum'::spirit_type,
    658.91, 109, 510.12, 109, -148.79,
    'move from barn to bottling room tank- adjustment wasn''t made for volume after re-barrel', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-08-05T09:48:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'Hedy Lamar', 'bourbon'::spirit_type,
    487.458, 89.2, 500.412, 89.2, 12.954,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-08-05T09:33:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'Hedy Lamar', 'bourbon'::spirit_type,
    487.458, 106.2, 487.458, 89.2, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-07-20T13:32:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'Betty Bumpers', 'vodka'::spirit_type,
    338.55, 79.3, 320.04, 76.2, -18.51,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-07-07T17:00:01', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 'Sir Dump A Lot', 'whiskey'::spirit_type,
    19.6173, 92.1, 19.6173, 92.1, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-07-09T11:31:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1), 'Brian Eno', 'rum'::spirit_type,
    1363, 145, 1363, 109, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-06-23T08:00:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), 'Sir Dump A Lot', 'brandy'::spirit_type,
    22, 25.9, 22, 39.4, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-06-09T12:36:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'Betty Bumpers', 'rum'::spirit_type,
    0.76928, 88.8, 0, 0, -0.76928,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-05-29T12:01:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'Hedy Lamar', 'bourbon'::spirit_type,
    488.124, 106.2, 487.458, 106.2, -0.666,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-02-25T15:06:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'Abigail Adams', 'bourbon'::spirit_type,
    347.568, 111.4, 347.568, 105.7, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-07-23T15:53:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1), 'Nina Hagen', 'whiskey'::spirit_type,
    382.165, 125.3, 382.164404, 117.8, -0.000596,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2025-01-16T09:28:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'Hedy Lamar', 'bourbon'::spirit_type,
    461.664, 105, 461.664, 88.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-10-15T13:55:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'Penelope Houston', 'gin'::spirit_type,
    556.24244, 146, 556.24244, 100, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-09-17T16:43:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), 'Penelope Houston', 'gin'::spirit_type,
    521.20644, 152, 521.20644, 152, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-09-06T10:00:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 'Debbie Harry', 'vodka'::spirit_type,
    269, 191.9, 269, 39, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-09-04T10:38:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1), 'Debbie Harry', 'vodka'::spirit_type,
    269.31, 191.9, 269.31, 41.5, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-08-02T11:30:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Dolly Parton' LIMIT 1), 'Dolly Parton', 'rum'::spirit_type,
    332.16, 131.9, 332.16, 128.4, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-07-17T11:22:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'Betty Bumpers', 'rum'::spirit_type,
    466, 131.9, 466, 88.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-07-27T10:45:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Gunga Din' LIMIT 1), 'Gunga Din', 'brandy'::spirit_type,
    150.287743, 119.4, 152.74, 109.1, 2.452257,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-07-19T17:50:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'Ava DuVernay', 'brandy'::spirit_type,
    64.769464, 125.1, 64.769464, 93.2, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-07-17T17:20:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'Ava DuVernay', 'brandy'::spirit_type,
    25.30584, 147.3, 25.30584, 99.5, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-06-18T16:43:00', 'Storage', (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 'George Washington Carver', 'rum'::spirit_type,
    1239, 118, 1239, 112, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-05-20T12:55:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = '5-22F23C' LIMIT 1), '5-22F23C', 'vodka'::spirit_type,
    437.84, 83.4, 437.84, 80, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-02-02T13:16:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), 'Abigail Adams', 'gin'::spirit_type,
    521.965478, 168.3, 521.965478, 92.2, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-01-12T11:00:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'Ava DuVernay', 'whiskey'::spirit_type,
    330.1912, 125.2, 358.204, 116.3, 28.0128,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2024-01-12T14:32:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), 'Howard Hawk', 'whiskey'::spirit_type,
    0.067, 120.9, 0, 0, -0.067,
    'Tank was emptied in the last barrel fill on 1/11', COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-29T17:34:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'Gary Numan', 'whiskey'::spirit_type,
    79.12695, 139.4, 79.12695, 113, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-28T17:36:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'Gary Numan', 'whiskey'::spirit_type,
    86.43826, 149.7, 86.43826, 114.3, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-28T12:26:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Gary Numan' LIMIT 1), 'Gary Numan', 'whiskey'::spirit_type,
    89.25696, 146.6, 89.25696, 112.4, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-15T19:10:01', 'Production', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'whiskey'::spirit_type,
    108.3024, 124.2, 108.3024, 124.2, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-01T14:00:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1), 'Yayoi Kusama', 'gin'::spirit_type,
    414.72, 192, 414.72, 80, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-12T12:18:00', 'Storage', (SELECT id FROM tanks WHERE name = '8-23A11A6' LIMIT 1), '8-23A11A6', 'vodka'::spirit_type,
    0.302, 191.3, 0, 0, -0.302,
    'error in batching vs tank move- tank is empty', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-12T12:17:00', 'Storage', (SELECT id FROM tanks WHERE name = '7-23A11A6' LIMIT 1), '7-23A11A6', 'vodka'::spirit_type,
    0.302, 191.3, 0, 0, -0.302,
    'error in batching vs tank move- tank is empty', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-12T12:16:00', 'Storage', (SELECT id FROM tanks WHERE name = '6-23A11A6' LIMIT 1), '6-23A11A6', 'vodka'::spirit_type,
    0.302, 191.3, 0, 0, -0.302,
    'error in batching vs tank move- tank is empty', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-12-05T10:55:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'Ava DuVernay', 'whiskey'::spirit_type,
    301.4413, 121.3, 301.4413, 114.6, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-11-24T11:16:01', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Notch 8- 1' LIMIT 1), 'Notch 8- 1', 'whiskey'::spirit_type,
    5, 96, 5, 96, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-11-25T19:05:01', 'Production', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'whiskey'::spirit_type,
    92.1202, 63.4, 92.1202, 63.4, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-11-10T09:00:01', 'Production', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'whiskey'::spirit_type,
    42.883, 61, 42.883, 61, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-11-09T11:18:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'Polly Platt', 'rum'::spirit_type,
    435.435, 87.1, 445.952, 87.1, 10.517,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-11-08T10:16:01', 'Production', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'whiskey'::spirit_type,
    55.35, 73.8, 55.35, 73.8, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-10-26T18:15:00', 'Production', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'whiskey'::spirit_type,
    101.8395, 128.1, 101.8395, 104, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-10-25T12:32:00', 'Production', (SELECT id FROM tanks WHERE name = 'Ava DuVernay' LIMIT 1), 'Ava DuVernay', 'whiskey'::spirit_type,
    96.075, 128.1, 96.075, 115, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-10-07T19:39:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'rum'::spirit_type,
    130.29, 129, 130.29, 116.9, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-10-05T08:30:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Lone Wolf' LIMIT 1), 'Lone Wolf', 'rum'::spirit_type,
    119.3766, 132.2, 119.3766, 121, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-08-09T14:52:00', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), 'Exene Cervenka', 'gin'::spirit_type,
    100, 161.5, 100, 98, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-07-29T15:19:01', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), 'Exene Cervenka', 'gin'::spirit_type,
    100, 161.5, 100, 161.5, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-07-29T15:11:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), 'Exene Cervenka', 'gin'::spirit_type,
    50, 163.5, 50, 163.5, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-07-19T13:04:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Bill Kreutzmann' LIMIT 1), 'Bill Kreutzmann', 'gin'::spirit_type,
    89.29351, 179, 89.29351, 163.5, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-07-18T11:54:01', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'vodka'::spirit_type,
    354.9, 191.3, 354.9, 191.3, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-07-18T11:48:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), 'Greta Gerwig', 'vodka'::spirit_type,
    354.9, 191.3, 354.9, 191.3, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-07-13T09:44:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), 'Polly Platt', 'bourbon'::spirit_type,
    473, 107.8, 458.752, 102.4, -14.248,
    'Transfer to bottling room for final proof-down', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-06-20T13:56:00', 'Storage', (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1), 'George Washington Carver', 'rum'::spirit_type,
    506.843302, 110.6, 506.843302, 108.3, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-06-10T09:50:01', 'Processing Bulk', (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), 'Hedy Lamar', 'rum'::spirit_type,
    476.61843, 128.9, 476.61843, 128.9, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-05-31T12:02:00', 'Storage', (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), 'Betty Bumpers', 'vodka'::spirit_type,
    417.2, 189.6, 417.2, 182, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-01-01T16:04:01', 'Storage', (SELECT id FROM tanks WHERE name = '097- Glass Carboy' LIMIT 1), '097- Glass Carboy', 'gin'::spirit_type,
    4.305, 89.1, 4.305, 89.1, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-01-01T16:03:01', 'Storage', (SELECT id FROM tanks WHERE name = '096-PD' LIMIT 1), '096-PD', 'gin'::spirit_type,
    59.4, 110, 59.4, 110, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-01-01T16:02:01', 'Storage', (SELECT id FROM tanks WHERE name = '090-PD' LIMIT 1), '090-PD', 'gin'::spirit_type,
    48.06, 59, 48.06, 59, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-01-01T15:56:01', 'Storage', (SELECT id FROM tanks WHERE name = '122-PD' LIMIT 1), '122-PD', 'gin'::spirit_type,
    48.114, 89.1, 48.114, 89.1, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tank_adjustments (
    adjustment_date, account, tank_id, tank_name_raw, spirit_type,
    original_pg, original_pf, final_pg, final_pf, net_pg,
    notes, logged_by
  ) VALUES (
    '2023-01-30T09:53:01', 'Storage', (SELECT id FROM tanks WHERE name = 'Jim Jarmusch' LIMIT 1), 'Jim Jarmusch', 'rum'::spirit_type,
    283.2, 59.6, 283.2, 59.6, 0,
    NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

END $$;

COMMIT;