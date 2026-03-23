-- Barrel import: offsite part 1 (143 barrels)
BEGIN;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49402', '2165559', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49346', '2165560', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49347', '2165561', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49348', '2165562', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49349', '2165563', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49350', '2165564', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49351', '2165565', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49352', '2165566', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49353', '2165567', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49354', '2165568', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49355', '2165569', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49356', '2165570', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49357', '2165571', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49358', '2165572', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49359', '2165573', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49360', '2165574', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49361', '2165575', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49362', '2165576', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49363', '2165577', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49364', '2165578', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49365', '2165579', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49366', '2165580', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49367', '2165581', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49368', '2165582', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49369', '2165583', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49370', '2165584', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49371', '2165585', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49372', '2165586', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49373', '2165587', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49374', '2165588', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49375', '2165589', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49376', '2165590', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49377', '2165591', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49378', '2165592', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49379', '2165593', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49380', '2165594', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49381', '2165595', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49382', '2165596', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49383', '2165597', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49384', '2165598', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49385', '2165599', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49386', '2165600', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49387', '2165601', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49388', '2165602', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-26', 110.0, 58.3, 53.0, '23L26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49394', '2165768', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49395', '2165769', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49396', '2165770', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49397', '2165771', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49398', '2165772', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49399', '2165773', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49400', '2165774', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49401', '2165775', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49403', '2165776', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49404', '2165777', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49405', '2165778', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49406', '2165779', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49407', '2165780', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49408', '2165781', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49409', '2165782', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49410', '2165783', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49411', '2165784', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49412', '2165785', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49413', '2165786', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49414', '2165787', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49415', '2165788', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49416', '2165789', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49417', '2165790', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49418', '2165791', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49419', '2165792', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49420', '2165793', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49421', '2165794', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49422', '2165795', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49423', '2165796', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49424', '2165797', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49425', '2165798', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49426', '2165799', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49427', '2165800', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49428', '2165801', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49429', '2165802', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49430', '2165803', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49431', '2165804', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49432', '2165805', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49433', '2165806', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49434', '2165807', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49435', '2165808', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49436', '2165809', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49437', '2165810', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49438', '2165811', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49439', '2165812', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49389', '2165814', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '49440', '2165815', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2023-12-27', 110.0, 58.3, 53.0, '23L27', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64371', '2326776', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64372', '2326777', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64373', '2326778', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64374', '2326779', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64375', '2326780', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64376', '2326781', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64377', '2326782', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64378', '2326783', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64379', '2326784', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64380', '2326785', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64381', '2326786', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64382', '2326787', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64383', '2326788', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64384', '2326789', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64385', '2326790', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64386', '2326791', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64387', '2326792', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64388', '2326793', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64389', '2326794', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64390', '2326795', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64391', '2326796', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64392', '2326797', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64393', '2326798', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64394', '2326799', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64395', '2326800', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-24', 110.0, 58.3, 53.0, '24I24', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I13A/24I13B/24I13C', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64396', '2326801', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', NULL, 'LOT: 24I13A/24I13B/24I13C/24I24D/24I23E/24I23F', NULL, NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64477', '2326802', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64478', '2326803', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64479', '2326804', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64480', '2326805', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64481', '2326806', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64482', '2326807', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64483', '2326808', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64484', '2326809', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64485', '2326810', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64486', '2326811', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64487', '2326812', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64488', '2326813', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64489', '2326814', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64490', '2326815', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64491', '2326816', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64492', '2326817', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64493', '2326818', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64494', '2326819', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64495', '2326820', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64496', '2326821', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64497', '2326822', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64498', '2326823', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64499', '2326824', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64500', '2326825', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64501', '2326826', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '64502', '2326827', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite' LIMIT 1), NULL, '2024-09-26', 110.0, 58.3, 53.0, '24I26', NULL, 'Southern Distilling', 'Southern Distilling', 'offsite', 'Southern Distilling Offsite', 1065.0, 'LOT: 24I24D/24I23E/24I23F', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', NULL, NULL, NULL, NULL, 0, NULL, 407.891975, 407.891975, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

COMMIT;

COMMIT;
