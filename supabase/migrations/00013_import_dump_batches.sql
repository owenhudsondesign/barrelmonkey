-- ============================================================
-- BARRELMONKEY — Import Dump Batches
-- 52 rows from WhiskeySystems export
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
  INSERT INTO tanks (name, tank_category) VALUES ('Brian Eno', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Clyde Stubblefield', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Debbie Harry', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Eilen Gray', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Emmylou Harris', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('George Washington Carver', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Hal Blaine- Steel Drum', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Howard Hawk', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('NA', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Nina Hagen', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Polly Platt', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Sir Dump A Lot', 'production') ON CONFLICT (name) DO NOTHING;
  INSERT INTO tanks (name, tank_category) VALUES ('Slope Bottom F4- Wine Deck', 'production') ON CONFLICT (name) DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-13T14:05:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 3, 197.16, 107.096,
    90.064, 45.68, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-13T11:39:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 5, 328.6, 140.896,
    187.704, 57.12, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-13T09:31:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 2, 131.44, 62.556,
    68.884, 52.41, 'fraziers'' barrrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-12T13:51:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 6, 394.32, 164.465,
    229.855, 58.29, '26B12', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-10T14:49:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 3, 197.16, 56.64,
    140.52, 71.27, '26B10', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-09T15:22:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 2, 131.44, 59,
    72.44, 55.11, 'tasha dump to jonas 117>>124', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-09T09:42:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 2, 131.44, 61.36,
    70.08, 53.32, '888 barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-06T10:34:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 6, 394.32, 129.78,
    264.54, 67.09, 'vatted ketterer and other barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-05T15:44:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 5, 328.6, 125.28,
    203.32, 61.87, 'segal buyback barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2026-02-05T15:37:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 3, 197.16, 67.83,
    129.33, 65.6, '20YO notch barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-12-16T12:29:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1),
    'Storage', 23, 1331.239703, 1166.712,
    164.527703, 12.36, NULL, 'deanw@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-10-29T09:19:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 2, 131.44, 63.024,
    68.416, 52.05, 'disavino dump', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-09-10T10:10:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 12, 665.6729, 496.808,
    168.8649, 25.37, 'Nor''Easter RB 25I10', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-08-27T15:27:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 16, 969.50314, 933.912,
    35.59114, 3.67, '25H27', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-08-20T09:00:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1),
    'Storage', 9, 627.31483, 412.16,
    215.15483, 34.3, '8YO notch', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-07-07T12:11:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'ProcessingBulk', 1, 65.72, 19.6173,
    46.1027, 70.15, 'herrick', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-07-02T09:03:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'Brian Eno' LIMIT 1),
    'Storage', 20, 1366.833058, 1363,
    3.833058, 0.28, 'hurricane blend', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-06-09T11:55:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'Sir Dump A Lot' LIMIT 1),
    'Storage', 1, 64.712376, 63.012,
    1.700376, 2.63, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-06-09T10:57:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1),
    'Storage', 2, 126.565757, 111.919,
    14.646757, 11.57, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-06-03T12:44:00', 'standard', 'brandy'::spirit_type, (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Storage', 6, 140.22, 43.86,
    96.36, 68.72, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-04-30T14:42:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Storage', 30, 1743.5039, 1264.725,
    478.7789, 27.46, 'southern distilling bourbon', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-04-25T13:43:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Storage', 2, 131.44, 54,
    77.44, 58.92, 'Hungerpiller barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-02-25T15:00:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Abigail Adams' LIMIT 1),
    'Storage', 8, 469.985774, 347.568,
    122.417774, 26.05, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-02-21T13:09:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 22, 1371.202882, 1194.75,
    176.452882, 12.87, 'NEB whiskey blend', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2025-02-07T13:33:00', 'standard', 'brandy'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 1, 71.192841, 71.18946,
    0.003381, 0.0, 'pommeau', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-07-22T15:51:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 9, 591.48, 382.165,
    209.315, 35.39, 'sherry RB notch', 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-12-20T10:18:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1),
    'Storage', 2, 150.398, 132.68,
    17.718, 11.78, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-07-18T13:28:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 3, 197.16, 67.5,
    129.66, 65.76, 'DiModico barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-06-17T11:58:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1),
    'Storage', 20, 1364.994074, 1239,
    125.994074, 9.23, 'hurricane rum blend', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-06-04T10:33:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 22, 1461.576758, 1045.48,
    416.096758, 28.47, '25th anniversary whisky', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-05-30T11:54:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 8, 401.7276, 376.2,
    25.5276, 6.35, 'MGP re-barrel', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-05-13T14:24:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 22, 1299.670634, 1210.65,
    89.020634, 6.85, NULL, 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-04-12T15:37:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 4, 189.8778, 184.45,
    5.4278, 2.86, 'Nor''Easter RB', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-04-12T15:24:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 4, 214.12, 176.75,
    37.37, 17.45, 'Nor''Easter RB', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-04-12T08:13:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 6, 394.32, 194.215,
    200.105, 50.75, 'frazer barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-01-11T15:24:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Howard Hawk' LIMIT 1),
    'Storage', 5, 328.6, 139.035,
    189.565, 57.69, 'Franco barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2024-01-03T14:42:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'Debbie Harry' LIMIT 1),
    'Storage', 26, 1689.273664, 1455.9,
    233.373664, 13.82, '2024 first hurricane dump', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-09-18T12:22:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 16, 972.827732, 898.235,
    74.592732, 7.67, NULL, 'Tierney@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-08-10T14:26:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Nina Hagen' LIMIT 1),
    'Storage', 8, 525.76, 309.16,
    216.6, 41.2, '12yo notch re-barrel', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-08-09T12:33:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1),
    'Storage', 13, 854.36, 530.88,
    323.48, 37.86, '12yo notch blend', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-08-04T14:18:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1),
    'Storage', 2, 195.92, 116.056,
    79.864, 40.76, '23H05', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-01-03T15:40:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Clyde Stubblefield' LIMIT 1),
    'Storage', 4, 262.88, 136.4,
    126.48, 48.11, '15yo notch', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-06-23T13:14:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Emmylou Harris' LIMIT 1),
    'Storage', 11, 633.398668, 569.184,
    64.214668, 10.14, 'NEB bottling blend', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-04-05T09:30:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1),
    'Storage', 24, 1569.44668, 1515.515302,
    53.931378, 3.44, NULL, 'bryan@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-05-25T15:21:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Hal Blaine- Steel Drum' LIMIT 1),
    'Storage', 2, 131.44, 52.74,
    78.7, 59.88, 'Leaker notch barrels', 'randy@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-03-08T09:46:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Slope Bottom F4- Wine Deck' LIMIT 1),
    'Storage', 2, 142.157777, 84.91,
    57.247777, 40.27, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-03-08T17:50:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'NA' LIMIT 1),
    'Storage', 3, 191.340216, 0,
    191.340216, 1, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-03-08T17:49:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'NA' LIMIT 1),
    'Storage', 2, 149.072811, 0,
    149.072811, 1, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-03-30T17:22:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1),
    'Storage', 5, 261.4418, 259.37849,
    2.06331, 0.79, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-03-04T17:11:00', 'standard', 'whiskey'::spirit_type, (SELECT id FROM tanks WHERE name = 'Eilen Gray' LIMIT 1),
    'Storage', 2, 154.1, 79.2,
    74.9, 48.6, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-03-16T16:58:00', 'standard', 'bourbon'::spirit_type, (SELECT id FROM tanks WHERE name = 'Polly Platt' LIMIT 1),
    'Storage', 20, 1140.869216, 1031.9001,
    108.969116, 9.55, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

  INSERT INTO dump_batches (
    dump_date, dump_type, spirit_type, target_tank_id,
    to_account, barrel_count, total_opg, total_rpg,
    total_loss_pg, pct_loss, blend_lot_name, operator
  ) VALUES (
    '2023-01-27T14:59:00', 'standard', 'rum'::spirit_type, (SELECT id FROM tanks WHERE name = 'George Washington Carver' LIMIT 1),
    'Storage', 25, 1757.122695, 1606.98341,
    150.139285, 8.54, NULL, 'nicole@ciscobrewers888.com'
  ) ON CONFLICT DO NOTHING;

END $$;

COMMIT;