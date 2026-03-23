-- ============================================================
-- BARRELMONKEY — Import Fermentation Batches from Cooks.csv
-- 162 rows from WhiskeySystems export
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  -- Ensure referenced fermenters exist
  INSERT INTO fermenters (name) VALUES ('ArnoldPotStill') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Fredrico Felinni') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Gene Kruppa') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Iggy Pop') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('John Waters') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Penelope Houston') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Tammy Wynette') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Tom Waits') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Townes Van Zandt') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('WC Fields') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('WC Handy') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('WC Nowhere') ON CONFLICT (name) DO NOTHING;
  INSERT INTO fermenters (name) VALUES ('Yayoi Kusama') ON CONFLICT (name) DO NOTHING;

  -- Cook #19
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    19, 'COOK-19', 'First batch in awhile', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-09-08T09:30:00',
    1.0568, 14.92, 101.72,
    46.395833333333329, 1113.5, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #21
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    21, 'COOK-21', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-19T12:33:00',
    1.0581, 15.26, 104.06,
    7.2270833333333329, 173.45, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #25
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    25, 'COOK-25', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-25T15:41:00',
    1.0586, 15.39, 104.96,
    13.77986111111111, 330.71666666666664, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #28
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    28, 'COOK-28', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-01T17:06:00',
    1.0577, 15.15, 103.34,
    7.7145833333333327, 185.14999999999998, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #32
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    32, 'COOK-32', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-03T14:30:00',
    1.059, 15.50, 105.68,
    12.195833333333333, 292.7, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #27
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    27, 'COOK-27', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-31T15:10:00',
    1.0581, 15.26, 104.06,
    20.118055555555554, 482.83333333333326, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #33
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    33, 'COOK-33', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-16T17:32:00',
    1.059, 15.50, 105.68,
    9.06111111111111, 217.46666666666664, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #34
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    34, 'COOK-34', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-17T14:45:00',
    1.0564, 14.81, 101.00,
    11.177083333333332, 268.25, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #38
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    38, 'COOK-38', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-30T16:26:00',
    1.0551, 14.47, 98.66,
    14.08611111111111, 338.06666666666666, 'WS Import. Brix: 13.59', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #35
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    35, 'COOK-35', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-27T15:40:00',
    1.0586, 15.39, 104.96,
    25.059027777777775, 601.41666666666663, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #41
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    41, 'COOK-41', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-06T16:00:00',
    1.0556, 14.60, 99.56,
    21.125, 507, 'WS Import. Brix: 13.71', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #45
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    45, 'COOK-45', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-26T11:45:00',
    1.0581, 15.26, 104.06,
    14.239583333333332, 341.75, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #44
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    44, 'COOK-44', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-19T13:32:00',
    1.0577, 15.15, 103.34,
    23.165277777777778, 555.9666666666667, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #48
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    48, 'COOK-48', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-28T13:30:00',
    1.0611, 16.05, 109.46,
    20.195138888888888, 484.68333333333328, 'WS Import. Brix: 15.00', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #49
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    49, 'COOK-49', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-01-05T15:28:00',
    1.0568, 14.92, 101.72,
    20.133333333333333, 483.2, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #53
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    53, 'COOK-53', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-01-18T15:23:00',
    1.0598, 15.71, 107.12,
    11.868055555555555, 284.83333333333331, 'WS Import. Brix: 14.69', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #54
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    54, 'COOK-54', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-01T17:17:00',
    1.0586, 15.39, 104.96,
    15.045833333333333, 361.09999999999997, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #57
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    57, 'COOK-57', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-09T16:34:00',
    1.0603, 15.84, 108.02,
    9.1506944444444436, 219.61666666666665, 'WS Import. Brix: 14.81', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #61
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    61, 'COOK-61', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-23T15:04:00',
    1.056, 14.70, 100.28,
    9.0833333333333321, 217.99999999999997, 'WS Import. Brix: 13.80', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #58
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    58, 'COOK-58', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-13T14:36:00',
    1.0603, 15.84, 108.02,
    23.147222222222222, 555.5333333333333, 'WS Import. Brix: 14.81', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #62
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    62, 'COOK-62', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-27T17:15:00',
    1.0568, 14.92, 101.72,
    63.072916666666664, 1513.75, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #64
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    64, 'COOK-64', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-29T16:34:00',
    1.0598, 15.71, 107.12,
    72.039583333333326, 1728.9499999999998, 'WS Import. Brix: 14.69', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #66
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    66, 'COOK-66', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-05-08T14:15:00',
    1.0594, 15.60, 106.40,
    12.906944444444443, 309.76666666666665, 'WS Import. Brix: 14.60', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #67
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    67, 'COOK-67', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-05-10T14:16:00',
    1.056, 14.70, 100.28,
    21.15625, 507.75, 'WS Import. Brix: 13.80', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #70
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    70, 'COOK-70', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-05-29T15:34:00',
    1.0598, 15.71, 107.12,
    9.0458333333333325, 217.09999999999997, 'WS Import. Brix: 14.69', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #72
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    72, 'COOK-72', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-06-14T14:00:00',
    1.0577, 15.15, 103.34,
    4.1541666666666668, 99.7, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #74
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    74, 'COOK-74', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-06-19T14:28:00',
    1.0577, 15.15, 103.34,
    28.152083333333334, 675.65, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #79
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    79, 'COOK-79', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-06-06T13:00:00',
    1.0586, 15.39, 104.96,
    77.15625, 1851.75, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #83
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    83, 'COOK-83', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-09-26T14:07:00',
    1.0556, 14.60, 99.56,
    15.105555555555554, 362.5333333333333, 'WS Import. Brix: 13.71', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #86
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    86, 'COOK-86', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-17T09:19:00',
    1.0581, 15.26, 104.06,
    6.4451388888888888, 154.68333333333334, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #90
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    90, 'COOK-90', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-25T14:56:00',
    NULL, NULL, NULL,
    5.9354166666666668, 142.45, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #93
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    93, 'COOK-93', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-30T15:34:00',
    1.0577, 15.15, 103.34,
    20.943055555555556, 502.63333333333333, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #96
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    96, 'COOK-96', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-11-07T14:22:00',
    1.0564, 14.81, 101.00,
    28.879861111111111, 693.11666666666667, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #94
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    94, 'COOK-94', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-11-05T14:30:00',
    1.056, 14.70, 100.28,
    38.010416666666664, 912.25, 'WS Import. Brix: 13.80', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #100
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    100, 'COOK-100', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-04T15:50:00',
    1.0551, 14.47, 98.66,
    11.96875, 287.25, 'WS Import. Brix: 13.59', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #104
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    104, 'COOK-104', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-17T12:30:00',
    1.0564, 14.81, 101.00,
    10.030555555555555, 240.73333333333332, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #106
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    106, 'COOK-106', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-18T13:30:00',
    1.0556, 14.60, 99.56,
    21.125, 507, 'WS Import. Brix: 13.71', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #108
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    108, 'COOK-108', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-03T16:23:00',
    1.0564, 14.81, 101.00,
    13.029166666666667, 312.7, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #109
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    109, 'COOK-109', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-06T15:11:00',
    1.0568, 14.92, 101.72,
    16.1125, 386.70000000000005, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #111
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    111, 'COOK-111', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-10T13:00:00',
    1.0539, 14.15, 96.50,
    14.052083333333332, 337.25, 'WS Import. Brix: 13.31', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #114
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    114, 'COOK-114', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-15T14:00:00',
    1.0573, 15.05, 102.62,
    16.091666666666665, 386.19999999999993, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #116
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    116, 'COOK-116', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-29T13:23:00',
    1.0581, 15.26, 104.06,
    11.097222222222221, 266.33333333333331, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #119
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    119, 'COOK-119', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-02-05T16:11:00',
    1.056, 14.70, 100.28,
    7.0340277777777773, 168.81666666666666, 'WS Import. Brix: 13.80', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #20
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    20, 'COOK-20', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-09-20T14:36:00',
    1.0547, 14.36, 97.94,
    35.18333333333333, 844.39999999999986, 'WS Import. Brix: 13.50', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #22
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    22, 'COOK-22', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-20T12:38:00',
    1.0581, 15.26, 104.06,
    8.2430555555555554, 197.83333333333331, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #23
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    23, 'COOK-23', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-24T15:59:00',
    1.0577, 15.15, 103.34,
    13.063194444444443, 313.51666666666665, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #26
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    26, 'COOK-26', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-27T12:30:00',
    1.0581, 15.26, 104.06,
    18.252777777777776, 438.06666666666661, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #31
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    31, 'COOK-31', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-09T19:04:00',
    1.0577, 15.15, 103.34,
    7.999305555555555, 191.98333333333332, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #29
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    29, 'COOK-29', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-07T14:01:00',
    1.0568, 14.92, 101.72,
    14.182638888888889, 340.38333333333333, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #30
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    30, 'COOK-30', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-08T15:11:00',
    1.0594, 15.60, 106.40,
    18.117361111111112, 434.81666666666672, 'WS Import. Brix: 14.60', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #37
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    37, 'COOK-37', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-29T13:13:00',
    1.0573, 15.05, 102.62,
    14.220138888888888, 341.2833333333333, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #36
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    36, 'COOK-36', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-11-28T13:58:00',
    1.0573, 15.05, 102.62,
    23.140277777777776, 555.36666666666656, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #42
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    42, 'COOK-42', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-07T14:30:00',
    1.0586, 15.39, 104.96,
    22.147222222222222, 531.5333333333333, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #40
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    40, 'COOK-40', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-05T15:57:00',
    1.0586, 15.39, 104.96,
    36.05, 865.19999999999993, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #46
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    46, 'COOK-46', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-21T14:30:00',
    1.0577, 15.15, 103.34,
    23.841666666666665, 572.19999999999993, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #47
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    47, 'COOK-47', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-27T16:22:00',
    1.0594, 15.60, 106.40,
    22.088888888888889, 530.13333333333333, 'WS Import. Brix: 14.60', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #52
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    52, 'COOK-52', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-01-16T16:32:00',
    1.0573, 15.05, 102.62,
    15.977777777777778, 383.4666666666667, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #50
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    50, 'COOK-50', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-01-09T16:25:00',
    1.0577, 15.15, 103.34,
    38.081944444444446, 913.9666666666667, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #56
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    56, 'COOK-56', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-08T12:55:00',
    1.0598, 15.71, 107.12,
    9.2201388888888882, 221.2833333333333, 'WS Import. Brix: 14.69', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #55
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    55, 'COOK-55', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-06T11:20:00',
    1.0586, 15.39, 104.96,
    25.2125, 605.09999999999991, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #60
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    60, 'COOK-60', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-22T15:56:00',
    1.059, 15.50, 105.68,
    14.091666666666667, 338.2, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #59
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    59, 'COOK-59', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-20T15:18:00',
    1.0586, 15.39, 104.96,
    73.091666666666669, 1754.2, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #65
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    65, 'COOK-65', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-05-07T14:13:00',
    1.0568, 14.92, 101.72,
    15.102777777777778, 362.4666666666667, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #68
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    68, 'COOK-68', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-05-14T14:17:00',
    1.0573, 15.05, 102.62,
    16.113194444444442, 386.71666666666658, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #69
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    69, 'COOK-69', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-05-23T15:21:00',
    1.0611, 16.05, 109.46,
    14.052083333333332, 337.25, 'WS Import. Brix: 15.00', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #71
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    71, 'COOK-71', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-06-13T15:14:00',
    1.0586, 15.39, 104.96,
    6.0048611111111105, 144.11666666666665, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #75
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    75, 'COOK-75', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-06-20T14:24:00',
    1.0564, 14.81, 101.00,
    26.108333333333331, 626.59999999999991, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #84
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    84, 'COOK-84', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-09-27T14:32:00',
    1.0577, 15.15, 103.34,
    13.18611111111111, 316.46666666666664, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #85
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    85, 'COOK-85', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-16T15:02:00',
    1.0551, 14.47, 98.66,
    8.12361111111111, 194.96666666666664, 'WS Import. Brix: 13.59', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #88
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    88, 'COOK-88', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-24T14:33:00',
    1.0581, 15.26, 104.06,
    29.036111111111111, 696.86666666666667, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #95
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    95, 'COOK-95', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-11-06T15:30:00',
    1.0568, 14.92, 101.72,
    35.914583333333333, 861.95, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #101
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    101, 'COOK-101', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-10T13:24:00',
    1.0564, 14.81, 101.00,
    9.9874999999999989, 239.7, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #105
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    105, 'COOK-105', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-17T17:26:00',
    1.0556, 14.60, 99.56,
    17.0125, 408.29999999999995, 'WS Import. Brix: 13.71', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #107
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    107, 'COOK-107', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-03T13:28:00',
    1.0551, 14.47, 98.66,
    16.148611111111112, 387.56666666666672, 'WS Import. Brix: 13.59', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #110
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    110, 'COOK-110', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-08T15:05:00',
    1.0573, 15.05, 102.62,
    14.956944444444444, 358.96666666666664, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #112
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    112, 'COOK-112', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-10T15:00:00',
    1.0539, 14.15, 96.50,
    15.112499999999999, 362.7, 'WS Import. Brix: 13.31', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #113
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    113, 'COOK-113', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-14T16:10:00',
    1.0573, 15.05, 102.62,
    15.864583333333332, 380.75, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #115
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    115, 'COOK-115', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-28T14:01:00',
    1.0577, 15.15, 103.34,
    9.0333333333333332, 216.8, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #118
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    118, 'COOK-118', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-31T15:25:00',
    1.0581, 15.26, 104.06,
    12.813888888888888, 307.5333333333333, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #92
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    92, 'COOK-92', NULL, (SELECT id FROM fermenters WHERE name = 'John Waters' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-29T17:22:00',
    1.0543, 14.26, 97.22,
    28.867361111111109, 692.81666666666661, 'WS Import. Brix: 13.40', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #123
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    123, 'COOK-123', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-02-07T15:45:00',
    1.0564, 14.81, 101.00,
    54.059027777777779, 1297.4166666666667, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #24
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    24, 'COOK-24', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-10-26T12:44:00',
    1.0581, 15.26, 104.06,
    19.243055555555554, 461.83333333333326, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #39
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    39, 'COOK-39', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-01T14:00:00',
    1.0568, 14.92, 101.72,
    14.208333333333332, 341, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #43
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    43, 'COOK-43', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2023-12-08T15:10:00',
    1.0568, 14.92, 101.72,
    20.129861111111111, 483.11666666666667, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #51
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    51, 'COOK-51', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-01-15T16:48:00',
    1.0594, 15.60, 106.40,
    11.091666666666667, 266.2, 'WS Import. Brix: 14.60', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #63
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    63, 'COOK-63', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-02-28T17:29:00',
    1.0607, 15.94, 108.74,
    69.013888888888886, 1656.3333333333333, 'WS Import. Brix: 14.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #73
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    73, 'COOK-73', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-06-18T15:06:00',
    1.0577, 15.15, 103.34,
    29.125694444444445, 699.01666666666665, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #82
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    82, 'COOK-82', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-09-25T14:17:00',
    1.059, 15.50, 105.68,
    15.21736111111111, 365.21666666666664, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #81
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    81, 'COOK-81', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-09-24T11:56:00',
    1.0586, 15.39, 104.96,
    29.252777777777776, 702.06666666666661, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #87
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    87, 'COOK-87', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-18T16:55:00',
    1.0568, 14.92, 101.72,
    26.884722222222223, 645.23333333333335, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #97
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    97, 'COOK-97', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-11-08T16:02:00',
    1.0551, 14.47, 98.66,
    25.797222222222221, 619.13333333333333, 'WS Import. Brix: 13.59', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #98
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    98, 'COOK-98', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-03T16:30:00',
    1.0568, 14.92, 101.72,
    8.8729166666666668, 212.95, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #102
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    102, 'COOK-102', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-10T17:56:00',
    1.0573, 15.05, 102.62,
    4.718055555555555, 113.23333333333332, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #99
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    99, 'COOK-99', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-03T18:25:00',
    1.0556, 14.60, 99.56,
    15.863194444444444, 380.71666666666664, 'WS Import. Brix: 13.71', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #103
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    103, 'COOK-103', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-12-16T14:07:00',
    1.0568, 14.92, 101.72,
    9.9618055555555554, 239.08333333333331, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #117
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    117, 'COOK-117', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-01-30T14:39:00',
    1.0581, 15.26, 104.06,
    9.03125, 216.75, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #120
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    120, 'COOK-120', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2025-02-06T14:00:00',
    1.0577, 15.15, 103.34,
    4.9354166666666668, 118.45, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #91
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    91, 'COOK-91', NULL, (SELECT id FROM fermenters WHERE name = 'Fredrico Felinni' LIMIT 1),
    'whiskey'::spirit_type, '22 BBL Whisky Wash Maris Otter #19 RedStar/SO4', 682.000000, '2024-10-29T13:30:00',
    1.0573, 15.05, 102.62,
    31.048611111111111, 745.16666666666663, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #12
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    12, 'COOK-12', 'red star s-04', (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2023-06-13T10:30:00',
    1.059, 15.50, 144.11,
    24.147222222222222, 579.5333333333333, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #129
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    129, 'COOK-129', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2025-04-30T11:47:00',
    1.0581, 15.26, 141.90,
    47.211805555555557, 1133.0833333333335, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #132
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    132, 'COOK-132', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2025-06-13T10:29:00',
    1.0573, 15.05, 139.94,
    22.271527777777777, 534.51666666666665, 'WS Import. Brix: 14.11', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #133
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    133, 'COOK-133', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2025-07-15T09:00:00',
    1.0586, 15.39, 143.13,
    28.219444444444445, 677.26666666666665, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #7
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    7, 'COOK-7', '4 mo rest', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2023-03-26T14:16:00',
    NULL, NULL, NULL,
    0.79305555555555551, 19.033333333333331, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #130
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    130, 'COOK-130', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2025-05-15T12:30:00',
    1.0594, 15.60, 145.09,
    35.190972222222221, 844.58333333333326, 'WS Import. Brix: 14.60', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #131
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    131, 'COOK-131', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2025-05-20T12:30:00',
    1.0581, 15.26, 141.90,
    40.156944444444441, 963.76666666666665, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #128
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    128, 'COOK-128', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '30 BBL Whisky Wash Maris Otter #19', 930.000000, '2025-02-13T16:46:00',
    1.0598, 15.71, 146.08,
    42.915972222222223, 1029.9833333333333, 'WS Import. Brix: 14.69', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #141
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    141, 'COOK-141', NULL, (SELECT id FROM fermenters WHERE name = 'ArnoldPotStill' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-17T10:30:00',
    1.0577, 15.15, 155.01,
    14.00625, 336.15, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #163
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    163, 'COOK-163', NULL, (SELECT id FROM fermenters WHERE name = 'Iggy Pop' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-03-06T09:00:00',
    1.059, 15.50, 158.52,
    17.0948723456331, 410.27693629519439, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #139
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    139, 'COOK-139', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-01T09:00:00',
    1.0581, 15.26, 156.09,
    21.057638888888889, 505.38333333333333, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #144
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    144, 'COOK-144', NULL, (SELECT id FROM fermenters WHERE name = 'WC Nowhere' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-23T09:59:00',
    1.059, 15.50, 158.52,
    21.349305555555556, 512.38333333333333, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #134
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    134, 'COOK-134', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-07-16T08:00:00',
    1.0581, 15.26, 156.09,
    22.218055555555555, 533.23333333333335, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #136
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    136, 'COOK-136', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-09-16T09:16:00',
    1.059, 15.50, 158.52,
    11.170833333333333, 268.09999999999997, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #137
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    137, 'COOK-137', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-09-19T09:20:00',
    1.0586, 15.39, 157.44,
    21.050694444444442, 505.21666666666658, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #142
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    142, 'COOK-142', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-21T09:00:00',
    1.059, 15.50, 158.52,
    28.266666666666666, 678.4, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #146
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    146, 'COOK-146', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-31T08:00:00',
    1.059, 15.50, 158.52,
    22.110416666666666, 530.65, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #147
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    147, 'COOK-147', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-11-07T09:00:00',
    1.0551, 14.47, 147.99,
    33.255555555555553, 798.13333333333321, 'WS Import. Brix: 13.59', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #149
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    149, 'COOK-149', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-11-20T10:00:00',
    1.0586, 15.39, 157.44,
    27.075, 649.8, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #152
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    152, 'COOK-152', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-12-02T15:41:00',
    1.0577, 15.15, 155.01,
    40.022916666666667, 960.55, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #153
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    153, 'COOK-153', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-12-12T09:41:00',
    1.0564, 14.81, 151.50,
    36.988194444444446, 887.7166666666667, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #155
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    155, 'COOK-155', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-01-08T16:15:00',
    1.0577, 15.15, 155.01,
    13.033333333333333, 312.8, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #159
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    159, 'COOK-159', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-02-03T14:22:00',
    1.059, 15.50, 158.52,
    26.205555555555556, 628.93333333333339, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #160
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    160, 'COOK-160', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-02-04T15:50:00',
    1.0577, 15.15, 155.01,
    29.063194444444445, 697.51666666666665, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #135
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    135, 'COOK-135', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-07-23T15:30:00',
    1.0598, 15.71, 160.68,
    49.125, 1179, 'WS Import. Brix: 14.69', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #138
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    138, 'COOK-138', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-09-30T09:00:00',
    1.0577, 15.15, 155.01,
    17.047916666666666, 409.15, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #140
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    140, 'COOK-140', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-01T14:09:00',
    1.0586, 15.39, 157.44,
    24.002777777777776, 576.06666666666661, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #143
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    143, 'COOK-143', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-07T09:00:00',
    1.0581, 15.26, 156.09,
    38.395833333333329, 921.49999999999989, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #145
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    145, 'COOK-145', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-10-24T09:00:00',
    1.0586, 15.39, 157.44,
    28.370138888888889, 680.88333333333333, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #150
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    150, 'COOK-150', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-11-21T10:21:00',
    1.0594, 15.60, 159.60,
    17.961805555555554, 431.08333333333326, 'WS Import. Brix: 14.60', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #148
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    148, 'COOK-148', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-11-11T09:00:00',
    1.0586, 15.39, 157.44,
    35.103472222222223, 842.48333333333335, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #151
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    151, 'COOK-151', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-12-04T15:39:00',
    1.059, 15.50, 158.52,
    15.070138888888888, 361.68333333333328, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #154
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    154, 'COOK-154', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-12-11T09:43:00',
    1.0577, 15.15, 155.01,
    30.09236111111111, 722.2166666666667, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #157
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    157, 'COOK-157', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2025-12-22T10:45:00',
    1.0586, 15.39, 157.44,
    25.279166666666665, 606.69999999999993, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #156
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    156, 'COOK-156', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-01-09T16:49:00',
    1.0564, 14.81, 151.50,
    11.017361111111111, 264.41666666666663, 'WS Import. Brix: 13.90', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #158
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    158, 'COOK-158', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-01-28T04:00:00',
    1.0586, 15.39, 157.44,
    25.551388888888887, 613.23333333333335, 'WS Import. Brix: 14.41', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #162
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    162, 'COOK-162', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-02-20T14:20:00',
    1.0577, 15.15, 155.01,
    17.995138888888889, 431.88333333333333, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #165
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    165, 'COOK-165', NULL, (SELECT id FROM fermenters WHERE name = 'Tammy Wynette' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-03-12T11:29:00',
    1.0577, 15.15, 155.01,
    10.991400123410878, 263.7936029618611, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #161
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    161, 'COOK-161', NULL, (SELECT id FROM fermenters WHERE name = 'Townes Van Zandt' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-02-05T16:15:00',
    1.0581, 15.26, 156.09,
    45.792789012299764, 1099.0269362951944, 'WS Import. Brix: 14.30', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #125
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    125, 'COOK-125', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 775.000000, '2025-02-12T14:41:00',
    1.0577, 15.15, 117.43,
    2.0965277777777778, 50.316666666666663, 'WS Import. Brix: 14.20', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #124
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    124, 'COOK-124', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 775.000000, '2025-02-11T15:34:00',
    1.0568, 14.92, 115.59,
    49.064583333333331, 1177.55, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'Silas@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #164
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    164, 'COOK-164', NULL, (SELECT id FROM fermenters WHERE name = 'Tom Waits' LIMIT 1),
    'whiskey'::spirit_type, '33 BBL Maris Otter #19', 1023.000000, '2026-03-09T11:28:00',
    1.059, 15.50, 158.52,
    13.992094567855323, 335.81026962852775, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #13
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    13, 'COOK-13', NULL, (SELECT id FROM fermenters WHERE name = 'John Waters' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 2000.000000, '2023-07-01T10:49:00',
    1.0633, 16.63, 332.62,
    39.007638888888884, 936.18333333333317, 'WS Import. Brix: 15.51', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #15
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    15, 'COOK-15', 'DistilamaxRM', (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 900.000000, '2023-08-10T16:00:00',
    1.0676, 17.77, 159.90,
    34.041666666666664, 817, 'WS Import. Brix: 16.50', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #17
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    17, 'COOK-17', 'DistillaMaxRM (1500 g) & SafAle BE-134 (1500 gram)', (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 900.000000, '2023-09-06T20:00:00',
    1.0637, 16.74, 150.63,
    28.793055555555554, 691.0333333333333, 'WS Import. Brix: 15.60', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #3
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    3, 'COOK-3', NULL, (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-01-28T17:17:00',
    NULL, NULL, NULL,
    3.7472222222222222, 89.933333333333337, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #5
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    5, 'COOK-5', 'Rum Wash', (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-02-23T16:39:00',
    NULL, NULL, NULL,
    20.790277777777778, 498.9666666666667, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #10
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    10, 'COOK-10', 'Rum Wash - Randy', (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-04-17T10:25:00',
    NULL, NULL, NULL,
    14.001388888888888, 336.0333333333333, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #9
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    9, 'COOK-9', 'Rum Wash - Bryan', (SELECT id FROM fermenters WHERE name = 'WC Fields' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-03-09T10:23:00',
    NULL, NULL, NULL,
    97.27569444444444, 2334.6166666666668, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #14
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    14, 'COOK-14', 'DistillaMx RM', (SELECT id FROM fermenters WHERE name = 'Fredrico Felinni' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1667.000000, '2023-07-27T20:00:00',
    1.083, 21.83, 363.94,
    32.695138888888884, 784.68333333333317, 'WS Import. Brix: 20.01', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #11
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    11, 'COOK-11', 'Rum Wash - Randy', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-04-18T10:26:00',
    NULL, NULL, NULL,
    43.145138888888887, 1035.4833333333333, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #8
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    8, 'COOK-8', 'Rum Wash - Bryan', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-03-05T10:22:00',
    NULL, NULL, NULL,
    101.27638888888889, 2430.6333333333332, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #16
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    16, 'COOK-16', 'DistillamaxRM', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 900.000000, '2023-08-10T19:30:00',
    1.0676, 17.77, 159.90,
    53.734027777777776, 1289.6166666666666, 'WS Import. Brix: 16.50', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #18
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    18, 'COOK-18', 'DistillaMaxRM (1500 grams) & SafAle BE-134 (1500 grams)', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 900.000000, '2023-09-06T20:00:00',
    1.0685, 18.00, 162.04,
    30.982638888888889, 743.58333333333337, 'WS Import. Brix: 16.71', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #2
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    2, 'COOK-2', NULL, (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-01-05T16:49:00',
    NULL, NULL, NULL,
    22.015972222222221, 528.38333333333333, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #4
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    4, 'COOK-4', 'Rum Wash', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-01-30T10:58:00',
    NULL, NULL, NULL,
    24.229861111111109, 581.51666666666665, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #6
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    6, 'COOK-6', 'Rum Wash', (SELECT id FROM fermenters WHERE name = 'WC Handy' LIMIT 1),
    'rum'::spirit_type, 'Rum Molasses Grade A', 1000.000000, '2023-03-05T10:20:00',
    NULL, NULL, NULL,
    11.063194444444443, 265.51666666666665, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #126
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    126, 'COOK-126', 'GL', (SELECT id FROM fermenters WHERE name = 'Fredrico Felinni' LIMIT 1),
    'whiskey'::spirit_type, 'Beer Whisky', 450.000000, '2025-02-13T10:56:00',
    1.052, 13.65, 61.42,
    0.0020833333333333333, 0.05, 'WS Import. Brix: 12.86', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #1
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    1, 'COOK-1', NULL, (SELECT id FROM fermenters WHERE name = 'Iggy Pop' LIMIT 1),
    'brandy'::spirit_type, 'Grape Wine Ferment', 325.000000, '2023-01-06T14:35:00',
    NULL, NULL, NULL,
    18.015277777777776, 432.36666666666662, 'WS Import. Brix:', COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #122
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    122, 'COOK-122', NULL, (SELECT id FROM fermenters WHERE name = 'Fredrico Felinni' LIMIT 1),
    'brandy'::spirit_type, 'Apple Cider Ferment', 1000.000000, '2025-02-07T14:34:00',
    1.0654, 17.19, 171.86,
    0.00069444444444444436, 0.016666666666666663, 'WS Import. Brix: 15.99', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #76
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    76, 'COOK-76', NULL, (SELECT id FROM fermenters WHERE name = 'Yayoi Kusama' LIMIT 1),
    'brandy'::spirit_type, 'Apple Cider Ferment', 550.000000, '2024-07-01T16:09:00',
    1.059, 15.50, 85.23,
    18.035416666666666, 432.85, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #77
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    77, 'COOK-77', NULL, (SELECT id FROM fermenters WHERE name = 'Penelope Houston' LIMIT 1),
    'brandy'::spirit_type, 'Apple Cider Ferment', 550.000000, '2024-07-01T16:10:00',
    1.059, 15.50, 85.23,
    24.996527777777775, 599.91666666666663, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #80
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    80, 'COOK-80', 'Cider for Brandy', (SELECT id FROM fermenters WHERE name = 'Penelope Houston' LIMIT 1),
    'brandy'::spirit_type, 'Apple Cider Ferment', 500.000000, '2024-08-01T06:00:00',
    1.0568, 14.92, 74.58,
    13.360416666666666, 320.65, 'WS Import. Brix: 13.99', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- Cook #78
  INSERT INTO fermentation_batches (
    cook_number, batch_number, internal_lot_name, fermenter_id,
    spirit_type, mash_bill, volume_gal, start_date,
    start_sg, potential_pf, potential_pg,
    total_days, total_hours, notes, logged_by
  ) VALUES (
    78, 'COOK-78', NULL, (SELECT id FROM fermenters WHERE name = 'Gene Kruppa' LIMIT 1),
    'brandy'::spirit_type, 'Apple Cider Ferment', 55.000000, '2024-07-01T16:11:00',
    1.059, 15.50, 8.52,
    23.992361111111109, 575.81666666666661, 'WS Import. Brix: 14.51', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (batch_number) DO NOTHING;

END $$;

COMMIT;