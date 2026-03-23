-- Barrel import: onsite part 3 (400 barrels)
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
  '211', '1825280', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2012-05-31', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '209', '1825278', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2012-05-30', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 401.147531, 401.147531, NULL, NULL
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
  '208', '1825277', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2012-04-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '205', '1825276', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-6', '2012-04-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '203', '1825274', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2012-04-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '202', '1825273', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2012-04-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '201', '1825272', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2012-04-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '200', '1825271', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2012-03-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '198', '1825269', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2012-03-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '194', '1825266', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2012-02-13', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '192', '1825265', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2012-02-13', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '364', '1825415', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2016-02-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '365', '1825416', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2016-02-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '498', '1825522', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2017-03-28', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '499', '1825523', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2017-03-28', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '500', '1825524', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2017-03-28', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '508', '1825531', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2017-04-06', 118.0, 62.54, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '509', '1825532', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2017-05-08', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '503', '1825527', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2017-03-28', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '512', '1825535', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2017-05-15', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '447', '1825479', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2016-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '448', '1825480', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2016-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '449', '1825481', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2016-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '450', '1825482', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2016-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '451', '1825483', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2016-09-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '452', '1825484', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2016-09-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '453', '1825485', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2016-09-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '456', '1825488', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2016-09-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '133', '1825217', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-6', '2009-03-12', 124.0, 65.72, 53.0, NULL, '12 years +', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fifi Greenberg', 0, NULL, NULL, NULL, NULL, NULL
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
  '356', '1825412', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2015-11-19', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JC Panio', 0, NULL, NULL, NULL, NULL, NULL
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
  '126', '1825210', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2008-12-16', 124.0, 65.72, 53.0, NULL, '12 years +', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jonas Baker', 0, NULL, NULL, NULL, NULL, NULL
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
  '125', '1825209', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2008-12-16', 124.0, 65.72, 53.0, NULL, '12 years +', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jonas Baker', 0, NULL, NULL, NULL, NULL, NULL
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
  '459', '1825491', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2016-09-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '460', '1825492', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2016-09-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '461', '1825493', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2016-09-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '462', '1825494', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2016-09-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '463', '1825495', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2016-09-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '465', '1825497', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2016-10-14', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '467', '1825499', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2016-10-14', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '468', '1825500', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2016-10-14', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1186', '1825996', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2005-04-01', 129.7, 262.88, 202.68, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'vatted 67 77 60 72- used OG PG- claim ullage at bottling- proof recorded is what was recorded at rebarreling', NULL, NULL, 10, '+ + rich, vinous, cola, lt white pepper; expansive, big dried fruit, candied orange zest, creme brul&eacute;e sugar', '1 barrel= Doug Schroer, 1 barrel= Steve Wasserman/Scott Klaire/Jeff Perlstien, 2 barrel= Alastoir Borthwick', 0, NULL, NULL, NULL, NULL, NULL
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
  '1964', '2191151', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2024-04-12', 108.5, 64.015, 59.0, '24D12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '164396', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-12-12'
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
  '495', '1825519', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2017-03-07', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1156', '1825971', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2020-01-24', 116.0, 69.360901, 59.79, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1241', '1826047', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2020-06-17', 111.0, 66.418848, 59.84, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1270', '1826073', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2020-09-09', 110.5, 64.503811, 58.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1271', '1826074', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2020-09-09', 110.5, 64.934795, 58.76, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '942', '1825820', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2019-03-08', 113.4, 66.85937, 58.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '943', '1825821', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2019-03-08', 122.0, 72.995845, 59.83, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '925', '1825803', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2019-02-15', 123.8, 72.769702, 58.78, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '926', '1825804', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2019-02-16', 123.0, 73.845818, 60.04, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '955', '1825829', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2019-04-02', 120.0, 66.891936, 55.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '905', '1825783', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2019-01-17', 110.0, 65.606706, 59.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier & MO #19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2146', '2433776', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 64.9, 59.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 750.06, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180242', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2048', '2348050', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 107.8, 63.602, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1277.0, 'Medium Long Toast Extra tight grain American Oak staved air dried minimum 3 years', NULL, '173301', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2049', '2348051', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 111.2, 65.608, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1397.05, 'Column and Pot Still new make blend', NULL, '173302', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1507', '1826257', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2021-11-11', 111.5, 67.629834, 60.65, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '381 # x14556 liquid from 1449-1#51 (554 PG) (Line) then filled with normal Arnold', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1451', '1826221', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2021-10-14', 100.7, 87.951148, 87.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1252', '1826055', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-5', '2020-08-17', 114.8, 66.582975, 58.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1253', '1826056', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-08-17', 114.8, 68.532477, 59.7, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1150', '1825965', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2020-01-23', 110.0, 63.60563, 57.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1151', '1825966', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2020-01-23', 110.0, 65.463772, 59.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1258', '1826061', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-5', '2020-08-17', 111.4, 59.279967, 53.21, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1820', '2082274', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-20', 103.7, 61.183, 59.0, '23L20A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 4.52, 'Symphony A Medium Long Toast with watering during firing. Wood is hand selected extra grain tight American Oak aged a minimum of three years. Barrels 1817-1822 have been sent off for GC readings.', NULL, '158086', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1821', '2082275', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-20', 103.7, 61.183, 59.0, '23L20A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 4.52, 'Symphony A Medium Long Toast with watering during firing. Wood is hand selected extra grain tight American Oak aged a minimum of three years. Barrels 1817-1822 have been sent off for GC readings.', NULL, '158086', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1822', '2082276', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-20', 103.7, 61.183, 59.0, '23L20A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 4.51, 'Symphony A Medium Long Toast with watering during firing. Wood is hand selected extra grain tight American Oak aged a minimum of three years. Barrels 1817-1822 have been sent off for GC readings.', NULL, '158086', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1857', '2113082', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-18', 104.0, 61.36, 59.0, '24A18', '1854-1862 all the same new make. New Make sample pulled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.81, 'see 1854-1856 or the barrel book lower cuts', NULL, '159789', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1858', '2113083', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-18', 104.0, 61.36, 59.0, '24A18', '1854-1862 all the same new make. New Make sample pulled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.81, 'see 1854-1856 or the barrel book lower cuts', NULL, '159789', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1859', '2113084', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 61.36, 59.0, '24A18', '1854-1862 all the same new make. New Make sample pulled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.81, 'see 1854-1856 or the barrel book lower cuts', NULL, '159789', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1860', '2113085', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 61.36, 59.0, '24A18', '1854-1862 all the same new make. New Make sample pulled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.81, 'see 1854-1856 or the barrel book lower cuts', NULL, '159789', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1861', '2113086', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 61.36, 59.0, '24A18', '1854-1862 all the same new make. New Make sample pulled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.81, 'see 1854-1856 or the barrel book lower cuts', NULL, '159789', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1862', '2113087', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 61.36, 59.0, '24A18', '1854-1862 all the same new make. New Make sample pulled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.83, 'see 1854-1856 or the barrel book lower cuts', NULL, '159789', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2050', '2348052', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 111.2, 65.608, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1397.05, 'Column and Pot Still new make blend', NULL, '173302', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1302', '1826101', 'brandy', 'aging', 'Brandy Grape', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1874', '2137814', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-02-15', 113.8, 67.142, 59.0, '24B15', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 SO4 Red Star Symphony new Nadalie', NULL, '161007', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1875', '2138426', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-02-15', 108.9, 64.251, 59.0, '24B15A', 'Rocket Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 4.74, 'Rocket Arnold Spirit Maris Otter 19 SO4 Red Star new symphony Nadalie', NULL, '161027', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1850', '2099442', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-13', 116.3, 68.617, 59.0, '24A13A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.43, 'Rocket Spirit', NULL, '159108', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1851', '2099443', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-13', 116.3, 68.617, 59.0, '24A13A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.43, 'Rocket Spirit', NULL, '159108', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1852', '2099444', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-13', 116.3, 68.617, 59.0, '24A13A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.43, 'Rocket Spirit', NULL, '159108', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1853', '2099445', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-13', 109.8, 64.782, 59.0, '24A13B', 'Rocket and Rocket Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 6.06, 'Rocket and Rocket Arnold Spirit', NULL, '159109', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1987', '2222480', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-22', 109.5, 64.605, 59.0, '24E22', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166498', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1988', '2222481', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-22', 109.5, 64.605, 59.0, '24E22', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166498', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2034', '2255466', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 58.646, 59.0, '24F26', 'Arnold Rocket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 276.88, 'Bubble caps down', NULL, '168173', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2035', '2259189', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2024-07-02', 112.1, 66.139, 59.0, '24G02', 'Arnold Rocket Bubble Cap down', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 575.98, 'Bubble Caps Down', NULL, '168419', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2036', '2259190', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2024-07-02', 112.1, 66.139, 59.0, '24G02', 'Arnold Rocket Bubble Cap down', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 575.98, 'Bubble Caps Down', NULL, '168419', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2043', '2348045', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 103.0, 60.77, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1254.49, 'Medium Long Toast Extra tight grain American Oak staved air dried minimum 3 years', NULL, '173300', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2044', '2348046', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 103.0, 60.77, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1254.49, 'Medium Long Toast Extra tight grain American Oak staved air dried minimum 3 years', NULL, '173300', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2045', '2348047', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 103.0, 60.77, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1254.49, 'Medium Long Toast Extra tight grain American Oak staved air dried minimum 3 years', NULL, '173300', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2046', '2348048', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 103.0, 60.77, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1254.49, 'Medium Long Toast Extra tight grain American Oak staved air dried minimum 3 years', NULL, '173300', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2047', '2348049', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-3', '2024-10-12', 103.0, 60.77, 59.0, '24J12', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1254.49, 'Medium Long Toast Extra tight grain American Oak staved air dried minimum 3 years', NULL, '173300', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2230', '2525647', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-21', 107.7, 63.543, 59.0, '25L21', 'Rocket Single', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 754.37, 'Rocket distillate after column still modifications', NULL, '188897', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2232', '2525649', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-21', 107.7, 63.543, 59.0, '25L21', 'Arnold Double', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 702.15, 'Double Arnold. Low Cuts including rocket new make that had to be redistilled. Dirty Dean', NULL, '188899', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '977', '1825851', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-5', '2019-06-05', 114.6, 67.360734, 58.78, 'Whisky Bourbon Nantucket', 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 6, 'O+ O vanilla whiff, little herbaceous; light corn, cinnamon/clove, caramel corn', NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1303', '1826102', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2020-11-04', 110.5, 64.36015, 58.24, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1394', '1826179', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2021-06-28', 113.2, 66.726102, 58.95, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1139', '1825954', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2020-01-07', 107.4, 64.842707, 60.37, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1140', '1825955', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2020-01-07', 107.4, 64.286117, 59.86, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1304', '1826103', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2020-11-04', 110.5, 66.084083, 59.8, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1305', '1826104', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2020-11-04', 110.5, 62.492557, 56.55, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1306', '1826105', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2020-11-04', 110.5, 63.785506, 57.72, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1307', '1826106', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2020-11-04', 110.5, 62.205235, 56.29, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1308', '1826107', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2020-11-04', 110.5, 64.216489, 58.11, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1382', '1826167', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-11', 120.0, 67.83852, 56.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1383', '1826168', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-11', 120.0, 69.573924, 57.98, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1387', '1826172', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-14', 118.8, 70.494209, 59.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1388', '1826173', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-14', 118.8, 66.907115, 56.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1389', '1826174', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-14', 118.8, 65.971351, 55.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1390', '1826175', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-06-16', 115.0, 66.12408, 57.5, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1391', '1826176', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-06-16', 115.0, 67.777182, 58.94, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1392', '1826177', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-06-16', 115.0, 68.077746, 59.2, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2122', '2417252', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-02-24', 112.0, 64.96, 58.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 789.4, 'Penelope is Rocket distilled Red Star and DistilaMaxGW co-innoculation', NULL, '178650', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2123', '2417253', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 112.0, 64.96, 58.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 789.4, 'Penelope is Rocket distilled Red Star and DistilaMaxGW co-innoculation', NULL, '178650', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1876', '2164056', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-03-08', 114.6, 67.614, 59.0, '24C08', 'Rocket Spirit Maris Otter 19 Symphony', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 Symphony', NULL, '162755', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1399', '1826184', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie Symphony', 59, 'NEW', '59g Nadalie Symphony', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2021-06-29', 107.3, 64.216346, 59.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2183', '2475153', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2025-07-05', 116.4, 61.692, 53.0, '25G05', 'Column Lager/Vienna', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '73.3% Simpsons Finest Lager 26.7% Weyermann Vienna 8% ABV and 3.6pH 25 day fermentation some type of burp during column distillation. Hazy days of summer.', NULL, '183988', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2184', '2475207', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2025-07-05', 105.3, 55.809, 53.0, '25G05', 'Lager/Vienna Column', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '73.3% Simpsons Finest Lager 26.7% Weyermann Vienna 8% ABV and 3.6pH 25 day fermentation Very little burp from the previous distillation', NULL, '183991', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2008', '2246030', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 54.325, 53.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 58.67, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2009', '2246031', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 54.325, 53.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 58.67, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2010', '2246032', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 54.325, 53.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 58.67, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2011', '2246033', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 54.325, 53.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 58.67, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1883', '2164082', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 59, 'NEW', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-03-08', 106.6, 56.498, 53.0, '24C08A', 'Rocket Arnold Spirit Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 3.2, 'Rocket Arnold Spirit Maris Otter 19 STR or STR Bourbon', NULL, '162761', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2199', '2488031', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2025-08-20', 105.0, 55.65, 53.0, '25H20', 'Wash: 8.6% abv 3.42 pH', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 497.32, 'MO#19 and some Vienna and Pilsner from earlier distillation', NULL, '185382', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2200', '2488032', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2025-08-20', 110.0, 58.3, 53.0, '25H20', 'Wash: 8.6% abv 3.42 pH', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 521.0, 'Mix of MO#19 and Pilsner Vienna', NULL, '185383', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2201', '2488033', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2025-08-20', 110.0, 58.3, 53.0, '25H20', 'Wash: 8.6% abv 3.42 pH', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 521.0, 'Mix of MO#19 and Pilsner Vienna', NULL, '185383', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2202', '2488034', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2025-08-20', 105.0, 55.65, 53.0, '25H20', 'Wash: 8.6% abv 3.42 pH', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 476.69, 'This is actually 100% MO#19 There was an issue during distillation and some extra high boilers / tails cut may be present. Barrel was proofed, filled then transferred to Ava', NULL, '185384', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '1801', '2010392', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-10-05', 121.0, 64.13, 53.0, '23J05', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 33.94, 'New Make sample pulled. Testing fermentation protocols.', NULL, '153754', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1802', '2010393', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-10-05', 121.0, 64.13, 53.0, '23J05', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 33.94, 'New Make sample pulled. Testing fermentation protocols.', NULL, '153754', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1779', '1958592', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2023-08-07', 123.0, 65.19, 53.0, '23H07', 'ramsay casks re-barreled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 12yr Single Malt 6/750ml 96PF', '150350', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2011-08-20'
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
  '1778', '1958593', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon Scraped ReToasted', 53, 'USED', '53g Used Bourbon Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2023-08-07', 123.0, 65.19, 53.0, '23H07', 'ramsay casks re-barreled', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 12yr Single Malt 6/750ml 96PF', '150350', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2011-08-20'
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
  '1299', '1826098', 'brandy', 'aging', 'Brandy Grape', '53g Used Grape Brandy', 53, 'USED', '53g Used Grape Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1760', '1918031', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-06-09', 124.4, 65.932, 53.0, '23F09', 'Part of Randy''s Acetic Fermentation', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Fermentation had a temperature spike. Bacteria took a hold. Acetic quality', NULL, '146994', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1761', '1920984', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'NEW', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-06-14', 118.0, 62.54, 53.0, '23F14', 'Mollasses Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Some of the spirit that had a temperature spike doing fermentation and had bacteria get ahold. 15% of that spirit probably.', NULL, '147297', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1762', '1929301', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'NEW', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-06-22', 111.0, 58.83, 53.0, '23F22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '100% molasses rather long ferment', NULL, '147773', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1763', '1929302', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'NEW', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-06-22', 111.0, 58.83, 53.0, '23F22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '100% molasses rather long ferment', NULL, '147773', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1764', '1929303', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'NEW', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-06-22', 111.0, 58.83, 53.0, '23F22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '100% molasses rather long ferment', NULL, '147773', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1707', '1907874', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-02-24', 106.0, 56.18, 53.0, '23B24', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146032', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1708', '1907875', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-02-24', 106.0, 56.18, 53.0, '23B24', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146032', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1709', '1907876', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-02-24', 106.0, 56.18, 53.0, '23B24', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146032', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1710', '1907877', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-02-24', 106.0, 56.18, 53.0, '23B24', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146032', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1711', '1907878', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-02-24', 106.0, 56.18, 53.0, '23B24', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146032', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1712', '1907879', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-02-24', 106.0, 56.18, 53.0, '23B24', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146032', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2226', '2525466', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-19', 123.6, 65.508, 53.0, '25L19', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 654.18, 'Previously held Hurricane rum at 90 proof. Originally a used bourbon that was scrapped and retoasted. 2nd fill since then. Distillate straight from Rocket', NULL, '188891', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2227', '2525467', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-19', 123.6, 65.508, 53.0, '25L19', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 654.18, 'Previously held Hurricane rum at 90 proof. Originally a used bourbon that was scrapped and retoasted. 2nd fill since then. Distillate straight from Rocket', NULL, '188891', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2228', '2525485', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-20', 116.6, 61.798, 53.0, '25L20', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 677.83, 'Arnold Spirit straight to barrel', NULL, '188895', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
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
  '2079', '2399449', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 59.625, 53.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 354.02, NULL, NULL, '176832', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2080', '2399450', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 59.625, 53.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 354.02, NULL, NULL, '176832', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1864', '2113128', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-01-27', 107.5, 56.975, 53.0, '24A27', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '159796', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1865', '2113129', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-01-27', 107.5, 56.975, 53.0, '24A27', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '159796', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1866', '2113130', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-01-27', 107.5, 56.975, 53.0, '24A27', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '159796', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1854', '2103860', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 55.12, 53.0, '24A18', 'Rocket Arnold', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.16, 'Rocket Arnold', NULL, '159334', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1855', '2103861', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 55.12, 53.0, '24A18', 'Rocket Arnold', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.16, 'Rocket Arnold', NULL, '159334', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1856', '2103862', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 104.0, 55.12, 53.0, '24A18', 'Rocket Arnold', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.16, 'Rocket Arnold', NULL, '159334', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2236', '2525653', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 59, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2025-12-21', 113.0, 66.67, 59.0, '25L21', '3R:2A', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 796.64, '3partsRocket(1):2partsArnold(x2) Fresh rum dump', NULL, '188901', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2237', '2525654', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 59, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2025-12-21', 113.0, 66.67, 59.0, '25L21', '3R:2A', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 796.65, '3partsRocket(1):2partsArnold(x2) Fresh rum dump', NULL, '188901', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2075', '2399381', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 59.625, 53.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 304.76, NULL, NULL, '176828', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2076', '2399382', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 59.625, 53.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 304.76, NULL, NULL, '176828', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1672', '1826401', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-17', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1362) used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1675', '1826404', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2022-11-17', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1363) used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1656', '1826385', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1057) arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1657', '1826386', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1526) arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1658', '1826387', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1525) arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1659', '1826388', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1523) arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1660', '1826389', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1097) arrived 4yrs old) used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1661', '1826390', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1634) arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1662', '1826391', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1633) arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1663', '1826392', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Rum (1059) Arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1445', '1826215', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2021-10-05', 112.0, 65.63592, 58.6, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1446', '1826216', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2021-10-05', 112.0, 64.614917, 57.69, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2124', '2417497', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 103.0, 53.56, 52.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 597.71, '28 gallons from penelope-22 gallons from ava Penelope is Rocket distilled Red Star and DistilaMaxGW co-innoculation Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178671', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1326', '1826121', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-01-30', 111.1, 58.883, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1327', '1826122', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-01-30', 111.1, 58.883, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1328', '1826123', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-01-30', 111.1, 57.81644, 52.04, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1376', '1826161', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-01', 110.0, 55.601326, 50.55, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1371', '1826156', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-04-26', 121.3, 64.289, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1372', '1826157', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-04-26', 121.3, 64.289, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1373', '1826158', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-04-26', 121.3, 64.289, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1374', '1826159', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-04-26', 121.3, 64.289, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1427', '1826199', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2021-08-19', 110.2, 57.863684, 52.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1428', '1826200', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2021-08-19', 110.2, 57.147549, 51.86, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1429', '1826201', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2021-08-19', 110.2, 57.434003, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1430', '1826202', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2021-08-19', 110.2, 56.001734, 50.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '912', '1825790', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2019-01-25', 109.0, 55.032258, 50.49, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '958', '1825832', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2019-04-03', 114.4, 58.861614, 51.45, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated (Crisp) RedStar/BE-134 ex-rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '959', '1825833', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2019-04-05', 120.0, 62.31678, 51.93, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated (Crisp) RedStar/BE-134 ex-rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '960', '1825834', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2019-04-05', 120.0, 62.790072, 52.33, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated (Crisp) RedStar/BE-134 ex-rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '961', '1825835', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2019-04-05', 120.0, 63.421128, 52.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated (Crisp) RedStar/BE-134 ex-rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1014', '1825864', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2019-07-22', 121.0, 62.275469, 51.47, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'old bbl 805', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1028', '1825876', 'rum', 'aging', 'Rum Nantucket', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-09-02', 100.0, 49.99817, 50.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 9th 2019 800# Lula-Westfield, 300# Sucanant/dehydrated cane sugar, 30 gallons molasses DistillaMaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1029', '1825877', 'rum', 'aging', 'Rum Nantucket', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2019-09-02', 100.0, 51.28347, 51.28, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 9th 2019 800# Lula-Westfield, 300# Sucanant/dehydrated cane sugar, 30 gallons molasses DistillaMaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1030', '1825878', 'rum', 'aging', 'Rum Nantucket', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2019-09-02', 101.0, 50.553156, 50.05, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 9th 2019 800# Lula-Westfield, 300# Sucanant/dehydrated cane sugar, 30 gallons molasses DistillaMaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1031', '1825879', 'rum', 'aging', 'Rum Nantucket', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-6', '2019-09-02', 101.0, 51.59281, 51.08, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 9th 2019 800# Lula-Westfield, 300# Sucanant/dehydrated cane sugar, 30 gallons molasses DistillaMaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1032', '1825880', 'rum', 'aging', 'Rum Nantucket', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-6', '2019-09-02', 102.0, 52.287648, 51.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 9th 2019 800# Lula-Westfield, 300# Sucanant/dehydrated cane sugar, 30 gallons molasses DistillaMaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1033', '1825881', 'rum', 'aging', 'Rum Nantucket', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-09-02', 102.0, 52.287648, 51.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 9th 2019 800# Lula-Westfield, 300# Sucanant/dehydrated cane sugar, 30 gallons molasses DistillaMaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '878', '1825756', 'rum', 'aging', 'Rum Nantucket Molasses', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2018-09-28', 128.0, 67.818509, 52.98, 'Nantucket Molasses', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '100% molases c1-190-9194 c2-160 flor de Cana- Our Rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1010', '1825860', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2019-07-22', 121.0, 62.434742, 51.6, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'OLD bbl 803', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1011', '1825861', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2019-07-22', 121.0, 61.63838, 50.94, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'OLD bbl 806', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1012', '1825862', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2019-07-22', 121.0, 61.797652, 51.07, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'OLD bbl 799', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1013', '1825863', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Rum', 53, 'USED', '53g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2019-07-22', 121.0, 61.160563, 50.55, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Old bbl 802', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1169', '1825984', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2020-02-10', 104.2, 54.889309, 52.68, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Column distilled 104 entry proof, barrels are ex-single malt?', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1170', '1825985', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2020-02-10', 104.2, 54.485711, 52.29, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Column distilled 104 entry proof, barrels are ex-single malt?', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1171', '1825986', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2020-02-10', 104.2, 53.543983, 51.39, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Column distilled 104 entry proof, ex-bourbon barrels', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1172', '1825987', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2020-02-10', 104.2, 53.813048, 51.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Column distilled 104 entry proof, ex-bourbon barrels', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1173', '1825988', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2020-02-10', 104.2, 54.889309, 52.68, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Column distilled 104 entry proof, barrels are ex-single malt?', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1331', '1826126', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2021-01-30', 111.1, 58.883, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1332', '1826127', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2021-01-30', 111.1, 58.883, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1333', '1826128', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-01-30', 111.1, 58.883, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1259', '1826062', 'rum', 'aging', 'Rum Nantucket', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-04', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Notch barrel, 600# Sysco Sugar, 138# Panela, 383# LA sugar, 35 gallons of molasses', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '720', '1825662', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2018-03-30', 121.0, 58.452934, 48.31, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'formerly #82', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2125', '2417498', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 107.0, 55.64, 52.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 620.92, 'Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178672', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2126', '2417499', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 107.0, 55.64, 52.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 620.92, 'Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178672', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2007', '2246029', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 54.325, 53.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 58.67, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2082', '2399469', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.0, 59.36, 53.0, '25A10', 'R/A Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 839.21, 'Rocket Spirit and Arnold Spirit', NULL, '176835', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2081', '2399451', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 59.625, 53.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 354.02, NULL, NULL, '176832', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2277', '2536600', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-02-12', 129.0, 58.05, 45.0, '26B12', '26B12', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '189988', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2009-04-30'
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
  '2279', '2536674', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2026-02-13', 120.3, 62.556, 52.0, '26B13', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'fraziers'' barrels', NULL, '189996', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2008-03-01'
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
  '2282', '2536884', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-02-13', 121.7, 53.548, 44.0, '26B13', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '3 Cs barrels', NULL, '190037', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2008-11-10'
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
  '2283', '2536885', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-02-13', 121.7, 53.548, 44.0, '26B13', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '3 Cs barrels', NULL, '190037', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2008-11-10'
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
  '2275', '2535831', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-02-10', 118.0, 56.64, 48.0, '26B10', '26B10', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'segal barrels- back into 141', NULL, '189910', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2009-04-30'
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
  '2276', '2536599', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-02-12', 129.0, 58.05, 45.0, '26B12', '26B12', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '189988', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2009-04-30'
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
  '2274', '2535506', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2026-02-09', 118.0, 59.0, 50.0, '26B09', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '117>>124', NULL, '189886', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2008-12-16'
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
  '2224', '2494173', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '53g Used Single Malt', 59, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2025-09-11', 112.0, 57.12, 51.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
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
  '2127', '2417500', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 107.0, 55.64, 52.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 620.92, 'Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178672', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1793', '1991081', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-09-14', 122.5, 64.925, 53.0, '23I14', 'Rocket spirit DistillaMaxRM', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 486.11, 'Rocket spirit DistillaMaxRM', NULL, '152503', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1789', '1971291', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-08-25', 123.6, 65.508, 53.0, '23H25', 'Nantucket Molasses Rum', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 539.37, 'Pulled new make of this for reference. Rocket Top Feed C1-193 C2-150 DistilamaxRM Fruit 28 Day ferment Never over 84 F', NULL, '151398', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2284', '2538724', 'rum', 'aging', 'Rum Hurricane Blend', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2026-02-20', 101.0, 52.52, 52.0, '26B20', 'hurricane blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '190213', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2023-02-09'
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
  '2285', '2538725', 'rum', 'aging', 'Rum Hurricane Blend', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2026-02-20', 101.0, 52.52, 52.0, '26B20', 'hurricane blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '190213', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2023-02-09'
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
  '2286', '2538726', 'rum', 'aging', 'Rum Hurricane Blend', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2026-02-20', 101.0, 52.52, 52.0, '26B20', 'hurricane blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '190213', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2023-02-09'
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
  '1792', '1986585', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-09-08', 118.0, 62.54, 53.0, '23I08', 'Nantucket Rum', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 418.78, 'DistillaMax RM 25-30% Dunder Fruit Bacteria post Ferm C1-192 C2-150 Top Feed 28 Day Fermentation Rocket still has continuously losing alcohol in the stillage. More than it should.', NULL, '152207', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '736', '1825678', 'brandy', 'aging', 'Brandy Grape', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2018-04-16', 158.6, 82.72373, 52.16, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'high sulfur taste', NULL, NULL, NULL, 'Empty on fill check 8/2/24', NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2268', '2534505', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Single Malt', 53, 'USED', '53g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2026-02-05', 133.0, 67.83, 51.0, '26B05', '20YO vatted notch barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '189822', NULL, NULL, 'Communal', 0, NULL, NULL, NULL, NULL, '2005-11-04'
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
  '1668', '1826397', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Whisky Specialty', 53, 'USED', '53g Used Whisky Specialty', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2022-11-17', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Former Grey Lady whisky Arrived 4yr old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1669', '1826398', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Whisky Specialty', 53, 'USED', '53g Used Whisky Specialty', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2022-11-17', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'CO-003 Former Orange Arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1324', '1826119', 'whiskey', 'aging', 'Whisky Specialty', '59g Nadalie', 59, 'NEW', '59g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2021-01-04', 121.6, 67.597513, 55.59, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'New Am Oak SHT', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '563', '1825567', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie', 59, 'NEW', '59g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2017-08-10', 109.5, 66.055453, 60.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '570', '1825574', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie', 59, 'NEW', '59g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2017-09-07', 107.0, 63.13, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '566', '1825570', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie', 59, 'NEW', '59g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2017-08-23', 108.0, 63.72, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '522', '1825544', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie', 59, 'USED', '59g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2017-06-07', 114.0, 67.26, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '472', '1825503', 'rum', 'aging', 'Rum Nantucket', '59g Nadalie', 59, 'USED', '59g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2016-11-30', 113.0, 66.67, 59.0, NULL, 'Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1274', '1826077', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2020-09-09', 110.5, 65.6531, 59.41, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '523', '1825545', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2017-06-07', 114.0, 67.26, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1040', '1825888', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-6', '2019-09-10', 101.3, 51.892526, 51.23, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rum Wash Sept 19 2019 800# of Lula Westfieeld Sugar, 250# of Sucanant/Dehtdrated Whole Cane Sugar, 30 gallons blackstrap molasses DistillaMacRM over a month fermentation', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1128', '1825943', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-05', 110.0, 65.149189, 59.23, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1129', '1825944', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-06', 107.0, 63.052967, 58.93, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1130', '1825945', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-06', 107.0, 63.607279, 59.45, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1131', '1825946', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-06', 107.0, 63.052967, 58.93, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1132', '1825947', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-06', 107.0, 63.468701, 59.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1133', '1825948', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-06', 108.6, 65.101679, 59.95, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1134', '1825949', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-11-06', 108.6, 64.960767, 59.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1123', '1825938', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-10-30', 104.6, 62.388129, 59.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1124', '1825939', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2019-10-30', 104.6, 61.847972, 59.13, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1126', '1825941', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2019-10-30', 104.6, 62.928286, 60.16, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1127', '1825942', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2019-10-30', 104.6, 61.442854, 58.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1334', '1826129', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-01-30', 111.1, 67.500694, 60.76, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1335', '1826130', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2021-01-30', 111.1, 66.127553, 59.52, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1336', '1826131', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-01-30', 111.1, 67.139341, 60.43, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1337', '1826132', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-01-30', 111.1, 67.862046, 61.08, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1338', '1826133', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2021-01-30', 111.1, 66.777988, 60.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1339', '1826134', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-01-30', 111.1, 65.766201, 59.2, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '769', '1825690', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2018-05-09', 121.0, 72.468897, 59.89, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '588', '1825591', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2017-10-24', 123.8, 73.042, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '589', '1825592', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2017-10-24', 123.8, 73.042, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '590', '1825593', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2017-10-26', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '579', '1825581', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2017-09-06', 117.0, 69.03, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '580', '1825582', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2017-10-05', 121.0, 68.964906, 57.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '581', '1825583', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2017-10-11', 122.0, 72.031142, 59.04, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '692', '1825635', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2018-02-07', 113.9, 67.195351, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'gc data available', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '626', '1825626', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2018-01-11', 123.9, 72.653093, 58.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '627', '1825627', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2018-01-11', 123.9, 71.99856, 58.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '689', '1825632', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2018-02-02', 122.0, 72.35271, 59.31, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'gc data available', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '690', '1825633', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2018-02-02', 120.0, 71.624856, 59.69, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'gc data available', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '616', '1825616', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2017-12-18', 123.0, 73.521221, 59.77, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '607', '1825610', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2017-11-21', 119.5, 70.890489, 59.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '594', '1825597', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2017-11-11', 112.0, 66.073493, 58.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '595', '1825598', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2017-11-11', 113.0, 67.034877, 59.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated - GC Data? Arnold Arnold', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '596', '1825599', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2017-11-11', 113.0, 66.740218, 59.06, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '899', '1825777', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2019-01-09', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '896', '1825774', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2019-01-03', 120.0, 71.309328, 59.42, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '728', '1825669', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2018-04-05', 122.0, 71.98, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '537', '1825552', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2017-07-15', 119.0, 70.21, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '538', '1825553', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2017-07-15', 119.0, 70.21, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '544', '1825559', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2017-07-27', 120.0, 70.8, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier & MO #19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '602', '1825605', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2017-11-17', 119.0, 70.629023, 59.35, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated - GC Data? Rocket', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '694', '1825637', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2018-02-13', 115.3, 65.869749, 57.13, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '718', '1825660', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2018-03-30', 121.0, 71.99108, 59.5, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '719', '1825661', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2018-03-30', 121.0, 70.876174, 58.58, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '362', '1825413', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2016-01-25', 119.0, 70.21, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '347', '1825403', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2015-11-10', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '366', '1825417', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2016-02-16', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2109', '2417087', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-02-21', 106.1, 58.355, 55.0, '25B21', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Re-barrel NEB bottling blend', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '178628', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-03'
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
  '2110', '2417088', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-02-21', 106.1, 58.355, 55.0, '25B21', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Re-barrel NEB bottling blend', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '178628', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-03'
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
  '2113', '2417091', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-02-21', 106.1, 58.355, 55.0, '25B21', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Re-barrel NEB bottling blend', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '178628', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-03'
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
  '2114', '2417092', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-02-21', 106.1, 58.355, 55.0, '25B21', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Re-barrel NEB bottling blend', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '178628', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-03'
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
  '2115', '2417093', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-02-21', 106.1, 58.355, 55.0, '25B21', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Re-barrel NEB bottling blend', 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '178628', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-03'
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
  '484', '1825514', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2017-02-01', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '411', '1825452', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2016-06-21', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '399', '1825444', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2016-05-27', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '400', '1825445', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2016-06-01', 124.6, 73.514, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '391', '1825436', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2016-05-05', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '392', '1825437', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2016-05-05', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '389', '1825434', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2016-04-22', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '479', '1825510', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2017-02-01', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '383', '1825429', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2016-04-09', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '374', '1825420', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2016-03-05', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '606', '1825609', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2017-11-21', 119.5, 70.890489, 59.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated - GC Data? rocket Arnold', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2094', '1826419', 'whiskey', 'aging', 'Whisky Specialty', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-5', '2014-06-20', 124.0, 69.44, 56.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2095', '1826420', 'whiskey', 'aging', 'Whisky Specialty', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2014-06-28', 123.0, 72.57, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '557 minus 5g', '1826415', 'bourbon', 'aging', 'Whisky Bourbon', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2013-08-01', 113.0, 66.099418, 58.5, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '815', '1825712', 'whiskey', 'aging', 'Whisky Specialty', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2018-05-24', 119.5, 66.180158, 55.38, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'beechwood malt caramalt oak smoked malt black malt x2', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '620', '1825620', 'whiskey', 'aging', 'Whisky Specialty', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2017-12-21', 124.5, 94.481232, 75.89, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '621', '1825621', 'whiskey', 'aging', 'Whisky Specialty', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2017-12-23', 124.3, 92.770952, 74.63, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '622', '1825622', 'whiskey', 'aging', 'Whisky Specialty', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2017-12-29', 122.5, 92.078228, 75.17, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '880', '1825758', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2018-10-16', 120.0, 69.731688, 58.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '881', '1825759', 'rum', 'aging', 'Rum Nantucket', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2018-10-16', 120.0, 66.103116, 55.09, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2093', '2411404', 'brandy', 'aging', 'brandy pommeau', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-5', '2025-02-07', 41.0, 24.19, 59.0, '25B07', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '177902', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1107', '1825932', 'rum', 'aging', 'Rum FdC 12yr', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2012-10-23', 147.0, 86.7064, 58.98, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'On Oct 23rd 2019 this 12 year old rum was rebarreled. As of April 30, 2025 it was 17 years and 372 days old. Spirit Age is wrong and I don''t know what is up with the Cask Age', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1108', '1825933', 'rum', 'aging', 'Rum FdC 12yr', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2012-10-23', 151.6, 89.4676, 59.02, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'On Oct 23rd 2019 this 12 year old rum was rebarreled. As of April 30, 2025 it was 17 years and 372 days old. Spirit Age is wrong and I don''t know what is up with the Cask Age', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1309', '1826108', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2020-11-24', 110.5, 67.08971, 60.71, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1310', '1826109', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2020-11-24', 110.5, 63.929167, 57.85, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2104', '1826427', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2014-07-22', 121.0, 67.76, 56.0, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'was X from horner''s days', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1285', '1826088', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2020-10-08', 107.7, 63.229378, 58.71, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1277', '1826080', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2020-10-08', 107.7, 63.229378, 58.71, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1278', '1826081', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2020-10-08', 107.7, 63.787694, 59.23, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1279', '1826082', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2020-10-08', 107.7, 62.671061, 58.19, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1281', '1826084', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2020-10-08', 107.7, 62.950219, 58.45, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1282', '1826085', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2020-10-08', 107.7, 64.066853, 59.49, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1283', '1826086', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2020-10-08', 107.7, 62.950219, 58.45, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1160', '1825975', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-29', 114.0, 68.598736, 60.17, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1314', '1826110', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2020-12-02', 113.2, 67.464223, 59.6, 'Whisky', 'See the book or Bryan', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'WB20NOV55 (BOUR), WB20NOV56 (BOUR)[273lbs@106.3]], WB20NOV57 (ASM)[184lbs@124]', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1315', '1826111', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2020-12-05', 109.8, 65.044378, 59.24, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '271# @102.9P 12% Ireks Chocolate Malt and MO #19, 184# @120P 12% Crisp Chocolate Malt New Nadalie Symphony, C1 - 193, C2- 155', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1568', '1826308', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2022-03-07', 102.3, 60.357, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(Prev 1341) Red Star & SO4 Yeast 59 Gallon', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1340', '1826135', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-01-30', 111.1, 66.850259, 60.17, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1344', '1826137', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2021-03-12', 109.4, 55.685913, 50.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1355', '1826148', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2021-03-12', 109.4, 65.48777, 59.86, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1356', '1826149', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2021-03-12', 109.4, 64.635435, 59.08, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1347', '1826140', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2021-03-12', 109.4, 66.766273, 61.03, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1348', '1826141', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2021-03-12', 109.4, 66.340105, 60.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2096', '1826421', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2014-12-08', 178.0, 105.02, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '887', '1825765', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-3', '2018-11-21', 142.0, 85.694529, 60.35, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'middle feed- c1-188 c2-150', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '971', '1825845', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2019-05-14', 130.2, 77.157366, 59.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '972', '1825846', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2019-05-14', 130.4, 79.37761, 60.87, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1627', '1826364', 'bourbon', 'aging', 'Whisky Bourbon Blend', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2022-04-28', 104.9, 60.451415, 57.63, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bourbon Blend 10/11/22 New NAD Sympthony 1360 1401 1403 1406 1407 1405 1501 1502 1562 1563 1564', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2098', '1826423', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2013-02-25', 152.6, 90.034, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'merlot brandy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '314', '1825373', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-4', '2015-05-29', 140.0, 82.6, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '344', '1825400', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2015-10-06', 160.0, 94.4, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '345', '1825401', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-4', '2015-10-06', 160.0, 94.4, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '346', '1825402', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2015-10-06', 160.0, 94.4, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2100', '1826425', 'whiskey', 'aging', 'Whisky GL', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2012-12-07', 124.0, 73.16, 59.0, 'Whisky Specialty', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2101', '1826426', 'whiskey', 'aging', 'Whisky GL', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-5', '2014-04-09', 123.6, 72.924, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2105', '2413809', 'whiskey', 'aging', 'Whisky GL', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-02-13', 120.0, 60.0, 50.0, '25B13', 'GL', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '178263', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1624', '1826361', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2022-03-29', 101.0, 59.59, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Vienna Malt grown in the NorthEast Freshly dumped barrels from an eight year Notch bottling', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1816', '2070592', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2023-12-08', 114.6, 67.614, 59.0, '23L08A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 11.06, 'See notes on barrels 1812-1815 Post Johnny Jeffery visit Intentionally feints-y.', NULL, '157418', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1165', '1825980', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2020-02-09', 130.0, 72.68898, 55.91, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1166', '1825981', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2020-02-09', 130.0, 72.169773, 55.52, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1191', '1826001', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2020-04-14', 120.0, 64.209948, 53.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1192', '1826002', 'brandy', 'aging', 'Brandy Grape', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2020-04-14', 120.0, 66.576408, 55.48, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1043', '1825891', 'brandy', 'aging', 'Brandy Apple', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-4', '2019-09-13', 99.0, 58.314592, 58.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1044', '1825892', 'brandy', 'aging', 'Brandy Apple', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2019-09-13', 99.0, 60.728485, 61.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '496', '1825520', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2017-03-07', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Robert Grunewald', 0, NULL, NULL, NULL, NULL, NULL
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
  '470', '1825502', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2016-11-16', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Robert Grunewald', 0, NULL, NULL, NULL, NULL, NULL
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
  '469', '1825501', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2016-10-15', 112.0, 66.08, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '466', '1825498', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2016-10-14', 112.0, 66.08, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, 8, 'orangey, grassy, fennel? old fashioned candy texture 73% dip @114.7*P', NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '464', '1825496', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'USED', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2016-10-14', 112.0, 66.08, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '457', '1825489', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2016-09-24', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '458', '1825490', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2016-09-24', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '505', '1825529', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2017-04-06', 118.0, 69.62, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '506', '1825530', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2017-04-06', 118.0, 69.62, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '511', '1825534', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2017-05-10', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '501', '1825525', 'whiskey', 'aging', 'Whisky Single Malt', '59g Other', 59, 'NEW', '59g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2017-03-28', 124.0, 73.16, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '886', '1825764', 'brandy', 'aging', 'Brandy Grape', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2018-11-20', 142.0, 81.659585, 57.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'middle feed c1-188 c2-150', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2177', '2461570', 'brandy', 'aging', 'brandy pommeau', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-06-04', 20.0, 11.6, 58.0, '25F04', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.68, NULL, 'Pommeau 12/375mL 20PF', '182809', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2178', '2461571', 'brandy', 'aging', 'brandy pommeau', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-06-04', 20.0, 11.6, 58.0, '25F04', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.68, NULL, 'Pommeau 12/375mL 20PF', '182809', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2179', '2461572', 'brandy', 'aging', 'brandy pommeau', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-06-04', 20.0, 11.6, 58.0, '25F04', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.68, NULL, 'Pommeau 12/375mL 20PF', '182809', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2180', '2461573', 'brandy', 'aging', 'brandy pommeau', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-06-04', 20.0, 11.6, 58.0, '25F04', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.68, NULL, 'Pommeau 12/375mL 20PF', '182809', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '968', '1825842', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2019-04-17', 115.0, 57.407724, 49.92, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red star be-134 c1-195 c2-155 Peated (Baird) RedStar/BE-134 in an ex-apple brandy cask Column distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '911', '1825789', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2019-01-22', 124.0, 74.378275, 59.98, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier Chevy Malt Ex-apple brandy Column strip Pot finish', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '915', '1825793', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2019-01-25', 122.0, 71.06644, 58.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '914', '1825792', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Apple Brandy', 59, 'USED', '59g Used Apple Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2019-01-25', 122.0, 72.995845, 59.83, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '893', '1825771', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2018-12-21', 125.0, 76.23125, 60.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1628', '1826365', 'bourbon', 'aging', 'Whisky Bourbon Blend', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2022-04-28', 104.9, 60.180333, 57.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bourbon Blend 10/11/22 SRT Wine- Previously held Bourbon 1360 1401 1403 1406 1407 1405 1501 1502 1562 1563 1564', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1629', '1826366', 'bourbon', 'aging', 'Whisky Bourbon Blend', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2022-04-28', 104.9, 61.400204, 58.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bourbon Blend 10/11/22 1360 1401 1403 1406 1407 1405 1501 1502 1562 1563 1564', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1824', '2087859', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 119.3, 70.387, 59.0, '23L30', 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 3.21, NULL, NULL, '158370', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1825', '2087860', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 119.3, 70.387, 59.0, '23L30', 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 3.21, NULL, NULL, '158370', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2135', '2421611', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 53, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-03-05', 106.0, 61.48, 58.0, '25C05', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 716.85, 'Distilled by Randy "Old School"', NULL, '179100', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2120', '2417250', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 112.0, 64.96, 58.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 789.41, 'Penelope is Rocket distilled Red Star and DistilaMaxGW co-innoculation', NULL, '178649', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2147', '2433777', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 64.9, 59.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 750.06, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180243', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2148', '2433778', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 64.9, 59.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 750.06, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180243', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2121', '2417251', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-24', 112.0, 64.96, 58.0, '25B24', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 789.41, 'Penelope is Rocket distilled Red Star and DistilaMaxGW co-innoculation', NULL, '178649', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '2137', '2421946', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-03-06', 104.4, 60.552, 58.0, '25C06', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '179142', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-01-16'
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
  '2139', '2421948', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-03-06', 104.4, 60.552, 58.0, '25C06', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '179142', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-01-16'
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
  '2214', '2490340', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-08-29', 101.0, 56.56, 56.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2207', '2490333', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2208', '2490334', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2209', '2490335', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2210', '2490336', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2211', '2490337', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2212', '2490338', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '2213', '2490339', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Bourbon', 59, 'USED', '59g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-08-29', 101.0, 57.57, 57.0, '25H29', 'Nor''Easter RB', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '185629', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2023-05-05'
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
  '1300', '1826099', 'brandy', 'aging', 'Brandy Grape', '59g Used Grape Brandy', 59, 'USED', '59g Used Grape Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1301', '1826100', 'brandy', 'aging', 'Brandy Grape', '59g Used Grape Brandy', 59, 'USED', '59g Used Grape Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
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
  '1295', '1826094', 'brandy', 'aging', 'Brandy Grape', '59g Used Grape Brandy', 59, 'USED', '59g Used Grape Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;


COMMIT;
