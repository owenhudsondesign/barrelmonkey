-- ============================================================
-- BARRELMONKEY — Import Bottling Runs
-- 48 rows from WhiskeySystems export
-- NOTE: 48 rows already seeded in 00003. Uses unique index on bottling_number.
-- ============================================================

BEGIN;

-- Add unique constraint on bottling_number if not exists
CREATE UNIQUE INDEX IF NOT EXISTS bottling_runs_bottling_number_unique
  ON bottling_runs (bottling_number) WHERE bottling_number IS NOT NULL;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  -- Ensure referenced tanks exist
  INSERT INTO tanks (name, tank_category) VALUES ('13-23A11A6', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('8-22C02A', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Abigail Adams', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Betty Bumpers', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Exene Cervenka', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('FDC 6.3', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Greta Gerwig', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Hedy Lamar', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Howard Hawk', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('M47692M-21', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Notch 8- 1', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Penelope Houston', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Polly Platt', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sir Dump A Lot', 'processing') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('VANILLA REMNANT 8.9.22', 'processing') ON CONFLICT (name) DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    60, NULL, NULL, NULL,
    'Vodka Orange 6/750mL 76PF', 'Vodka Orange Default Recipe', 'vodka'::spirit_type, '2026-03-11T14:13:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    37, 1,
    255.36, 33.578894, 44.182755263157894,
    0, 0, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    59, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2026-02-16T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    390, 0,
    346.5, 352.35252, 463.62173684210524,
    -5.85252, -1.6890389610389611, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    58, NULL, NULL, NULL,
    'Notch 12yr Single Malt 6/750ml 96PF', 'Whisky Crisp Maris Otter Malt 19 Default Recipe', 'whiskey'::spirit_type, '2025-12-12T10:00:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    424, 4,
    483.12, 484.639368, 504.832675,
    -1.519368, -0.3144908097367114, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    57, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2025-10-16T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    366, 4,
    335.507806, 331.2716, 435.8836842105263,
    4.236206, 1.2626251682501837, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    56, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2025-10-08T13:50:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    12, 1,
    346.5, 10.992194, 14.463413157894736,
    0, 0, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    55, NULL, NULL, NULL,
    'Storm Gale Force Gin 6/750mL 88.8PF', 'Gin Gale Force Default Recipe', 'gin'::spirit_type, '2025-09-30T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), NULL,
    444, 0,
    473.370747, 468.700608, 527.816,
    4.670139, 0.9865711030090332, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    54, NULL, NULL, NULL,
    'Storm Hurricane Rum 6/750mL 88.8PF', 'Rum Hurricane Blend Default Recipe', 'rum'::spirit_type, '2025-09-02T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), NULL,
    443, 1,
    467.088, 467.820915, 526.8253547297297,
    -0.732915, -0.15691154557599424, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    53, NULL, NULL, NULL,
    'Storm Nor''Easter Bourbon 6/750mL 88.8PF', 'Whisky Bourbon Blend NEB Default Recipe', 'bourbon'::spirit_type, '2025-08-05T09:51:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), NULL,
    471, 2,
    500.412, 497.55455, 560.309177927928,
    2.85745, 0.5710194799485224, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    52, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2025-07-21T13:36:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    358, 0,
    320.04, 323.441544, 425.5809789473684,
    -3.401544, -1.0628496437945256, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    51, NULL, NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2025-07-14T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    437, 3,
    417.14, 416.070812, 520.088515,
    1.069188, 0.2563139473558038, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    50, NULL, NULL, NULL,
    'Notch 15yr Single Malt 6/750ml 96PF', 'Whisky Crisp Maris Otter Malt 19 Default Recipe', 'whiskey'::spirit_type, '2025-07-08T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), NULL,
    15, 7,
    19.6173, 18.449773, 19.218513541666667,
    1.167527, 5.951517283214306, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    49, NULL, NULL, NULL,
    'Salty Gin 6/750mL 88.8PF', 'Gin Kelp R1 Default Recipe', 'gin'::spirit_type, '2025-06-27T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Exene Cervenka' LIMIT 1), NULL,
    89, 2,
    100, 94.303126, 106.19721396396396,
    5.696874, 5.696874, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    48, NULL, NULL, NULL,
    'Pommeau 12/375mL 20PF', 'brandy pommeau Default Recipe', 'brandy'::spirit_type, '2025-06-23T08:30:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), '1454791',
    42, 11,
    22, 20.407306, 51.018265,
    1.592694, 7.239518181818182, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    47, NULL, NULL, NULL,
    'Vodka Orange 6/750mL 76PF', 'Vodka Orange Default Recipe', 'vodka'::spirit_type, '2025-05-22T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), NULL,
    294, 0,
    284.7, 265.619592, 349.49946315789475,
    19.080408, 6.7019346680716545, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    46, NULL, NULL, NULL,
    'Rum Nantucket White 6/1L 100PF', 'Rum Nantucket White Default Recipe', 'rum'::spirit_type, '2025-06-18T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1), NULL,
    67, 0,
    108.732, 106.197144, 106.197144,
    2.534856, 2.3312879373137623, COALESCE((SELECT id FROM users WHERE email = 'deanw@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    44, NULL, NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2025-06-09T09:01:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    438, 2,
    417.14, 416.863328, 521.07916,
    0.276672, 0.06632593373927219, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    41, NULL, NULL, NULL,
    'Storm Hurricane Rum 6/750mL 88.8PF', 'Rum Hurricane Blend Default Recipe', 'rum'::spirit_type, '2025-06-07T10:40:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    460, 0,
    486.36, 485.59072, 546.8363963963964,
    0, 0, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    39, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2025-05-20T13:55:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    362, 2,
    349.39, 327.356572, 430.73233157894737,
    22.033428, 6.306256046252039, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    38, NULL, NULL, NULL,
    'Storm Nor''Easter Bourbon 6/750mL 88.8PF', 'Whisky Bourbon Blend NEB Default Recipe', 'bourbon'::spirit_type, '2025-01-16T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), NULL,
    466, 0,
    461.664, 491.924512, 553.969045045045,
    -30.260512, -6.554661398766203, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    37, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2025-01-16T09:20:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), NULL,
    364, 0,
    336.17, 328.862352, 432.7136210526316,
    7.307648, 2.1737954011363296, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    36, NULL, NULL, NULL,
    'Rum Nomans Dark 6/750mL 88.8PF', 'Rum FdC 8yr Blend Default Recipe', 'rum'::spirit_type, '2024-07-29T09:47:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    433, 0,
    466, 457.088656, 514.7394774774775,
    8.911344, 1.9123055793991417, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    35, NULL, NULL, NULL,
    'Storm Gale Force Gin 6/750mL 88.8PF', 'Gin Gale Force Default Recipe', 'gin'::spirit_type, '2024-10-25T11:35:00',
    (SELECT id FROM tanks WHERE name = 'Penelope Houston' LIMIT 1), NULL,
    416, 5,
    444.24244, 440.022607, 495.52095382882885,
    4.219833, 0.9498941613952958, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    34, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2024-10-30T11:33:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    352, 5,
    340.05, 318.773626, 419.4389815789474,
    21.276374, 6.256836935744744, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    32, NULL, NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2024-06-03T12:30:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    449, 0,
    437.84, 427.007531, 533.75941375,
    10.832469, 2.4740702082952675, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    31, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2024-07-22T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    413, 4,
    364.746, 373.734596, 491.75604736842104,
    -8.988596, -2.464343954423078, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    30, NULL, NULL, NULL,
    'Storm Hurricane Rum 6/750mL 88.8PF', 'Rum Hurricane Blend Default Recipe', 'rum'::spirit_type, '2024-06-17T17:26:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), NULL,
    478, 5,
    462.3, 505.471791, 569.2249898648648,
    -43.171791, -9.338479558728098, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    27, '3707-4156', NULL, NULL,
    'Storm Nor''Easter Bourbon 6/750mL 88.8PF', 'Whisky Bourbon Blend NEB Default Recipe', 'bourbon'::spirit_type, '2024-05-07T10:30:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), NULL,
    448, 3,
    458.153, 473.450953, 533.1654876126127,
    -15.297953, -3.339048963992378, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    26, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2024-02-22T08:00:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    339, 0,
    311.674, 306.275652, 402.9942789473684,
    5.398348, 1.7320495132734846, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    25, 'Lot Sticker # 4797-5223', NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2024-02-17T11:59:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    425, 5,
    417.14, 404.97559, 506.2194875,
    12.16441, 2.916145658531908, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    24, NULL, NULL, NULL,
    'Storm Gale Force Gin 6/750mL 88.8PF', 'Gin Gale Force Default Recipe', 'gin'::spirit_type, '2024-02-09T11:26:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), NULL,
    448, 1,
    486.929478, 473.099075, 532.7692286036036,
    13.830403, 2.84032978590793, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    23, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2023-12-05T15:12:00',
    (SELECT id FROM tanks WHERE name = 'M47692M-21' LIMIT 1), NULL,
    407, 4,
    396.962, 368.313788, 484.6234052631579,
    28.648212, 7.216865090361294, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    22, NULL, NULL, NULL,
    'Rum Nomans White 6/720mL 80PF', 'Rum FdC 3yr White Default Recipe', 'rum'::spirit_type, '2023-12-21T12:38:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), NULL,
    471, 0,
    435.93, 447.929949, 559.91243625,
    -11.999949, -2.752723831807859, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    21, NULL, NULL, NULL,
    'Notch 8yr Single Malt 1/50ml 96PF', 'Whisky Crisp Malt Maris Otter Default Recipe', 'whiskey'::spirit_type, '2023-11-25T11:16:00',
    (SELECT id FROM tanks WHERE name = 'Notch 8- 1' LIMIT 1), NULL,
    223, 0,
    5, 2.82764, 2.9454583333333333,
    0, 0, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    20, NULL, NULL, NULL,
    'Rum Nomans Dark 6/750mL 88.8PF', 'Rum FdC 8yr Blend Default Recipe', 'rum'::spirit_type, '2023-11-09T11:19:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    430, 3,
    445.952, 454.449577, 511.76754166666666,
    -8.497577, -1.9054913981773822, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    19, NULL, NULL, NULL,
    'Storm Nor''Easter Bourbon 6/750mL 88.8PF', 'Whisky Bourbon Blend NEB Default Recipe', 'bourbon'::spirit_type, '2023-10-05T13:27:00',
    (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1), NULL,
    443, 0,
    458.994, 467.644976, 526.6272252252252,
    -8.650976, -1.8847688640810119, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    18, NULL, NULL, NULL,
    'Storm Hurricane Rum 6/750mL 88.8PF', 'Rum Hurricane Blend Default Recipe', 'rum'::spirit_type, '2023-10-23T13:16:00',
    (SELECT id FROM tanks WHERE name = '13-23A11A6' LIMIT 1), NULL,
    476, 0,
    506.843302, 502.480832, 565.8567927927928,
    4.36247, 0.8607137517228155, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    17, NULL, NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2023-09-21T09:00:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    456, 0,
    455.122659, 433.664664, 542.08083,
    21.457995, 4.714771847911884, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    16, '8-31-23', NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2023-08-31T10:12:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    439, 0,
    455.42, 417.497341, 521.87167625,
    0, 0, COALESCE((SELECT id FROM users WHERE email = 'Tierney@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    15, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2023-08-03T09:30:00',
    (SELECT id FROM tanks WHERE name = 'Greta Gerwig' LIMIT 1), NULL,
    328, 3,
    380.7, 296.789238, 390.5121552631579,
    -1.089238, -0.28611452587339115, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    13, NULL, NULL, NULL,
    'Storm Hurricane Rum 6/750mL 88.8PF', 'Rum Hurricane Blend Default Recipe', 'rum'::spirit_type, '2023-06-13T16:00:00',
    (SELECT id FROM tanks WHERE name = 'Hedy Lamar' LIMIT 1), NULL,
    477, 4,
    476.61843, 504.24022, 567.8380855855855,
    -27.62179, -5.795367585764571, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    12, NULL, NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2023-06-06T12:21:00',
    (SELECT id FROM tanks WHERE name = 'Betty Bumpers' LIMIT 1), NULL,
    331, 3,
    317.1, 315.262798, 394.0784975,
    1.837202, 0.5793762220119836, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    11, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2023-05-30T11:50:00',
    (SELECT id FROM tanks WHERE name = '13-23A11A6' LIMIT 1), NULL,
    361, 3,
    331.406, 326.603682, 429.74168684210525,
    4.802318, 1.4490739455531885, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    10, NULL, NULL, NULL,
    'Vodka Vanilla 6/750mL 76PF', 'Vodka Vanilla Default Recipe', 'vodka'::spirit_type, '2023-01-10T11:26:00',
    (SELECT id FROM tanks WHERE name = 'VANILLA REMNANT 8.9.22' LIMIT 1), NULL,
    381, 2,
    349.624, 344.522464, 453.3190315789474,
    5.101536, 1.4591492574880442, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    9, '2/1/23', NULL, NULL,
    'Vodka Organic 6/750mL 80PF', 'Vodka Organic Default Recipe', 'vodka'::spirit_type, '2023-02-01T09:07:00',
    (SELECT id FROM tanks WHERE name = '8-22C02A' LIMIT 1), NULL,
    847, 4,
    834.32, 806.147105, 1007.68388125,
    15.510895, 1.887755611215372, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    8, NULL, NULL, NULL,
    'Storm Gale Force Gin 6/750mL 88.8PF', 'Gin Gale Force Default Recipe', 'gin'::spirit_type, '2023-05-15T17:06:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), NULL,
    471, 1,
    515.474, 497.378611, 560.1110484234234,
    18.095389, 3.5104368018561556, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    7, NULL, NULL, NULL,
    'Storm Nor''Easter Bourbon 6/750mL 88.8PF', 'Whisky Bourbon Blend NEB Default Recipe', 'bourbon'::spirit_type, '2023-04-17T12:48:00',
    (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1), NULL,
    471, 5,
    498.255, 498.082367, 560.9035664414414,
    0.172633, 0.03464751984425646, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    6, NULL, NULL, NULL,
    'Rum Nomans White 6/720mL 88.8PF', 'Rum FdC 3yr White Default Recipe', 'rum'::spirit_type, '2023-05-08T11:41:00',
    (SELECT id FROM tanks WHERE name = 'FDC 6.3' LIMIT 1), NULL,
    424, 5,
    436.15, 448.467663, 505.031152027027,
    -12.317663, -2.8241804425083115, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

  INSERT INTO bottling_runs (
    bottling_number, lot_name, start_cs_serial, end_cs_serial,
    product_name, recipe, spirit_type, bottle_date,
    source_tank_id, ttb_formula,
    cases_filled, loose_bottles,
    starting_pg_in_tank, proof_gal_bottled, wine_gal_bottled,
    pg_loss, pct_loss, logged_by
  ) VALUES (
    2, NULL, NULL, NULL,
    'Storm Hurricane Rum 6/750mL 88.8PF', 'Rum Hurricane Blend Default Recipe', 'rum'::spirit_type, '2023-01-11T17:42:00',
    (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1), NULL,
    451, 2,
    484.409, 476.44191, 536.5336824324324,
    7.96709, 1.6447031330962059, COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (bottling_number) WHERE bottling_number IS NOT NULL DO NOTHING;

END $$;

COMMIT;