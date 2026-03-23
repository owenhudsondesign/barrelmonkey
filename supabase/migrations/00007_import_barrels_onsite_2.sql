-- Barrel import: onsite part 2 (400 barrels)
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
  '938', '1825816', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-01', 119.0, 62.972337, 52.92, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'c1-189 c2-160', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '939', '1825817', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-05', 115.6, 61.268, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'c1-188-190 c2-155', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '940', '1825818', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2019-03-08', 113.4, 59.167584, 52.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '956', '1825830', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2019-04-03', 114.4, 57.21827, 50.02, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '703', '1825645', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-02-20', 125.0, 64.326013, 51.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '705', '1825647', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-03-08', 122.0, 62.705682, 51.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '706', '1825648', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-03-08', 122.0, 63.02725, 51.66, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '707', '1825649', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2018-03-08', 122.0, 64.152736, 52.58, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '708', '1825650', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-03-08', 122.0, 62.866466, 51.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '709', '1825651', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-6', '2018-03-08', 122.0, 61.258628, 50.21, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '710', '1825652', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2018-03-15', 121.3, 62.932769, 51.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '712', '1825654', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2018-03-15', 121.3, 62.773041, 51.75, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '714', '1825656', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2018-03-15', 122.0, 61.419412, 50.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '691', '1825634', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-02-02', 120.0, 61.212432, 51.01, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '619', '1825619', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2017-12-18', 120.0, 62.31678, 51.93, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '625', '1825625', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2018-01-11', 124.9, 66.066515, 52.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '610', '1825612', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2017-12-02', 124.0, 64.057061, 51.66, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '611', '1825613', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2017-12-02', 124.0, 64.22089, 51.79, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '612', '1825614', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2017-12-02', 124.0, 63.237917, 51.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '615', '1825615', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2017-12-18', 123.0, 63.296415, 51.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '617', '1825617', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2017-12-18', 123.0, 65.568594, 53.31, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '593', '1825596', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2017-02-01', 124.0, 84.32, 68.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '597', '1825600', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2017-11-11', 113.0, 57.458466, 50.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '598', '1825601', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2017-11-11', 113.0, 59.079089, 52.28, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '599', '1825602', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2017-11-11', 120.0, 61.843488, 51.54, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '601', '1825604', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2017-11-17', 119.0, 61.722266, 51.87, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '582', '1825584', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2017-10-17', 125.0, 65.152825, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1965', '1825587', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2017-10-24', 123.3, 63.88173, 51.81, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '585', '1825588', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2017-10-24', 124.6, 64.250987, 51.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1027', '1825875', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2019-08-06', 122.3, 64.012407, 52.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '945', '1825823', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2019-03-26', 113.0, 59.373748, 52.54, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '916', '1825794', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2019-01-25', 122.0, 61.097844, 50.08, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '917', '1825795', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2019-01-25', 122.0, 64.31352, 52.72, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '913', '1825791', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2019-01-25', 109.0, 57.578738, 52.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '816', '1825713', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-08', 116.0, 60.937422, 52.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '817', '1825714', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-08', 116.0, 61.013309, 52.6, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '818', '1825715', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2018-06-08', 115.0, 59.586813, 51.81, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '819', '1825716', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-08', 118.9, 61.802003, 51.98, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '820', '1825717', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2018-06-08', 118.9, 60.63151, 50.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '821', '1825718', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2018-06-08', 118.9, 62.2702, 52.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '822', '1825719', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2018-06-08', 118.9, 62.2702, 52.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1015', '1825865', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2019-07-29', 122.5, 63.162433, 51.56, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1016', '1825866', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2019-07-29', 123.0, 63.945609, 51.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1017', '1825867', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2019-07-29', 123.0, 63.296415, 51.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1018', '1825868', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2019-07-29', 123.0, 63.458714, 51.59, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1233', '1826039', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-17', 111.0, 57.322354, 51.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1234', '1826040', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-17', 111.0, 57.75552, 52.03, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1235', '1826041', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2020-06-17', 111.0, 56.60041, 50.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1236', '1826042', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2020-06-17', 111.0, 57.177965, 51.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1237', '1826043', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2020-06-17', 111.0, 57.899909, 52.16, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1238', '1826044', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2020-06-17', 111.0, 57.466742, 51.77, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1239', '1826045', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2020-06-17', 111.0, 55.30091, 49.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1240', '1826046', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2020-06-17', 111.0, 39.562531, 35.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1145', '1825960', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2020-01-18', 116.3, 60.128903, 51.7, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1146', '1825961', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2020-01-18', 116.3, 61.955603, 53.27, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1147', '1825962', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2020-01-18', 116.3, 59.520002, 51.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1148', '1825963', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2020-01-18', 116.3, 59.520002, 51.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1208', '1826018', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2020-05-14', 123.4, 63.861771, 51.75, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1209', '1826019', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2020-05-14', 123.4, 71.518667, 57.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1210', '1826020', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2020-05-14', 123.4, 71.518667, 57.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1211', '1826021', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2020-05-14', 123.4, 72.659055, 58.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1212', '1826022', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2020-05-14', 123.4, 70.215365, 56.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1205', '1826015', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2020-05-14', 123.4, 63.373033, 51.36, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1206', '1826016', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2020-05-14', 123.4, 62.884294, 50.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1207', '1826017', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2020-05-14', 123.4, 64.024683, 51.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '571', '1825575', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2017-09-07', 107.0, 55.64, 52.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '572', '1825576', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2017-09-07', 107.0, 55.64, 52.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '573', '1825577', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2017-09-07', 107.0, 55.64, 52.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '574', '1825578', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2017-09-07', 110.0, 57.2, 52.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '575', '1825579', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2017-09-07', 109.0, 43.07795, 39.52, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '474', '1825505', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2016-11-30', 115.0, 60.95, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '476', '1825507', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2017-01-13', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1045', '1825893', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2019-09-23', 103.4, 84.520904, 81.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1046', '1825894', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2019-09-23', 103.4, 51.992354, 50.28, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1269', '1826072', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1120', '1825935', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-10-29', 100.3, 52.346727, 52.19, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1121', '1825936', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2019-10-29', 103.7, 54.181239, 52.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1122', '1825937', 'rum', 'aging', 'Rum Nantucket', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-10-29', 104.1, 54.424989, 52.28, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '888', '1825766', 'whiskey', 'aging', 'Whisky Single Malt', '130g Used Sherry', 130, 'USED', '130g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-1', '2018-12-04', 121.0, 157.3, 130.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '889', '1825767', 'whiskey', 'aging', 'Whisky Single Malt', '130g Used Sherry', 130, 'USED', '130g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-1', '2018-12-04', 120.5, 156.65, 130.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '948', '1825826', 'whiskey', 'aging', 'Whisky Single Malt', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2019-03-26', 113.0, 57.753125, 51.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '949', '1825827', 'whiskey', 'aging', 'Whisky Single Malt', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2019-03-26', 113.0, 57.753125, 51.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '909', '1825787', 'whiskey', 'aging', 'Whisky Single Malt', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2019-01-22', 116.0, 58.433144, 50.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1138', '1825953', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-5', '2020-01-07', 106.8, 53.373749, 49.98, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '973', '1825847', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2019-05-15', 116.0, 61.48, 53.0, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '974', '1825848', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-5', '2019-05-15', 116.0, 61.48, 53.0, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '975', '1825849', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2019-05-15', 116.0, 61.48, 53.0, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1400', '1826185', 'whiskey', 'aging', 'Whisky Single Malt', '53g Nadalie', 53, 'NEW', '53g Nadalie', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-06-29', 107.3, 57.127529, 53.24, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1424', '1826196', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-08-10', 111.2, 57.583563, 51.78, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1425', '1826197', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-08-10', 111.2, 57.294199, 51.52, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1426', '1826198', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2021-08-10', 111.2, 57.149516, 51.39, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1559', '1826302', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2022-02-23', 106.5, 56.445, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1560', '1826303', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2022-02-23', 106.5, 56.445, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1561', '1826304', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2022-02-23', 106.5, 56.445, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1565', '1826305', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2022-03-07', 104.0, 55.12, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(Prev 1410) Red Star & SO4 Yeast', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1566', '1826306', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2022-03-07', 104.0, 55.12, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(Prev 1417) Red Star & SO4 Yeast', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1316', '1826112', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2020-12-05', 103.0, 53.920129, 52.35, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Ireks Chocolate, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1196', '1826006', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2020-04-24', 101.9, 51.820396, 50.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1317', '1826113', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2020-12-05', 103.0, 54.318554, 52.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Ireks Chocolate, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1318', '1826114', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2020-12-05', 103.0, 52.724855, 51.19, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Ireks Chocolate, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1319', '1826115', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2020-12-05', 103.0, 50.865541, 49.38, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Ireks Chocolate, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1320', '1826116', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2005-12-29', 101.3, 54.078131, 53.38, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15YO minimum age at time of re-barrel', NULL, NULL, 9, '80% dip @102.7*P juicy orange, lightly herbal, clean malt backbone. treacle finish has ample body', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1161', '1825976', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2020-01-29', 105.0, 55.65, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1380', '1826165', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-01', 110.0, 56.173062, 51.07, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1377', '1826162', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2021-06-01', 110.0, 57.316534, 52.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1378', '1826163', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-06-01', 110.0, 55.601326, 50.55, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1345', '1826138', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2021-03-12', 109.4, 55.685913, 50.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1346', '1826139', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2021-03-12', 109.4, 56.964416, 52.07, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1352', '1826145', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-03-12', 109.4, 53.128907, 48.56, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1353', '1826146', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2021-03-12', 109.4, 55.970025, 51.16, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1354', '1826147', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2021-03-12', 109.4, 55.259745, 50.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1365', '1826150', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2021-04-07', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1366', '1826151', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2021-04-07', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1367', '1826152', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2021-04-07', 112.0, 59.36, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1369', '1826154', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2021-04-07', 120.0, 63.6, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19) Half the barrel Other Half is 100% Maris Otter No. 19 Double pot still', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1370', '1826155', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-04-26', 121.3, 64.289, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'WB21 Jan 03 04 05 Feb 07 08 09 10 11', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1518', '1826268', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2021-12-01', 106.9, 48.29376, 45.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'M019 RedStar & S04', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1519', '1826269', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2021-12-01', 106.9, 54.243994, 50.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'M019 RedStar & S04', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1544', '1826287', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-01-28', 114.3, 60.579, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Red Star & S04', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1545', '1826288', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2022-01-28', 107.4, 56.922, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Lower Feed Arm', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1546', '1826289', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2022-01-28', 112.6, 59.678, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Lower Feed Arm', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1547', '1826290', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-01-28', 112.6, 59.678, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'SO4 & Red Star', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1078', '1825906', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2016-10-15', 150.0, 79.5106, 53.01, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1080', '1825907', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2016-10-15', 151.0, 80.0088, 52.99, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1084', '1825910', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2016-10-15', 150.1, 79.5689, 53.01, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1086', '1825912', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2016-10-15', 150.3, 79.6378, 52.99, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1088', '1825914', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2016-10-15', 150.2, 79.5954, 52.99, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1089', '1825915', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2016-10-15', 150.6, 79.8127, 53.0, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1094', '1825920', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2016-10-15', 150.0, 79.4947, 53.0, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1095', '1825921', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2016-10-15', 150.4, 79.7067, 53.0, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1096', '1825922', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2016-10-15', 150.0, 79.5106, 53.01, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2099', '1826424', 'rum', 'aging', 'Rum Blends', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2011-12-31', 120.0, 63.6, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'this had been florida fresh filled by dean back in 2014-ish', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1224', '1826032', 'rum', 'aging', 'Rum Blends', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2020-06-06', 101.4, 52.600398, 51.87, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1225', '1826033', 'rum', 'aging', 'Rum Blends', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2020-06-06', 101.4, 47.575298, 46.92, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1226', '1826034', 'rum', 'aging', 'Rum Blends', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2020-06-06', 101.4, 49.206824, 48.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2102', '1826428', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2014-12-31', 124.0, 65.72, 53.0, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1142', '1825957', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2020-01-07', 107.4, 56.633008, 52.73, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1249', '1826052', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2020-07-28', 105.0, 53.458314, 50.91, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1250', '1826053', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2020-07-28', 105.0, 49.252203, 46.91, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1251', '1826054', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-2', '2020-07-28', 105.0, 53.865357, 51.3, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1439', '1826211', 'vodka', 'aging', 'Vodka Other- Barrel Aged', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-09-06', 107.1, 54.621, 51.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cran & orange something', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1440', '1826212', 'vodka', 'aging', 'Vodka Other- Barrel Aged', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-09-06', 107.1, 54.621, 51.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cran & orange something', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2103', '1826416', 'whiskey', 'aging', 'Whisky Specialty', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2017-12-31', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic Whisky', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1106', '1825931', 'rum', 'aging', 'Rum FdC 7yr Dark', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2012-10-23', 149.7, 79.3622, 53.01, 'Rum Nantucket', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '879', '1825757', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2018-10-16', 120.0, 63.89442, 53.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1162', '1825977', 'brandy', 'aging', 'Brandy Grape', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2020-02-09', 130.0, 66.458496, 51.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2085', '1826417', 'brandy', 'aging', 'Brandy Apple', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-4', '2014-11-23', 155.0, 82.15, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2086', '1826418', 'brandy', 'aging', 'Brandy Apple', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-4', '2014-12-04', 152.0, 80.56, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1467', '1826233', 'bourbon', 'aging', 'Whisky Bourbon MGP 21Rye', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2018-10-05', 114.5, 51.754, 45.2, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '18J05-J05', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1639', '1826368', 'brandy', 'aging', 'Brandy Grape', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2022-07-15', 111.5, 59.095, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'No Pinot Gris was distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1640', '1826369', 'brandy', 'aging', 'Brandy Grape', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2022-07-15', 111.5, 59.095, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chardonnay from a bigger', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1641', '1826370', 'brandy', 'aging', 'Brandy Grape', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2022-07-15', 111.5, 59.095, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Unknown from tote', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1642', '1826371', 'brandy', 'aging', 'Brandy Grape', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2022-07-15', 111.5, 59.095, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2181', '2473528', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-07-02', 108.6, 57.558, 53.0, '25G02', 'ex Pommeau', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 142.39, 'ex Pommeau barrel', NULL, '183784', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2182', '2473529', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-07-02', 108.6, 57.558, 53.0, '25G02', 'ex Pommeau', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 142.39, 'ex Pommeau barrel', NULL, '183784', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1626', '1826363', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2022-03-29', 108.0, 57.24, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Vienna Malt grown in the NorthEast Freshly dumped barrels from an eight year Notch bottling', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1548', '1826291', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2022-01-28', 112.6, 59.678, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Low Proof on Strip', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1549', '1826292', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2022-01-28', 112.6, 59.678, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1550', '1826293', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2022-02-07', 110.6, 58.618, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevy & Leopold Bros Distiller & Malt high cut/high proof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1551', '1826294', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2022-02-07', 110.0, 58.3, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Leopold Bros low cut', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1552', '1826295', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2022-02-07', 110.0, 58.3, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Leopold Bros mix of low & high cut', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1553', '1826296', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2022-02-07', 110.0, 58.3, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Leopold Bros high cut', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '910', '1825788', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2019-01-22', 124.0, 67.661294, 54.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '848', '1825740', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2018-07-26', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'need full bbl weight', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '849', '1825741', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2018-07-26', 125.0, 66.145, 52.92, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '850', '1825742', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2018-07-27', 124.0, 64.22089, 51.79, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '851', '1825743', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2018-07-27', 122.0, 56.27433, 46.13, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '906', '1825784', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2019-01-18', 120.0, 63.578892, 52.98, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '907', '1825785', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2019-01-18', 120.0, 61.054668, 50.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '908', '1825786', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2019-01-22', 114.0, 60.116897, 52.73, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '900', '1825778', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2019-01-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '901', '1825779', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2019-01-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '902', '1825780', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2019-01-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '903', '1825781', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2019-01-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '833', '1825727', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2017-11-21', 102.0, 64.439928, 63.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'rebarrel from 608- leaky barrel major proof loss original distill date 11/21/17', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '770', '1825691', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2018-05-09', 121.0, 61.956925, 51.2, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1204', '1826014', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2020-04-24', 122.6, 61.444913, 50.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '897', '1825775', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2019-01-05', 124.0, 64.548547, 52.06, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '898', '1825776', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2019-01-07', 123.0, 57.778266, 46.97, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1019', '1825869', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2019-08-02', 122.5, 61.870107, 50.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1020', '1825870', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2019-08-02', 122.5, 62.839352, 51.3, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1021', '1825871', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2019-08-02', 122.5, 63.808596, 52.09, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1022', '1825872', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2019-08-02', 122.5, 63.647056, 51.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1023', '1825873', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2019-08-02', 122.5, 62.35473, 50.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '578', '1825580', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2017-09-12', 121.0, 64.13, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky', NULL, NULL, 2, 'butyric as fuck!', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '586', '1825589', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2017-10-24', 123.8, 65.614, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '587', '1825590', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2017-10-24', 123.8, 65.614, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '583', '1825585', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2017-10-21', 125.0, 66.25, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '584', '1825586', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2017-10-23', 123.3, 77.679, 63.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '944', '1825822', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2019-03-13', 115.0, 58.910544, 51.23, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'befouled vat separate', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '591', '1825594', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2017-10-26', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '592', '1825595', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2017-10-26', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '726', '1825666', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2018-04-05', 124.0, 61.763458, 49.81, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '882', '1825760', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-1', '2018-10-16', 120.0, 63.263364, 52.72, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1260', '1826063', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2020-09-06', 118.9, 63.017, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1261', '1826064', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 118.9, 63.017, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1262', '1826065', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1263', '1826066', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1264', '1826067', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1265', '1826068', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1266', '1826069', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1267', '1826070', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1268', '1826071', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-09-06', 110.5, 58.565, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'all rum washes except rum BW 20 aug 41 and the overproof', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '560', '1825564', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2017-08-10', 109.8, 54.488931, 49.63, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '561', '1825565', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2017-08-10', 109.8, 54.631572, 49.76, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1144', '1825959', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2020-01-18', 116.3, 61.803378, 53.14, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '852', '1825744', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-6', '2018-07-29', 109.0, 56.871382, 52.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '853', '1825745', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2018-07-29', 109.0, 55.598142, 51.01, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '854', '1825746', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2018-07-29', 109.0, 57.720209, 52.95, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '870', '1825750', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2018-09-05', 121.6, 63.272554, 52.03, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '872', '1825752', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2018-09-05', 121.6, 63.432737, 52.17, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '873', '1825753', 'rum', 'aging', 'Rum Nantucket', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2018-09-05', 121.6, 63.432737, 52.17, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1193', '1826003', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2020-04-24', 101.9, 51.426823, 50.47, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1194', '1826004', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2020-04-24', 101.9, 53.394687, 52.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1195', '1826005', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2020-04-24', 101.9, 52.082778, 51.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1197', '1826007', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2020-04-24', 101.9, 52.34516, 51.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1198', '1826008', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2020-04-24', 101.9, 51.558014, 50.6, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1199', '1826009', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2020-04-24', 101.9, 51.033251, 50.08, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1200', '1826010', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2020-04-24', 101.9, 53.132305, 52.14, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1201', '1826011', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2020-04-24', 101.9, 52.213969, 51.24, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '766', '1825687', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2018-05-09', 121.0, 61.956925, 51.2, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '767', '1825688', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2018-05-09', 121.0, 62.753286, 51.86, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '768', '1825689', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2018-05-09', 121.0, 62.434742, 51.6, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '372', '1825418', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-2', '2016-03-05', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '373', '1825419', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-2', '2016-03-05', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '384', '1825430', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2016-04-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '385', '1825431', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2016-04-20', 124.5, 65.985, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '386', '1825432', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2016-04-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '376', '1825422', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2016-03-17', 124.5, 65.985, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '377', '1825423', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2016-03-17', 124.8, 66.144, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '378', '1825424', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2016-04-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '379', '1825425', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2016-04-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '380', '1825426', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-4', '2016-04-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '381', '1825427', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-4', '2016-04-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '382', '1825428', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2016-04-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '412', '1825453', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2016-06-24', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '413', '1825454', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2016-07-08', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '414', '1825455', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2016-07-08', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '415', '1825456', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2016-07-08', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '417', '1825458', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '418', '1825459', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '419', '1825460', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '420', '1825461', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '421', '1825462', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '422', '1825463', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '423', '1825464', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2016-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '425', '1825465', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2016-07-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '432', '1825467', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2016-08-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '433', '1825468', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2016-08-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '434', '1825469', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2016-08-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '435', '1825470', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2016-08-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '436', '1825471', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2016-08-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '437', '1825472', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2016-08-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '439', '1825473', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2016-08-19', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '440', '1825474', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2016-08-19', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '441', '1825475', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2016-08-19', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '442', '1825476', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2016-08-19', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '443', '1825477', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2016-08-19', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '446', '1825478', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2016-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '513', '1825536', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2017-05-24', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '514', '1825537', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2017-05-24', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '515', '1825538', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2017-05-24', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '516', '1825539', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2017-05-24', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '517', '1825540', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2017-05-24', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '493', '1825517', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2017-03-07', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '494', '1825518', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2017-03-07', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '390', '1825435', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2016-04-22', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '393', '1825438', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2016-05-06', 124.5, 65.985, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '394', '1825439', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-2', '2016-05-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '395', '1825440', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-2', '2016-05-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '396', '1825441', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-2', '2016-05-11', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '397', '1825442', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-2', '2016-05-11', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '405', '1825446', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2016-06-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '406', '1825447', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2016-06-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '407', '1825448', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2016-06-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '408', '1825449', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2016-06-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '409', '1825450', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2016-06-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '410', '1825451', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2016-06-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '481', '1825511', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2017-02-01', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '482', '1825512', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2017-02-01', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '483', '1825513', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-1', '2017-02-01', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '845', '1825737', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2018-06-30', 121.0, 62.116197, 51.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '527', '1825547', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2017-06-08', 125.0, 66.25, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevy Malt No barrel notes assume ex-bourbon (53g) Column distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '528', '1825548', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2017-06-08', 123.0, 65.19, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevy Malt No barrel notes assume ex-bourbon (53g) Column distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '529', '1825549', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2017-06-09', 123.0, 65.19, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '545', '1825560', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-3', '2017-07-27', 120.0, 63.6, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier & MO #19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '548', '1825563', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2017-08-01', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'shredder & pumple & 45g MO & Chevy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '539', '1825554', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2017-07-15', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '540', '1825555', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2017-07-18', 123.0, 65.19, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '541', '1825556', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2017-07-18', 123.0, 65.19, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '542', '1825557', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2017-07-20', 120.0, 63.6, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '543', '1825558', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2017-07-20', 120.0, 63.6, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '332', '1825391', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2015-08-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '333', '1825392', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2015-08-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '334', '1825393', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2015-08-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '338', '1825394', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2015-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '339', '1825395', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2015-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '341', '1825397', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2015-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '342', '1825398', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2015-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '343', '1825399', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2015-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '348', '1825404', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2015-11-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '349', '1825405', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2015-11-10', 125.0, 66.25, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '350', '1825406', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2015-11-10', 125.0, 66.25, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '351', '1825407', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2015-11-10', 125.0, 66.25, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '352', '1825408', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'USED', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2015-11-10', 125.0, 66.25, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '353', '1825409', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2015-11-19', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '354', '1825410', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2015-11-19', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '355', '1825411', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2015-11-19', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '363', '1825414', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2016-01-25', 119.0, 63.07, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '331', '1825390', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-08-14', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '330', '1825389', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-08-14', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '329', '1825388', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-08-11', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '328', '1825387', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2015-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '327', '1825386', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2015-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '326', '1825385', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2015-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '325', '1825384', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2015-07-23', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '324', '1825383', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-07-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '323', '1825382', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2015-07-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '322', '1825381', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2015-07-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '321', '1825380', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2015-07-21', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '320', '1825379', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-06-19', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '319', '1825378', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2015-06-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '318', '1825377', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-06-15', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '317', '1825376', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-4', '2015-06-13', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '316', '1825375', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2015-06-13', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '315', '1825374', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2015-06-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '300', '1825372', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2015-06-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '299', '1825371', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2014-12-30', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '298', '1825370', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2014-12-30', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '297', '1825369', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2014-10-24', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '296', '1825368', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-1', '2014-10-24', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '295', '1825367', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2014-10-22', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '294', '1825366', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2014-10-22', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '292', '1825364', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2014-10-22', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '288', '1825360', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2014-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 5, '85% dip @11 june 2024. sulphur?, tobacco, fruit emerges as the sulphur blows off (+); earthy, vinous, hot ()', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '287', '1825359', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2014-09-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '284', '1825356', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2014-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 8, 'potential single barrel release? 75% dip @11 june 2024. orange, graham cracker, very pretty! +; baking spice, orange peel, candied ginger + a 9 was assessed to this barrel in Aug 2024 a 7 was assessed for this barrel in 2025. nose is muted compared to others- smooth mouth feel and simple palate', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '283', '1825355', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2014-08-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '282', '1825354', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2014-08-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '281', '1825353', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2014-08-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '280', '1825352', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2014-07-28', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1970', '1825351', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2014-07-28', 121.0, 66.146667, 54.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '279', '1825350', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2014-05-29', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '278', '1825349', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2014-07-28', 121.0, 66.146667, 54.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1969', '1825348', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2014-07-28', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '277', '1825347', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2014-07-25', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1968', '1825346', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2014-07-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '276', '1825345', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2014-05-29', 122.0, 64.66, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1967', '1825344', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2014-07-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 're-named from 276', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '275', '1825343', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2014-06-27', 116.0, 61.48, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1966', '1825342', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2014-06-29', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '274', '1825341', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2014-06-27', 116.0, 61.48, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '273', '1825340', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2014-04-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '272', '1825339', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-2', '2014-04-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '271', '1825338', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-2', '2014-04-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '270', '1825337', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2014-03-10', 121.0, 64.13, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '269', '1825336', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2014-03-10', 121.0, 64.13, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 8, '71% dip @ 11june 2024. straw, ripe melon +; graham cracker crust, fennel, baking spice (+)', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '268', '1825335', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2014-03-05', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '267', '1825334', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2014-03-05', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '266', '1825333', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2014-03-05', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 8, '68% dip @ 11june 2024. lt vanilla, hay, herbal (+); fennel, juicy, baking spice and fruit cobbler +', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '265', '1825332', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2014-03-05', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '264', '1825331', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2014-01-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '263', '1825330', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2014-01-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '262', '1825329', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-2', '2014-01-16', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '261', '1825328', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-3', '2014-01-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '260', '1825327', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2014-01-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '259', '1825326', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2013-11-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '257', '1825324', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2013-11-25', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '256', '1825323', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2013-11-24', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '254', '1825321', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2013-09-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '252', '1825319', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-2', '2013-09-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '251', '1825318', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2013-09-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 7, '62% dip @ 11june 2024. very light herbal, vanilla, lt orange (+); buttery, pie crust, ginger spice (+)', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '250', '1825317', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2013-09-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 7, '72% dip @ 11 june 2024. light, herbal nose, grassy/biscuity +; light lemon curd sprinkled with fresh pepper, vanilla creme (+)', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '248', '1825315', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2013-08-01', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '247', '1825314', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2013-05-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '246', '1825313', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2013-05-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '245', '1825312', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-4', '2013-05-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '244', '1825311', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2013-05-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '243', '1825310', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-1', '2013-05-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '242', '1825309', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2013-05-09', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '241', '1825308', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-5', '2013-04-07', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '240', '1825307', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2013-04-03', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '237', '1825305', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2013-03-14', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '236', '1825304', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2013-03-14', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 6, '65% dip @ 11june 2024. herbal, light vanilla, hay (+); light baking spice, ginger beer, lemon curd +', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '235', '1825303', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2013-02-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '233', '1825302', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2013-02-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 8, '75% dip @ 11 June 2024. butter/ginger nose +, supple, viscous texture, slightly hot (+)', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '232', '1825301', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-3', '2013-01-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '231', '1825300', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2013-01-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '230', '1825299', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-4', '2013-01-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '229', '1825298', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-2', '2013-01-17', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '228', '1825297', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-6', '2012-11-26', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 6, '50% dip @ 11june 2024. herbal/fennel, creamy (+); lemon pannacotta, candied ginger and nuts (+)', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '227', '1825296', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2012-11-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '226', '1825295', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-6', '2012-11-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '223', '1825292', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2012-10-22', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '222', '1825291', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2012-09-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '221', '1825290', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2012-09-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '220', '1825289', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2012-09-10', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '219', '1825288', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2012-09-06', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '216', '1825285', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-6', '2012-06-14', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '212', '1825281', 'whiskey', 'aging', 'Whisky Single Malt', '53g Other', 53, 'NEW', '53g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2012-05-31', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;


COMMIT;
