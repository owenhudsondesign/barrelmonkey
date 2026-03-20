-- ============================================================
-- BARRELMONKEY — PROVENANCE SEED DATA
-- Generated from WhiskeySystems XLSX exports
-- Batching Runs: 38 records
-- Bottling Runs: 48 records
-- ============================================================

BEGIN;

-- Use first admin user as logged_by for seeded records
DO $$ DECLARE v_admin_id UUID;
BEGIN
  SELECT id INTO v_admin_id FROM users WHERE role = 'admin' LIMIT 1;
  IF v_admin_id IS NULL THEN
    RAISE EXCEPTION 'No admin user found. Import users first.';
  END IF;

  -- Ensure all referenced tanks exist
  INSERT INTO tanks (name, tank_category) VALUES ('10-24F13', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('10-25D08', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('123-PD', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('13-23A11A6', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('5-22F23C', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('8-22C02A', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Abigail Adams', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Betty Bumpers', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Dolly Parton', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Exene Cervenka', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 6.3', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Greta Gerwig', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Hedy Lamar', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Howard Hawk', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('M47692M-21', 'misc')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Nina Hagen', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Notch 8- 1', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Penelope Houston', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Polly Platt', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sir Dump A Lot', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('VANILLA EXTRACT', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('VANILLA REMNANT 8.9.22', 'processing')
    ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Yayoi Kusama', 'processing')
    ON CONFLICT (name) DO NOTHING;

  -- ============================================================
  -- BATCHING RUNS
  -- ============================================================
  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '43', 'extract'::spirit_type, 'Extract Orange',
    '2026-03-17T12:02:00',
    25, 28.75,
    (SELECT id FROM tanks WHERE name = '10-25D08' LIMIT 1),
    'WS Recipe: Extract Orange Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '42', 'vodka'::spirit_type, 'Vodka Orange',
    '2026-03-09T14:07:00',
    336, 267.8,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Vodka Orange Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '41', 'extract'::spirit_type, 'Extract Orange',
    '2026-02-18T14:02:00',
    157, 157.052,
    (SELECT id FROM tanks WHERE name = '10-24F13' LIMIT 1),
    'WS Recipe: Extract Orange Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '40', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2026-01-27T14:15:00',
    447, 346.5,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Lot: 26A27. Run: Vanilla vodka. WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '39', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2025-10-03T12:00:00',
    421, 346.5,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '38', 'extract'::spirit_type, 'Extract Vanilla',
    '2025-09-08T15:09:00',
    82.5, 157,
    (SELECT id FROM tanks WHERE name = 'VANILLA REMNANT 8.9.22' LIMIT 1),
    'WS Recipe: Extract Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '37', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2025-07-18T13:22:00',
    427, 338.55,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '36', 'vodka'::spirit_type, 'Vodka Organic',
    '2025-07-12T14:24:00',
    515, 417.14,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '35', 'vodka'::spirit_type, 'Vodka Orange',
    '2025-05-15T14:12:00',
    345, 284.7,
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'WS Recipe: Vodka Orange Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '34', 'vodka'::spirit_type, 'Vodka Organic',
    '2025-06-01T13:44:00',
    520, 417.14,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '33', 'brandy'::spirit_type, 'brandy pommeau',
    '2025-06-04T12:46:00',
    285, 73.86,
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'WS Recipe: brandy pommeau Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '32', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2025-05-17T11:17:00',
    430, 349.39,
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '31', 'extract'::spirit_type, 'Extract Orange',
    '2025-05-10T11:04:00',
    100, 105.35,
    (SELECT id FROM tanks WHERE name = '123-PD' LIMIT 1),
    'Run: gregory groves. WS Recipe: Extract Orange Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '30', 'extract'::spirit_type, 'Extract Vanilla',
    '2025-02-13T11:31:00',
    100, 121.23,
    (SELECT id FROM tanks WHERE name = 'VANILLA EXTRACT' LIMIT 1),
    'Run: 3 pronged vanilla extract . WS Recipe: Extract Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '29', 'brandy'::spirit_type, 'brandy pommeau',
    '2025-02-07T14:43:00',
    370, 166.20746,
    (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'WS Recipe: brandy pommeau Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '27', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2025-01-06T11:53:00',
    418, 336.17,
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Lot: vanilla vokka. Run: 25A06. WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '26', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2024-10-24T11:29:00',
    412, 340.05,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Lot: 24I24. WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '24', 'rum'::spirit_type, 'Rum FdC 8yr Blend',
    '2024-07-15T11:08:00',
    605, 798.16,
    (SELECT id FROM tanks WHERE name = 'Dolly Parton' LIMIT 1),
    'WS Recipe: Rum FdC 8yr Blend Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '23', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2024-07-16T12:49:00',
    476, 364.746,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Lot: 24G16. WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '22', 'vodka'::spirit_type, 'Vodka Organic',
    '2024-05-20T12:43:00',
    525, 437.84,
    (SELECT id FROM tanks WHERE name = '5-22F23C' LIMIT 1),
    'Lot: 24E17. WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '21', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2024-02-15T13:55:00',
    500, 331.564,
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '20', 'vodka'::spirit_type, 'Vodka Organic',
    '2024-02-16T11:10:00',
    400, 417.14,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '19', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2023-11-27T15:11:00',
    500, 396.962,
    (SELECT id FROM tanks WHERE name = 'M47692M-21' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '17', 'extract'::spirit_type, 'Extract Vanilla',
    '2023-06-23T14:54:00',
    50, 56.656,
    (SELECT id FROM tanks WHERE name = 'M47692M-21' LIMIT 1),
    'WS Recipe: Extract Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '16', 'rum'::spirit_type, 'Rum FdC 8yr Blend',
    '2023-11-01T13:51:00',
    330, 435.49,
    (SELECT id FROM tanks WHERE name = 'Dolly Parton' LIMIT 1),
    'WS Recipe: Rum FdC 8yr Blend Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '15', 'rum'::spirit_type, 'Rum FdC 8yr Blend',
    '2023-10-31T11:07:00',
    500, 435.435,
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'WS Recipe: Rum FdC 8yr Blend Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '14', 'rum'::spirit_type, 'Rum Hurricane Blend',
    '2023-10-20T13:15:00',
    500, 506.843302,
    (SELECT id FROM tanks WHERE name = '13-23A11A6' LIMIT 1),
    'WS Recipe: Rum Hurricane Blend Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '13', 'vodka'::spirit_type, 'Vodka Organic',
    '2023-09-01T10:53:00',
    543, 455.122659,
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '12', 'vodka'::spirit_type, 'Vodka Organic',
    '2023-08-16T10:09:00',
    540, 455.42,
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '11', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2023-07-19T10:57:00',
    375, 380.7,
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '10', 'rum'::spirit_type, 'Rum Hurricane Blend',
    '2023-06-10T13:00:00',
    570, 476.61843,
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    'WS Recipe: Rum Hurricane Blend Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '9', 'vodka'::spirit_type, 'Vodka Organic',
    '2023-05-31T11:56:00',
    220, 417.2,
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '8', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2023-05-22T11:48:00',
    420, 331.406,
    (SELECT id FROM tanks WHERE name = '13-23A11A6' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '7', 'vodka'::spirit_type, 'Vodka Vanilla',
    '2023-01-08T11:22:00',
    455, 349.624,
    (SELECT id FROM tanks WHERE name = 'VANILLA REMNANT 8.9.22' LIMIT 1),
    'WS Recipe: Vodka Vanilla Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '5', 'gin'::spirit_type, 'Gin Gale Force R2',
    '2023-03-29T16:46:00',
    454, 513.496,
    (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    'WS Recipe: Gin Gale Force R2 Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '4', 'gin'::spirit_type, 'Gin Gale Force R2',
    '2023-02-02T16:43:00',
    400, 410.194,
    (SELECT id FROM tanks WHERE name = 'Yayoi Kusama' LIMIT 1),
    'WS Recipe: Gin Gale Force R2 Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '3', 'rum'::spirit_type, 'Rum FdC 3yr White',
    '2023-05-07T11:05:00',
    510, 436.15,
    (SELECT id FROM tanks WHERE name = 'FDC 6.3' LIMIT 1),
    'Lot: 5/8/23. WS Recipe: Rum FdC 3yr White Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  INSERT INTO batching_runs (
    batch_number, spirit_type, product_name, batch_date,
    wine_gal_out, proof_gal_out, to_tank_id, notes, logged_by
  ) VALUES (
    '2', 'vodka'::spirit_type, 'Vodka Organic',
    '2023-01-30T10:59:00',
    1010, 834.32,
    (SELECT id FROM tanks WHERE name = '8-22C02A' LIMIT 1),
    'Lot: 2/1/23. WS Recipe: Vodka Organic Default Recipe',
    v_admin_id
  ) ON CONFLICT (batch_number) DO NOTHING;

  -- ============================================================
  -- BOTTLING RUNS
  -- ============================================================
  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    60, 'Vodka Orange 6/750mL 76PF', '260311',
    'vodka'::spirit_type, '2026-03-11T14:13:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Orange Default Recipe', NULL,
    255.36, 33.578894, 44.182755263157894,
    '6/750mL', 750, 6,
    37, 1,
    NULL, NULL, NULL,
    14.49, 0.391621, 0.064977,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2026-03-11T14:13:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    59, 'Vodka Vanilla 6/750mL 76PF', '260216',
    'vodka'::spirit_type, '2026-02-16T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    346.5, 352.35252, 463.62173684210524,
    '6/750mL', 750, 6,
    390, 0,
    -5.85252, -1.6890389610389611, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2026-02-16T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    58, 'Notch 12yr Single Malt 6/750ml 96PF', '251212',
    'whiskey'::spirit_type, '2025-12-12T10:00:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Whisky Crisp Maris Otter Malt 19 Default Recipe', NULL,
    483.12, 484.639368, 504.832675,
    '6/750ml', 750, 6,
    424, 4,
    -1.519368, -0.3144908097367114, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2025-12-12T10:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    57, 'Vodka Vanilla 6/750mL 76PF', '251016',
    'vodka'::spirit_type, '2025-10-16T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    335.507806, 331.2716, 435.8836842105263,
    '6/750mL', 750, 6,
    366, 4,
    4.236206, 1.2626251682501837, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2025-10-16T08:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    56, 'Vodka Vanilla 6/750mL 76PF', '251008',
    'vodka'::spirit_type, '2025-10-08T13:50:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    346.5, 10.992194, 14.463413157894736,
    '6/750mL', 750, 6,
    12, 1,
    NULL, NULL, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2025-10-08T13:50:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    55, 'Storm Gale Force Gin 6/750mL 88.8PF', '250930',
    'gin'::spirit_type, '2025-09-30T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    'Gin Gale Force Default Recipe', NULL,
    473.370747, 468.700608, 527.816,
    '6/750mL', 750, 6,
    444, 0,
    4.670139, 0.9865711030090332, NULL,
    515.11, 1.160157, 0.193359,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Penelope Houston'
       AND br.batch_date < '2025-09-30T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    54, 'Storm Hurricane Rum 6/750mL 88.8PF', '250902',
    'rum'::spirit_type, '2025-09-02T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Rum Hurricane Blend Default Recipe', NULL,
    467.088, 467.820915, 526.8253547297297,
    '6/750mL', 750, 6,
    443, 1,
    -0.732915, -0.15691154557599424, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Greta Gerwig'
       AND br.batch_date < '2025-09-02T08:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    53, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '250805',
    'whiskey'::spirit_type, '2025-08-05T09:51:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    'Whisky Bourbon Blend NEB Default Recipe', NULL,
    500.412, 497.55455, 560.309177927928,
    '6/750mL', 750, 6,
    471, 2,
    2.85745, 0.5710194799485224, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Hedy Lamar'
       AND br.batch_date < '2025-08-05T09:51:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    52, 'Vodka Vanilla 6/750mL 76PF', '250721',
    'vodka'::spirit_type, '2025-07-21T13:36:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    320.04, 323.441544, 425.5809789473684,
    '6/750mL', 750, 6,
    358, 0,
    -3.401544, -1.0628496437945256, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2025-07-21T13:36:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    51, 'Vodka Organic 6/750mL 80PF', '250714',
    'vodka'::spirit_type, '2025-07-14T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    417.14, 416.070812, 520.088515,
    '6/750mL', 750, 6,
    437, 3,
    1.069188, 0.2563139473558038, NULL,
    4512.52, 10.326132, 1.719055,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2025-07-14T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    50, 'Notch 15yr Single Malt 6/750ml 96PF', '250708',
    'whiskey'::spirit_type, '2025-07-08T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Whisky Crisp Maris Otter Malt 19 Default Recipe', NULL,
    19.6173, 18.449773, 19.218513541666667,
    '6/750ml', 750, 6,
    15, 7,
    1.167527, 5.951517283214306, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Sir Dump A Lot'
       AND br.batch_date < '2025-07-08T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    49, 'Salty Gin 6/750mL 88.8PF', '250627',
    'gin'::spirit_type, '2025-06-27T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1),
    'Gin Kelp R1 Default Recipe', NULL,
    100, 94.303126, 106.19721396396396,
    '6/750mL', 750, 6,
    89, 2,
    5.696874, 5.696874, NULL,
    45.66, 0.513033, 0.085186,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Exene Cervenka'
       AND br.batch_date < '2025-06-27T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    48, 'Pommeau 12/375mL 20PF', '250623',
    'brandy'::spirit_type, '2025-06-23T08:30:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'brandy pommeau Default Recipe', '1454791',
    22, 20.407306, 51.018265,
    '12/375mL', 375, 12,
    42, 11,
    1.592694, 7.239518181818182, NULL,
    1.27, 0.030238, 0.002466,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Sir Dump A Lot'
       AND br.batch_date < '2025-06-23T08:30:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    47, 'Vodka Orange 6/750mL 76PF', '250522',
    'vodka'::spirit_type, '2025-05-22T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Vodka Orange Default Recipe', NULL,
    284.7, 265.619592, 349.49946315789475,
    '6/750mL', 750, 6,
    294, 0,
    19.080408, 6.7019346680716545, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Greta Gerwig'
       AND br.batch_date < '2025-05-22T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    46, 'Rum Nantucket White 6/1L 100PF', '250618',
    'rum'::spirit_type, '2025-06-18T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Rum Nantucket White Default Recipe', NULL,
    108.732, 106.197144, 106.197144,
    NULL, NULL, NULL,
    67, 0,
    2.534856, 2.3312879373137623, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Sir Dump A Lot'
       AND br.batch_date < '2025-06-18T08:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    44, 'Vodka Organic 6/750mL 80PF', '250609',
    'vodka'::spirit_type, '2025-06-09T09:01:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    417.14, 416.863328, 521.07916,
    '6/750mL', 750, 6,
    438, 2,
    0.276672, 0.06632593373927219, NULL,
    4512.52, 10.302557, 1.715787,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2025-06-09T09:01:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    41, 'Storm Hurricane Rum 6/750mL 88.8PF', '250607',
    'rum'::spirit_type, '2025-06-07T10:40:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Rum Hurricane Blend Default Recipe', NULL,
    486.36, 485.59072, 546.8363963963964,
    '6/750mL', 750, 6,
    460, 0,
    NULL, NULL, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2025-06-07T10:40:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    39, 'Vodka Vanilla 6/750mL 76PF', '250520',
    'vodka'::spirit_type, '2025-05-20T13:55:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    349.39, 327.356572, 430.73233157894737,
    '6/750mL', 750, 6,
    362, 2,
    22.033428, 6.306256046252039, NULL,
    181.75, 0.502071, 0.083601,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2025-05-20T13:55:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    38, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '250116',
    'whiskey'::spirit_type, '2025-01-16T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    'Whisky Bourbon Blend NEB Default Recipe', NULL,
    461.664, 491.924512, 553.969045045045,
    '6/750mL', 750, 6,
    466, 0,
    -30.260512, -6.554661398766203, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Hedy Lamar'
       AND br.batch_date < '2025-01-16T09:30:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    37, 'Vodka Vanilla 6/750mL 76PF', '250116',
    'vodka'::spirit_type, '2025-01-16T09:20:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    336.17, 328.862352, 432.7136210526316,
    '6/750mL', 750, 6,
    364, 0,
    7.307648, 2.1737954011363296, 30,
    600, 1.648351, 0.274725,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Greta Gerwig'
       AND br.batch_date < '2025-01-16T09:20:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    36, 'Rum Nomans Dark 6/750mL 88.8PF', '240729',
    'rum'::spirit_type, '2024-07-29T09:47:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Rum FdC 8yr Blend Default Recipe', NULL,
    466, 457.088656, 514.7394774774775,
    '6/750mL', 750, 6,
    433, 0,
    8.911344, 1.9123055793991417, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2024-07-29T09:47:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    35, 'Storm Gale Force Gin 6/750mL 88.8PF', '241025',
    'gin'::spirit_type, '2024-10-25T11:35:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1),
    'Gin Gale Force Default Recipe', NULL,
    444.24244, 440.022607, 495.52095382882885,
    '6/750mL', 750, 6,
    416, 5,
    4.219833, 0.9498941613952958, NULL,
    2043.16, 4.911442, 0.816937,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Penelope Houston'
       AND br.batch_date < '2024-10-25T11:35:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    34, 'Vodka Vanilla 6/750mL 76PF', '241030',
    'vodka'::spirit_type, '2024-10-30T11:33:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    340.05, 318.773626, 419.4389815789474,
    '6/750mL', 750, 6,
    352, 5,
    21.276374, 6.256836935744744, NULL,
    54.51, 0.154857, 0.025748,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2024-10-30T11:33:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    32, 'Vodka Organic 6/750mL 80PF', '240603',
    'vodka'::spirit_type, '2024-06-03T12:30:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    437.84, 427.007531, 533.75941375,
    '6/750mL', 750, 6,
    449, 0,
    10.832469, 2.4740702082952675, NULL,
    4757.83, 10.596503, 1.766083,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2024-06-03T12:30:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    31, 'Vodka Vanilla 6/750mL 76PF', '240722',
    'vodka'::spirit_type, '2024-07-22T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    364.746, 373.734596, 491.75604736842104,
    '6/750mL', 750, 6,
    413, 4,
    -8.988596, -2.464343954423078, NULL,
    1690.09, 4.092227, 0.680938,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2024-07-22T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    30, 'Storm Hurricane Rum 6/750mL 88.8PF', '240617',
    'rum'::spirit_type, '2024-06-17T17:26:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Rum Hurricane Blend Default Recipe', NULL,
    462.3, 505.471791, 569.2249898648648,
    '6/750mL', 750, 6,
    478, 5,
    -43.171791, -9.338479558728098, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Greta Gerwig'
       AND br.batch_date < '2024-06-17T17:26:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    27, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '240507',
    'whiskey'::spirit_type, '2024-05-07T10:30:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    'Whisky Bourbon Blend NEB Default Recipe', NULL,
    458.153, 473.450953, 533.1654876126127,
    '6/750mL', 750, 6,
    448, 3,
    -15.297953, -3.339048963992378, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Hedy Lamar'
       AND br.batch_date < '2024-05-07T10:30:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    26, 'Vodka Vanilla 6/750mL 76PF', '240222',
    'vodka'::spirit_type, '2024-02-22T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    311.674, 306.275652, 402.9942789473684,
    '6/750mL', 750, 6,
    339, 0,
    5.398348, 1.7320495132734846, NULL,
    1458.2, 4.301474, 0.716912,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2024-02-22T08:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    25, 'Vodka Organic 6/750mL 80PF', '240217',
    'vodka'::spirit_type, '2024-02-17T11:59:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    417.14, 404.97559, 506.2194875,
    '6/750mL', 750, 6,
    425, 5,
    12.16441, 2.916145658531908, NULL,
    4512.52, 10.617694, 1.766152,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2024-02-17T11:59:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    24, 'Storm Gale Force Gin 6/750mL 88.8PF', '240209',
    'gin'::spirit_type, '2024-02-09T11:26:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Gin Gale Force Default Recipe', NULL,
    486.929478, 473.099075, 532.7692286036036,
    '6/750mL', 750, 6,
    448, 1,
    13.830403, 2.84032978590793, NULL,
    84.69, 0.18904, 0.031494,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Abigail Adams'
       AND br.batch_date < '2024-02-09T11:26:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    23, 'Vodka Vanilla 6/750mL 76PF', '231205',
    'vodka'::spirit_type, '2023-12-05T15:12:00',
    (SELECT id FROM tanks WHERE name = 'M47692M-21' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    396.962, 368.313788, 484.6234052631579,
    '6/750mL', 750, 6,
    407, 4,
    28.648212, 7.216865090361294, NULL,
    2000.41, 4.915012, 0.817829,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'M47692M-21'
       AND br.batch_date < '2023-12-05T15:12:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    22, 'Rum Nomans White 6/720mL 80PF', '231221',
    'rum'::spirit_type, '2023-12-21T12:38:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Rum FdC 3yr White Default Recipe', NULL,
    435.93, 447.929949, 559.91243625,
    '6/720mL', 720, 6,
    471, 0,
    -11.999949, -2.752723831807859, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Greta Gerwig'
       AND br.batch_date < '2023-12-21T12:38:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    21, 'Notch 8yr Single Malt 1/50ml 96PF', '231125',
    'whiskey'::spirit_type, '2023-11-25T11:16:00',
    (SELECT id FROM tanks WHERE name = 'Notch 8- 1' LIMIT 1),
    'Whisky Crisp Malt Maris Otter Default Recipe', NULL,
    5, 2.82764, 2.9454583333333333,
    '1/50ml', 50, 1,
    223, 0,
    NULL, NULL, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Notch 8- 1'
       AND br.batch_date < '2023-11-25T11:16:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    20, 'Rum Nomans Dark 6/750mL 88.8PF', '231109',
    'rum'::spirit_type, '2023-11-09T11:19:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Rum FdC 8yr Blend Default Recipe', NULL,
    445.952, 454.449577, 511.76754166666666,
    '6/750mL', 750, 6,
    430, 3,
    -8.497577, -1.9054913981773822, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2023-11-09T11:19:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    19, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '231005',
    'whiskey'::spirit_type, '2023-10-05T13:27:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Whisky Bourbon Blend NEB Default Recipe', NULL,
    458.994, 467.644976, 526.6272252252252,
    '6/750mL', 750, 6,
    443, 0,
    -8.650976, -1.8847688640810119, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Polly Platt'
       AND br.batch_date < '2023-10-05T13:27:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    18, 'Storm Hurricane Rum 6/750mL 88.8PF', '231023',
    'rum'::spirit_type, '2023-10-23T13:16:00',
    (SELECT id FROM tanks WHERE name = '13-23A11A6' LIMIT 1),
    'Rum Hurricane Blend Default Recipe', NULL,
    506.843302, 502.480832, 565.8567927927928,
    '6/750mL', 750, 6,
    476, 0,
    4.36247, 0.8607137517228155, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = '13-23A11A6'
       AND br.batch_date < '2023-10-23T13:16:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    17, 'Vodka Organic 6/750mL 80PF', '230921',
    'vodka'::spirit_type, '2023-09-21T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    455.122659, 433.664664, 542.08083,
    '6/750mL', 750, 6,
    456, 0,
    21.457995, 4.714771847911884, NULL,
    5393.57, 11.828004, 1.971334,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2023-09-21T09:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    16, 'Vodka Organic 6/750mL 80PF', '230831',
    'vodka'::spirit_type, '2023-08-31T10:12:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    455.42, 417.497341, 521.87167625,
    '6/750mL', 750, 6,
    439, 0,
    NULL, NULL, NULL,
    5186.71, 11.814829, 1.969138,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2023-08-31T10:12:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    15, 'Vodka Vanilla 6/750mL 76PF', '230803',
    'vodka'::spirit_type, '2023-08-03T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    380.7, 296.789238, 390.5121552631579,
    '6/750mL', 750, 6,
    328, 3,
    -1.089238, -0.28611452587339115, 50,
    2870.95, 8.752896, 1.456595,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Greta Gerwig'
       AND br.batch_date < '2023-08-03T09:30:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    13, 'Storm Hurricane Rum 6/750mL 88.8PF', '230613',
    'rum'::spirit_type, '2023-06-13T16:00:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1),
    'Rum Hurricane Blend Default Recipe', NULL,
    476.61843, 504.24022, 567.8380855855855,
    '6/750mL', 750, 6,
    477, 4,
    -27.62179, -5.795367585764571, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Hedy Lamar'
       AND br.batch_date < '2023-06-13T16:00:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    12, 'Vodka Organic 6/750mL 80PF', '230606',
    'vodka'::spirit_type, '2023-06-06T12:21:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    317.1, 315.262798, 394.0784975,
    '6/750mL', 750, 6,
    331, 3,
    1.837202, 0.5793762220119836, NULL,
    4497.6, 13.587915, 2.261236,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Betty Bumpers'
       AND br.batch_date < '2023-06-06T12:21:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    11, 'Vodka Vanilla 6/750mL 76PF', '230530',
    'vodka'::spirit_type, '2023-05-30T11:50:00',
    (SELECT id FROM tanks WHERE name = '13-23A11A6' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    331.406, 326.603682, 429.74168684210525,
    '6/750mL', 750, 6,
    361, 3,
    4.802318, 1.4490739455531885, NULL,
    2095.83, 5.805623, 0.966265,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = '13-23A11A6'
       AND br.batch_date < '2023-05-30T11:50:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    10, 'Vodka Vanilla 6/750mL 76PF', '230110',
    'vodka'::spirit_type, '2023-01-10T11:26:00',
    (SELECT id FROM tanks WHERE name = 'VANILLA REMNANT 8.9.22' LIMIT 1),
    'Vodka Vanilla Default Recipe', NULL,
    349.624, 344.522464, 453.3190315789474,
    '6/750mL', 750, 6,
    381, 2,
    5.101536, 1.4591492574880442, NULL,
    388.45, 1.019553, 0.169777,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'VANILLA REMNANT 8.9.22'
       AND br.batch_date < '2023-01-10T11:26:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    9, 'Vodka Organic 6/750mL 80PF', '230201',
    'vodka'::spirit_type, '2023-02-01T09:07:00',
    (SELECT id FROM tanks WHERE name = '8-22C02A' LIMIT 1),
    'Vodka Organic Default Recipe', NULL,
    834.32, 806.147105, 1007.68388125,
    '6/750mL', 750, 6,
    847, 4,
    15.510895, 1.887755611215372, NULL,
    12294.87, 14.515785, 2.417394,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = '8-22C02A'
       AND br.batch_date < '2023-02-01T09:07:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    8, 'Storm Gale Force Gin 6/750mL 88.8PF', '230515',
    'gin'::spirit_type, '2023-05-15T17:06:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Gin Gale Force Default Recipe', NULL,
    515.474, 497.378611, 560.1110484234234,
    '6/750mL', 750, 6,
    471, 1,
    18.095389, 3.5104368018561556, NULL,
    470.75, 0.999469, 0.166519,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Abigail Adams'
       AND br.batch_date < '2023-05-15T17:06:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    7, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '230417',
    'whiskey'::spirit_type, '2023-04-17T12:48:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1),
    'Whisky Bourbon Blend NEB Default Recipe', NULL,
    498.255, 498.082367, 560.9035664414414,
    '6/750mL', 750, 6,
    471, 5,
    0.172633, 0.03464751984425646, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Howard Hawk'
       AND br.batch_date < '2023-04-17T12:48:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    6, 'Rum Nomans White 6/720mL 88.8PF', '230508',
    'rum'::spirit_type, '2023-05-08T11:41:00',
    (SELECT id FROM tanks WHERE name = 'FDC 6.3' LIMIT 1),
    'Rum FdC 3yr White Default Recipe', NULL,
    436.15, 448.467663, 505.031152027027,
    '6/720mL', 720, 6,
    424, 5,
    -12.317663, -2.8241804425083115, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'FDC 6.3'
       AND br.batch_date < '2023-05-08T11:41:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  INSERT INTO bottling_runs (
    bottling_number, product_name, lot_name, spirit_type, bottle_date,
    source_tank_id, recipe, ttb_formula,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pack_format, bottle_size_ml, bottles_per_case,
    cases_filled, loose_bottles,
    pg_loss, pct_loss, labor_hours,
    total_value, price_per_case, price_per_bottle,
    start_cs_serial, end_cs_serial,
    batching_run_id, logged_by
  ) VALUES (
    2, 'Storm Hurricane Rum 6/750mL 88.8PF', '230111',
    'rum'::spirit_type, '2023-01-11T17:42:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Rum Hurricane Blend Default Recipe', NULL,
    484.409, 476.44191, 536.5336824324324,
    '6/750mL', 750, 6,
    451, 2,
    7.96709, 1.6447031330962059, NULL,
    NULL, NULL, NULL,
    NULL, NULL,
    (SELECT br.id FROM batching_runs br
     JOIN tanks t ON t.id = br.to_tank_id
     WHERE t.name = 'Abigail Adams'
       AND br.batch_date < '2023-01-11T17:42:00'
     ORDER BY br.batch_date DESC LIMIT 1),
    v_admin_id
  );

  -- ============================================================
  -- ADD UNIQUE CONSTRAINT for idempotent barrel-batch linking
  -- ============================================================
  ALTER TABLE batching_run_barrels
    ADD CONSTRAINT batching_run_barrels_unique
    UNIQUE (batching_run_id, barrel_id);

  -- ============================================================
  -- BARREL → BATCH LINKAGE
  -- Match dumped barrels to batching runs via dump events
  -- Heuristic: barrel dumped to tank T before batch date,
  -- batch outputs to tank T, matching spirit type
  -- ============================================================

  INSERT INTO batching_run_barrels (batching_run_id, barrel_id, proof_gal_contributed, wine_gal_contributed)
  SELECT DISTINCT ON (br.id, b.id)
    br.id AS batching_run_id,
    b.id AS barrel_id,
    be.proof_gal AS proof_gal_contributed,
    be.wine_gal AS wine_gal_contributed
  FROM batching_runs br
  JOIN barrel_events be ON be.event_type = 'dump'
  JOIN barrels b ON b.id = be.barrel_id
  -- Match: barrel dumped to same tank that batching run output to
  -- (at 888, barrels are dumped into a tank, then that tank is 'batched')
  WHERE be.to_tank_id = br.to_tank_id
    AND be.event_date < br.batch_date
    -- Only link dumps within 90 days before the batch
    AND be.event_date > br.batch_date - INTERVAL '90 days'
  ORDER BY br.id, b.id, be.event_date DESC
  ON CONFLICT (batching_run_id, barrel_id) DO NOTHING;

  -- Also link via dump_batch lot names where available
  INSERT INTO batching_run_barrels (batching_run_id, barrel_id, proof_gal_contributed, wine_gal_contributed)
  SELECT DISTINCT ON (br.id, be.barrel_id)
    br.id,
    be.barrel_id,
    be.proof_gal,
    be.wine_gal
  FROM batching_runs br
  JOIN dump_batches db ON db.blend_lot_name IS NOT NULL
    AND br.notes LIKE '%' || db.blend_lot_name || '%'
  JOIN barrel_events be ON be.dump_batch_id = db.id
  ORDER BY br.id, be.barrel_id, be.event_date DESC
  ON CONFLICT (batching_run_id, barrel_id) DO NOTHING;

END $$;

-- Summary counts
DO $$ BEGIN
  RAISE NOTICE 'Batching runs: %', (SELECT count(*) FROM batching_runs);
  RAISE NOTICE 'Bottling runs: %', (SELECT count(*) FROM bottling_runs);
  RAISE NOTICE 'Barrel-batch links: %', (SELECT count(*) FROM batching_run_barrels);
END $$;

COMMIT;
