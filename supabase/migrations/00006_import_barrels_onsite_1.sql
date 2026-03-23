-- Barrel import: onsite part 1 (400 barrels)
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
  '1972', '1825670', 'whiskey', 'aging', 'Whisky Single Malt', NULL, 70, 'USED', NULL, (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2018-04-06', 124.7, 85.749706, 68.76, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '727', '1825667', 'whiskey', 'aging', 'Whisky Single Malt', NULL, 70, 'USED', NULL, (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2018-04-09', 118.9, 77.408569, 65.1, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1971', '1825668', 'whiskey', 'aging', 'Whisky Single Malt', NULL, 70, 'USED', NULL, (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2018-04-05', 122.0, 81.517387, 66.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1136', '1825951', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2020-01-07', 114.0, 57.140813, 50.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1149', '1825964', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2020-01-18', 116.3, 61.498928, 52.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1622', '1826359', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2022-03-29', 101.0, 53.53, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Vienna Malt grown in the NorthEast New Kelvin barrel?', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1623', '1826360', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2022-03-29', 101.0, 53.53, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Vienna Malt grown in the NorthEast Freshly dumped barrels from an eight year Notch bottling', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1817', '2082271', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-20', 103.7, 54.961, 53.0, '23L20', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.48, NULL, NULL, '158085', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1818', '2082272', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-20', 103.7, 54.961, 53.0, '23L20', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.48, NULL, NULL, '158085', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1819', '2082273', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-20', 103.7, 54.961, 53.0, '23L20', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.48, NULL, NULL, '158085', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1754', '1908776', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2023-05-04', 113.3, 60.049, 53.0, '23E04', 'vienna & mo #19 (see bbl 1626)', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'A single barrel that that is a mix of column distilled new make (MO#19) and pot still (Vienna). The MO#19 rested 4 months post fermentation then distilled.', NULL, '146130', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1621', '1826358', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2022-03-29', 101.0, 53.53, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Vienna Malt grown in the NorthEast New Kelvin barrel?', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1539', '1826282', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-01-14', 111.3, 58.223545, 52.31, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1537', '1826280', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2022-01-14', 111.3, 57.209703, 51.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1538', '1826281', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-01-14', 111.3, 56.19586, 50.49, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1533', '1826276', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2022-01-07', 112.1, 57.090008, 50.93, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 Verdant Fruity IPA Yeast Ex-bourbon barrel and Kelvin? Column and Pot distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1534', '1826277', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2022-01-07', 112.1, 55.921926, 49.89, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 Verdant Fruity IPA Yeast Ex-bourbon barrel and Kelvin? Column and Pot distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1535', '1826278', 'whiskey', 'aging', 'Whisky Single Malt', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2022-01-07', 112.1, 56.797987, 50.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 Verdant Fruity IPA Yeast Ex-bourbon barrel and Kelvin? Column and Pot distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1137', '1825952', 'bourbon', 'aging', 'Whisky Bourbon Nantucket', '53g Kelvin', 53, 'NEW', '53g Kelvin', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2020-01-07', 104.1, 54.156224, 52.02, NULL, 'Whisky Bourbon Nantucket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Randy says: mix of Dist from summer 177-99=78#', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2217', '2494166', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2218', '2494167', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2219', '2494168', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2220', '2494169', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2221', '2494170', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2222', '2494171', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2223', '2494172', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-4', '2025-09-11', 112.0, 62.72, 56.0, '25I11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '186062', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1648', '1826377', 'whiskey', 'aging', 'Whisky Single Malt Blend', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2014-10-21', 97.1, 57.289, 59.0, NULL, '8 yo Notch Bottle Blend', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Srt Previously filled with tempranillo 8 yo Notch Blend', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '808', '1825708', 'rum', 'aging', 'Rum FdC 7yr Dark', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2003-05-15', 138.8, 67.49887, 48.63, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '809', '1825709', 'rum', 'aging', 'Rum FdC 7yr Dark', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2003-05-15', 138.8, 70.864465, 51.06, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1047', '1825895', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2019-09-24', 104.4, 61.22685, 58.65, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1418', '1826190', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2021-07-27', 109.0, 65.4, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1419', '1826191', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2021-07-27', 109.0, 63.237582, 58.02, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1879', '2164059', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2024-03-08', 114.6, 67.614, 59.0, '24C08', 'Rocket Spirit Maris Otter STR Port', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 STR', NULL, '162758', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1881', '2164060', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-1', '2024-03-08', 114.6, 67.614, 59.0, '24C08', 'Rocket Spirit Maris Otter STR Port', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 STR', NULL, '162758', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1870', '2137811', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-02-15', 113.8, 67.142, 59.0, '24B15', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 SO4 Red Star SRT STR', NULL, '161003', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1872', '2137813', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-02-15', 113.8, 67.142, 59.0, '24B15', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 SO4 Red Star Randy SRT STR', NULL, '161005', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1871', '2138424', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-02-15', 108.9, 64.251, 59.0, '24B15A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 4.75, 'Rocket Arnold Spirit Maris Otter 19 SO4 Red Star SRT STR lower cuts than in the past', NULL, '161026', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1873', '2138425', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-02-15', 108.9, 64.251, 59.0, '24B15A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 4.75, 'Rocket Arnold Spirit Maris Otter 19 SO4 Red Star SRT STR lower cuts than in the past', NULL, '161026', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1877', '2164080', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'NEW', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-03-08', 106.6, 62.894, 59.0, '24C08A', 'Rocket Arnold Spirit Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 3.57, 'Rocket Arnold Spirit Maris Otter 19 STR or STR Bourbon', NULL, '162761', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1880', '2164081', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'NEW', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-2', '2024-03-08', 106.6, 62.894, 59.0, '24C08A', 'Rocket Arnold Spirit Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 3.57, 'Rocket Arnold Spirit Maris Otter 19 STR or STR Bourbon', NULL, '162761', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1986', '2222479', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-22', 109.5, 64.605, 59.0, '24E22', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166497', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1804', '2025040', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2023-10-24', 112.5, 66.375, 59.0, '23J24', 'DistillamaxRM some SafeAle B-134', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 186.44, NULL, NULL, '154730', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1805', '2025041', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2023-10-24', 112.5, 66.375, 59.0, '23J24', 'DistillamaxRM some SafeAle B-134', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 186.44, NULL, NULL, '154730', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1790', '1986583', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2023-09-08', 118.0, 69.62, 59.0, '23I08', 'Nantucket Rum', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 466.19, 'DistillaMax RM 25-30% Dunder Fruit Bacteria post Ferm C1-192 C2-150 Top Feed 28 Day Fermentation Rocket still has continuously losing alcohol in the stillage. More than it should.', NULL, '152206', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1791', '1986584', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2023-09-08', 118.0, 69.62, 59.0, '23I08', 'Nantucket Rum', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 466.19, 'DistillaMax RM 25-30% Dunder Fruit Bacteria post Ferm C1-192 C2-150 Top Feed 28 Day Fermentation Rocket still has continuously losing alcohol in the stillage. More than it should.', NULL, '152206', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '846', '1825738', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2018-07-21', 142.0, 83.196707, 58.59, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1254', '1826057', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-08-17', 114.8, 67.332784, 58.65, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1255', '1826058', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-5', '2020-08-17', 114.8, 68.082592, 59.31, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1256', '1826059', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-08-17', 114.8, 68.382515, 59.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1257', '1826060', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-08-17', 111.4, 65.657274, 58.94, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1290', '1826089', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-5', '2020-10-20', 106.0, 87.196538, 82.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1292', '1826091', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-20', 106.0, 87.196538, 82.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1293', '1826092', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-20', 106.0, 87.196538, 82.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1294', '1826093', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-20', 106.0, 87.196538, 82.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1297', '1826096', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1298', '1826097', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1245', '1826048', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-07-13', 111.2, 65.541091, 58.94, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'merlot', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1246', '1826049', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-07-13', 111.2, 64.962362, 58.42, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'merlot', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1247', '1826050', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-07-13', 111.2, 65.541091, 58.94, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'merlot', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1174', '1825989', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2020-03-07', 103.7, 62.22, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1175', '1825990', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2020-03-07', 103.7, 62.22, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1005', '1825855', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2019-06-25', 121.0, 72.628169, 60.02, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '6/3/19 ferm sheet', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1006', '1825856', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2019-06-25', 121.5, 71.852415, 59.14, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '6/3/19 ferm sheet', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1007', '1825857', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-4', '2019-06-26', 118.0, 69.950164, 59.28, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '5/31/19 Ferm sheet', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1008', '1825858', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2019-06-27', 118.5, 68.734337, 58.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '5/31/19 Ferm sheet', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1178', '1825993', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2020-03-12', 118.3, 68.913062, 58.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1179', '1825994', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2020-03-12', 118.3, 67.050547, 56.68, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1041', '1825889', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-09-10', 101.3, 52.414058, 51.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rum Wash Sept 19 2019 800# of Lula Westfieeld Sugar, 250# of Sucanant/Dehtdrated Whole Cane Sugar, 30 gallons blackstrap molasses DistillaMacRM over a month fermentation', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1272', '1826075', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'NEW', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2020-09-09', 110.5, 65.940422, 59.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1273', '1826076', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'NEW', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2020-09-09', 110.5, 65.509439, 59.28, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1275', '1826078', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2020-09-09', 110.5, 65.078456, 58.89, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1276', '1826079', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A1', '2020-09-09', 110.5, 64.216489, 58.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1034', '1825882', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2019-09-06', 103.9, 59.102125, 56.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 19, 2019 800# Lula-Westfield, 300# Sucanant,dehydrated whole cane sugar, 30 gallons molasses DistillamaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1035', '1825883', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2019-09-06', 103.9, 60.978383, 58.69, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 19, 2019 800# Lula-Westfield, 300# Sucanant,dehydrated whole cane sugar, 30 gallons molasses DistillamaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1036', '1825884', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-6', '2019-09-06', 103.9, 60.308291, 58.04, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 19, 2019 800# Lula-Westfield, 300# Sucanant,dehydrated whole cane sugar, 30 gallons molasses DistillamaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1037', '1825885', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-09-06', 103.9, 61.112402, 58.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 19, 2019 800# Lula-Westfield, 300# Sucanant,dehydrated whole cane sugar, 30 gallons molasses DistillamaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1038', '1825886', 'rum', 'aging', 'Rum Nantucket', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-09-06', 103.9, 60.710347, 58.43, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'August 19, 2019 800# Lula-Westfield, 300# Sucanant,dehydrated whole cane sugar, 30 gallons molasses DistillamaxRM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '904', '1825782', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-3', '2019-01-17', 110.0, 63.462696, 57.69, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier & MO #19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '941', '1825819', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-1', '2019-03-08', 113.4, 65.971856, 58.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1026', '1825874', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-2', '2019-08-06', 121.0, 71.35399, 58.97, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '923', '1825801', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2019-02-07', 124.0, 70.610213, 56.94, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '924', '1825802', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2019-02-07', 121.0, 68.805634, 56.86, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '892', '1825770', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-5', '2018-12-21', 125.0, 73.75, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chevallier', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '286', '1825358', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 53, 'NEW', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2014-09-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '285', '1825357', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 53, 'NEW', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2014-09-12', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '388', '1825433', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 53, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2016-04-20', 124.0, 65.72, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2168', '2444038', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2169', '2444039', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2170', '2444040', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-4', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2171', '2444041', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2172', '2444042', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2173', '2444043', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2174', '2444044', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2175', '2444045', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2157', '2444027', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2158', '2444028', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2159', '2444029', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2160', '2444030', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2161', '2444031', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2162', '2444032', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2163', '2444033', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-1', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2164', '2444034', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2165', '2444035', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-2', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2166', '2444036', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2167', '2444037', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Y-3', '2025-05-01', 109.5, 63.51, 58.0, '25E01', 'southern re-barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '181462', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2019-09-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1996', '2229701', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2024-05-30', 114.0, 67.26, 59.0, '24E30', 'Nor''Easter SRT Finish', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Storm Nor''Easter Bourbon 6/750mL 88.8PF', '166776', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2018-04-16'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1187', '1825997', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2005-05-01', 119.3, 104.265, 87.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'vatted 614 58 80- used OG PG split with 1188- claim ullage at bottling- proof recorded is what was recorded at rebarreling 15YO minimum at re-barreling', NULL, NULL, 8, 'O+ + light orange peel, baking spice; bright, clarion oak/fruit combination, supremely balanced and easy!', '1 barrel= Doug Schroer, 1 barrel= Steve Wasserman/Scott Klaire/Jeff Perlstien, 2 barrel= Alastoir Borthwick', 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1188', '1825998', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Scraped ReToasted', 59, 'USED', '59g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2005-05-01', 119.3, 104.265, 87.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'vatted 614 58 80- used OG PG split with 1187- claim ullage at bottling- proof recorded is what was recorded at rebarreling 15YO minimum at re-barrel', NULL, NULL, 9, '+ + big dried fruit nose, orange peel, luscious and soft; cherries! cola nut, textured mouthfeel, intense but gentle...', '1 barrel= Doug Schroer, 1 barrel= Steve Wasserman/Scott Klaire/Jeff Perlstien, 2 barrel= Alastoir Borthwick', 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1782', '1961208', 'whiskey', 'aging', 'Whisky Single Malt', '130g Other', 66, 'USED', '130g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2023-08-10', 128.3, 84.678, 66.0, '23H10', '12yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 12yr Single Malt 6/750ml 96PF', '150533', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2010-08-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1784', '1961210', 'whiskey', 'aging', 'Whisky Single Malt', '130g Other', 60, 'USED', '130g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2023-08-10', 128.3, 76.98, 60.0, '23H10', '12yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 12yr Single Malt 6/750ml 96PF', '150534', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2010-08-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1785', '1961211', 'whiskey', 'aging', 'Whisky Single Malt', '130g Other', 60, 'USED', '130g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2023-08-10', 128.3, 76.98, 60.0, '23H10', '12yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 12yr Single Malt 6/750ml 96PF', '150534', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2010-08-18'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '884', '1825762', 'brandy', 'aging', 'Brandy Grape', '130g Other', 130, 'NEW', '130g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-1', '2018-11-07', 120.0, 156.0, 130.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'chard brandy single pass 130g puncheon', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '885', '1825763', 'brandy', 'aging', 'Brandy Grape', '130g Other', 130, 'NEW', '130g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-1', '2018-11-10', 120.0, 156.0, 130.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red blend brandy single pass 130g puncheon', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2070', '2392758', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '130g Other', 53, 'USED', '130g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2024-12-21', 109.7, 58.141, 53.0, '24L21', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 132.35, 'Dec 20thn distillation was hazy off the rocket, yet tasted fine. This barrel is about 22 gallons of that with Rocket Spirit from Penelope (clear, no haze)', NULL, '176185', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '564', '1825568', 'rum', 'aging', 'Rum Nantucket', '130g Used Bourbon', 130, 'USED', '130g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'R-1', '2017-08-18', 124.0, 156.24, 126.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'sherry first then bourbon now rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '569', '1825573', 'rum', 'aging', 'Rum Nantucket', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-5', '2017-08-24', 116.0, 81.2, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'px sherry', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1135', '1825950', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-07', 114.0, 79.8, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '877', '1825755', 'rum', 'aging', 'Rum Nantucket', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-6', '2018-09-22', 125.0, 82.515888, 66.01, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '477', '1825508', 'rum', 'aging', 'Rum Nantucket', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2017-01-13', 122.0, 82.96, 68.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1042', '1825890', 'rum', 'aging', 'Rum Nantucket', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2019-09-10', 101.3, 52.674825, 52.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rum Wash Sept 19 2019 800# of Lula Westfieeld Sugar, 250# of Sucanant/Dehtdrated Whole Cane Sugar, 30 gallons blackstrap molasses DistillaMacRM over a month fermentation', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1154', '1825969', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-24', 116.0, 73.610584, 63.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1155', '1825970', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-24', 116.0, 74.065907, 63.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1176', '1825991', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2020-03-07', 103.7, 72.59, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1177', '1825992', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2020-03-07', 103.7, 54.961, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1214', '1826023', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2020-06-02', 114.9, 72.217258, 62.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1215', '1826024', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2020-06-02', 114.9, 72.817818, 63.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1217', '1826026', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-02', 114.9, 74.919775, 65.2, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1218', '1826027', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-02', 114.9, 74.469356, 64.81, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1219', '1826028', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2020-06-02', 114.9, 73.268237, 63.77, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1220', '1826029', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2020-06-02', 114.9, 72.967957, 63.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1221', '1826030', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-02', 114.9, 72.667678, 63.24, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1222', '1826031', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2020-06-02', 124.0, 79.620797, 64.21, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '609', '1825611', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2017-12-02', 124.0, 82.733544, 66.72, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '618', '1825618', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2017-12-18', 120.0, 76.831068, 64.03, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '693', '1825636', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-3', '2018-02-13', 115.3, 74.310723, 64.45, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '702', '1825644', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2018-02-19', 120.0, 79.67082, 66.39, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '823', '1825720', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2018-06-13', 119.0, 82.504699, 69.33, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '735', '1825677', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2018-04-16', 116.8, 76.939524, 65.87, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1202', '1826012', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2020-04-24', 122.1, 79.826245, 65.38, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1203', '1826013', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-1', '2020-04-24', 122.1, 81.596585, 66.83, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '947', '1825825', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-3', '2019-03-26', 113.0, 73.075382, 64.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '957', '1825831', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2019-04-03', 114.4, 72.307161, 63.21, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated (Crisp) RedStar/BE-134 SRT Wine barrel', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '491', '1825515', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2017-03-07', 124.0, 85.56, 69.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '492', '1825516', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2017-03-07', 124.0, 85.56, 69.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '603', '1825606', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2017-11-17', 119.0, 79.067003, 66.44, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '715', '1825657', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2018-03-21', 123.0, 79.03937, 64.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '716', '1825658', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2018-03-21', 123.0, 79.363967, 64.52, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '699', '1825641', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-3', '2018-02-19', 120.0, 80.144112, 66.79, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '723', '1825665', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-1', '2018-03-30', 121.0, 77.247066, 63.84, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '535', '1825550', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2017-07-15', 119.0, 83.3, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier', NULL, NULL, 7, 'O+ + light orange, toasted nuts, bright; juicy, orange zest, blue cheese and nuts,', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '546', '1825561', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2017-07-27', 120.0, 84.0, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevallier & MO #19', NULL, NULL, 7, '+ O+ pretty, floral, citrus nose; reserved sherry influence, spicy mid-palate, baking spice and caramel linger the rancio/toasted nut glow left by this barrel is lovely', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2014', '2246036', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '70g Used Sherry', 53, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 71.75, 70.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 77.49, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1152', '1825967', 'brandy', 'aging', 'Brandy Grape', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2020-01-23', 110.0, 71.324066, 64.84, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1713', '1907781', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 66, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2023-03-04', 120.0, 79.2, 66.0, '23C04', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Chevy and MO#19', NULL, '146029', 2, 'O+ O+ intense stewed orange, nuts, winey and toasty; juicy orange marmalade, cola nut, schezchuan peppercorn', NULL, 0, NULL, NULL, NULL, NULL, '2017-05-24'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '711', '1908039', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'NEW', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2023-03-08', 121.3, 84.91, 70.0, '23C08', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146049', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2018-03-15'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1520', '1826270', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2021-12-01', 106.9, 70.5408, 65.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'M019 RedStar & S04 Sherry Barrels that Randy rinsed and flushed with PX he had saved 29 Sept 2021', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1521', '1826271', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2021-12-01', 106.9, 70.5408, 65.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'M019 RedStar & S04 Sherry Barrels that Randy rinsed and flushed with PX he had saved 29 Sept 2022', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '502', '1825526', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 70, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2017-03-28', 124.0, 86.8, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, 6, 'O+ + understated sherry/vinous nose; balance, toasty, spicy linger rancio not apparent like some', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1684', '1933934', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 66, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2023-01-03', 124.0, 68.2, 55.0, '23A03', '12 years +', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Karil''s barrels to re-fill sherry', 'Notch 15yr Single Malt 6/750ml 96PF', '148179', 9, 'light dried fruit, hint of sandalwood and spice, mango; solid fruit/spice balance, wood grip is completely pleasant! 95%@113.6*P', NULL, 32, 'R', NULL, NULL, NULL, '2008-08-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1685', '1933935', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Sherry', 66, 'USED', '70g Used Sherry', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2023-01-03', 124.0, 68.2, 55.0, '23A03', '12 years +', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Karil''s barrels to re-fill sherry', 'Notch 15yr Single Malt 6/750ml 96PF', '148179', 9, '93% dip @ 112.9*P orange, slight spicy nose; juicy dried fruit, electric orange zest, marmalade, treacle', NULL, 32, 'R', NULL, NULL, NULL, '2008-08-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2131', '2421433', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-03-04', 112.3, 58.396, 52.0, '25C04', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 680.89, 'Distilled by Randy "Old School"; Distilled by Randy "Old School"', 'Notch 12yr Single Malt 6/750ml 96PF', '179076', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1530', '1826273', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2022-01-07', 112.1, 59.413, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 Verdant Fruity IPA Yeast Ex-bourbon barrel and Kelvin? Column and Pot distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1531', '1826274', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2022-01-07', 112.1, 59.413, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 Verdant Fruity IPA Yeast Ex-bourbon barrel and Kelvin? Column and Pot distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1532', '1826275', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2022-01-07', 112.1, 59.413, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 Verdant Fruity IPA Yeast Ex-bourbon barrel and Kelvin? Column and Pot distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1381', '1826166', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-06-01', 110.0, 57.030666, 51.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1395', '1826180', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2021-06-29', 107.3, 55.737564, 51.95, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1396', '1826181', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-1', '2021-06-29', 107.3, 53.652618, 50.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1397', '1826182', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-06-29', 107.3, 56.154554, 52.33, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1540', '1826283', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-01-14', 111.3, 57.789041, 51.92, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop Old Elh barrel', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1541', '1826284', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-01-14', 111.3, 57.789041, 51.92, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop Four Roses', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1542', '1826285', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2022-01-14', 111.3, 56.630364, 50.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop Four Roses', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1543', '1826286', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2022-01-14', 111.3, 55.90619, 50.23, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO #19 Sauvy Yeast Melvin Coop Wild Turkey', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1509', '1826259', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-11-12', 110.5, 56.315132, 50.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1510', '1826260', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-12', 110.5, 55.309504, 50.05, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1511', '1826261', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-12', 110.5, 56.02781, 50.7, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1512', '1826262', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-18', 110.0, 57.030666, 51.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1513', '1826263', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-18', 110.0, 57.602402, 52.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1514', '1826264', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-18', 110.0, 54.171986, 49.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1515', '1826265', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-18', 110.0, 58.317072, 53.02, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1516', '1826266', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-18', 110.0, 59.174676, 53.8, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1517', '1826267', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-18', 110.0, 56.601864, 51.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1413', '1826188', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-07-14', 107.1, 54.233737, 50.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1414', '1826189', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-07-14', 107.1, 53.817621, 50.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1375', '1826160', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-01', 110.0, 55.601326, 50.55, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1379', '1826164', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-1', '2021-06-01', 110.0, 58.031204, 52.76, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1384', '1826169', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-06-14', 118.8, 61.916374, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1385', '1826170', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-2', '2021-06-14', 118.8, 55.210067, 46.47, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1386', '1826171', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-3', '2021-06-14', 111.1, 56.51557, 50.87, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1882', '2164061', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 59, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-5', '2024-03-08', 114.6, 60.738, 53.0, '24C08', 'Rocket Spirit Maris Otter', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 STR', NULL, '162758', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2215', '2490385', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2025-08-29', 113.0, 59.89, 53.0, '25H29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 92.41, 'Gale Force winds previously One nice day at 74 degrees', NULL, '185641', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2216', '2490386', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2025-08-29', 113.0, 59.89, 53.0, '25H29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 92.41, 'Gale Force winds previously One nice day at 74 degrees', NULL, '185641', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1329', '1826124', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-01-30', 111.1, 58.883, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1330', '1826125', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-4', '2021-01-30', 111.1, 57.455087, 51.71, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '12% Crisp (coffee) Chocolate Malt, 88% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1755', '1908777', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2023-05-04', 110.0, 58.3, 53.0, '23E04', '4 month rest', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 rested 4 months post fermentation. Column distilled', NULL, '146131', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1756', '1908778', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2023-05-04', 110.0, 58.3, 53.0, '23E04', '4 month rest', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'MO#19 rested 4 months post fermentation. Column distilled', NULL, '146131', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1231', '1826037', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-17', 111.0, 57.177965, 51.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1232', '1826038', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2020-06-17', 111.0, 57.466742, 51.77, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1812', '2070588', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-08', 114.6, 60.738, 53.0, '23L08', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 11.46, 'The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel.', NULL, '157417', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1813', '2070589', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-08', 114.6, 60.738, 53.0, '23L08', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 11.46, 'The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel.', NULL, '157417', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1814', '2070590', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-08', 114.6, 60.738, 53.0, '23L08', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 11.46, 'The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel.', NULL, '157417', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1815', '2070591', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-1', '2023-12-08', 114.6, 60.738, 53.0, '23L08', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 11.46, 'The majority of the liquids in this barreling was post Johnny Jeffery visit and post physical modifications to the column still. The spirit distillation after that was pushed to lower distillation coming off the still. Fients and fiety-ness was detected and internally kept to see how it develops in the barrel.', NULL, '157417', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1420', '1826192', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-07-27', 109.0, 55.032258, 50.49, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1421', '1826193', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-07-27', 109.0, 54.466374, 49.97, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1398', '1826183', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-1', '2021-06-29', 107.3, 56.710539, 52.85, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1555', '1826298', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2022-02-23', 105.0, 55.65, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Four Roses of barrels DNR smelled "OK" from this batch not my favorite', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1556', '1826299', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2022-02-23', 106.5, 56.445, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Four Roses of barrels DNR smelled "OK" from this batch not my favorite', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1557', '1826300', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2022-02-23', 106.5, 56.445, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Four Roses of barrels DNR smelled "OK" from this batch not my favorite', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1558', '1826301', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2022-02-23', 106.5, 56.445, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Four Roses of barrels DNR smelled "OK" from this batch not my favorite', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '810', '1825710', 'rum', 'aging', 'Rum FdC 7yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2003-05-15', 138.8, 73.108195, 52.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '811', '1825711', 'rum', 'aging', 'Rum FdC 7yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2003-05-15', 138.8, 68.059803, 49.03, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1666', '1826395', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-16', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Bourbon Arrived 4yrs old used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1674', '1826403', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-17', 115.1, 60.1513, 52.26, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Bourbon (1405) used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1678', '1826407', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-1', '2022-11-18', 115.0, 60.1513, 52.31, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Bourbon/Ex Rum (1527) used original pg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '739', '1825679', 'other', 'aging', 'Agave Spirit', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-3', '2018-04-26', 110.0, 57.745336, 52.5, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '752', '1825683', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-4', '2014-05-05', 137.0, 71.983335, 52.54, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '753', '1825684', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2014-05-05', 137.0, 73.64024, 53.75, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '755', '1825685', 'rum', 'aging', 'Rum FdC 4yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2014-05-05', 137.0, 73.087938, 53.35, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1325', '1826120', 'whiskey', 'aging', 'Whisky Specialty', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2021-01-04', 121.6, 62.151268, 51.11, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'previously 253 ex bourbon', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '624', '1825624', 'whiskey', 'aging', 'Whisky Specialty', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2018-01-05', 118.7, 61.698, 51.98, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky- winter shredder', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2273', '2535377', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2026-02-09', 118.0, 61.36, 52.0, '26B09', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'dumped 104 & 109 together and back into 109', NULL, '189881', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2008-03-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1759', '1908997', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-4', '2023-05-25', 100.0, 52.74, 52.74, '23E25', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146168', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2013-11-25'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2141', '2421950', 'bourbon', 'aging', 'Whisky Bourbon Blend NEB', '53g Used Bourbon', 59, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Z-1', '2025-03-06', 104.4, 55.332, 53.0, '25C06', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '179142', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-01-16'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '776', '1825696', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2015-05-12', 125.0, 67.798625, 54.24, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '779', '1825698', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2015-05-12', 125.0, 65.152825, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '780', '1825699', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2015-05-12', 125.0, 66.80645, 53.45, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '781', '1825700', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2015-05-12', 125.0, 63.333838, 50.67, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '782', '1825701', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2015-05-12', 125.0, 65.979638, 52.78, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '783', '1825702', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-3', '2015-05-12', 125.0, 65.152825, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '786', '1825704', 'rum', 'aging', 'Rum FdC 3yr Dark', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-5', '2015-05-12', 125.0, 64.326013, 51.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1536', '1826279', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-3', '2022-01-14', 111.7, 52.497425, 47.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Heaven H11 7-121 G(w/Verdan)-295 w/Sauvy G (Final) 482', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1433', '1826205', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-09-01', 102.3, 52.062311, 50.89, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1434', '1826206', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-09-01', 109.4, 58.242919, 53.24, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1435', '1826207', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-1', '2021-09-01', 109.4, 55.685913, 50.9, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1436', '1826208', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-1', '2021-09-01', 109.4, 53.981242, 49.34, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2142', '2433772', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 58.3, 53.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 679.76, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180240', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2143', '2433773', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 58.3, 53.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.78, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180241', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2144', '2433774', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 58.3, 53.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.78, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180241', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2145', '2433775', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2025-04-03', 110.0, 58.3, 53.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.78, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180241', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2258', '2533467', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.38, 'ARNOLDx2', NULL, '189727', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2259', '2533468', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.38, 'ARNOLDx2', NULL, '189727', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2260', '2533469', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.38, 'ARNOLDx2', NULL, '189727', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2261', '2533470', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2026-01-31', 119.5, 63.335, 53.0, '26A31', 'ex-rum', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.38, 'ARNOLDx2', NULL, '189727', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2262', '2533471', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 673.38, 'ARNOLDx2', NULL, '189727', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2263', '2533472', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-5', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 405.13, 'Rocket Spirit', NULL, '189728', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2264', '2533473', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 405.13, 'Rocket Spirit', NULL, '189728', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2265', '2533474', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 405.13, 'Rocket Spirit', NULL, '189728', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2266', '2533475', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2026-01-31', 119.5, 63.335, 53.0, '26A31', 'ex-rum', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 405.13, 'Rocket Spirit', NULL, '189728', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2267', '2533476', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2026-01-31', 119.5, 63.335, 53.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 405.13, 'Rocket Spirit', NULL, '189728', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2287', '2538769', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 535.5, 'Arnold and Rocket Spirit', NULL, '190218', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2288', '2538770', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 535.5, 'Arnold and Rocket Spirit', NULL, '190218', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2289', '2538771', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 535.5, 'Arnold and Rocket Spirit', NULL, '190218', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2290', '2538772', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 535.5, 'Arnold and Rocket Spirit', NULL, '190218', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2291', '2538773', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 535.5, 'Arnold and Rocket Spirit', NULL, '190218', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2292', '2538774', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 535.5, 'Arnold and Rocket Spirit', NULL, '190218', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2293', '2538775', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 443.54, 'Arnold and Rocket', NULL, '190219', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2294', '2538776', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-02-22', 122.8, 65.084, 53.0, '26B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 443.54, 'Arnold and Rocket', NULL, '190219', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1806', '2025042', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-10-24', 112.5, 59.625, 53.0, '23J24', 'DistillamaxRM some SafeAle B-134', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 161.51, NULL, NULL, '154731', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1807', '2025043', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-10-24', 112.5, 59.625, 53.0, '23J24', 'DistillamaxRM some SafeAle B-134', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 161.5, NULL, NULL, '154731', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1786', '1966338', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-08-19', 121.0, 64.13, 53.0, '23H19', 'Rum DistilamaxRM Rocket Spirit Top Feed Grade A Molasses', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 567.84, 'Rum DistilamaxRM Rocket Spirit Top Feed 30% Dunder GoFermEvoProtect', NULL, '151007', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1787', '1966339', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-08-19', 121.0, 64.13, 53.0, '23H19', 'Rum Grade A Molasses DistilamaxRM Rocket Spirit Top Feed', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 567.84, 'Rum DistilamaxRM Rocket Spirit Top Feed 30% Dunder GoFermEvoProtect', NULL, '151007', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1788', '1966340', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-08-19', 121.0, 64.13, 53.0, '23H19', 'Rum Grade A Molasses DistilamaxRM Rocket Spirit Top Feed', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 567.84, 'Rum DistilamaxRM Rocket Spirit Top Feed 30% Dunder GoFermEvoProtect', NULL, '151007', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2051', '2386378', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 249.56, NULL, NULL, '175744', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1757', '1908779', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-05-05', 110.0, 58.3, 53.0, '23E05', 'randy- temp spike /17 april wash/sour', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146132', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1758', '1908780', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B2', '2023-05-05', 110.0, 58.3, 53.0, '23E05', 'randy- temp spike /17 april wash/sour', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146132', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2128', '2417694', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-02-25', 107.0, 56.71, 53.0, '25B25', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 755.74, 'Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178688', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2129', '2417695', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-02-25', 107.0, 56.71, 53.0, '25B25', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 755.74, 'Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178688', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2130', '2417696', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-02-25', 107.0, 56.71, 53.0, '25B25', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 755.74, 'Ava contains Rocket distilled with Red Star and NEIPA yeast co-innoculation', NULL, '178688', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1508', '1826258', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-3', '2021-11-12', 110.5, 56.315132, 50.96, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1554', '1826297', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2022-02-23', 105.0, 55.65, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Ex Four Roses of barrels DNR smelled "OK" from this batch not my favorite', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1291', '1826090', 'brandy', 'aging', 'Brandy Grape', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-3', '2020-10-20', 106.0, 87.196538, 82.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG dropped by jake', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1714', '1908118', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-16', 116.2, 61.586, 53.0, '23C16', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bubble Caps Down', NULL, '146069', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1715', '1908119', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-16', 116.2, 61.586, 53.0, '23C16', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bubble Caps Down', NULL, '146069', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1716', '1908120', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-16', 116.2, 61.586, 53.0, '23C16', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bubble Caps Down', NULL, '146069', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1717', '1908121', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-16', 116.2, 61.586, 53.0, '23C16', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bubble Caps Down', NULL, '146069', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1718', '1908122', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-16', 116.2, 61.586, 53.0, '23C16', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Bubble Caps Down', NULL, '146069', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1729', '1908312', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-26', 106.9, 56.657, 53.0, '23C26', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146095', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1730', '1908313', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-26', 106.9, 56.657, 53.0, '23C26', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146095', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1731', '1908314', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-B1', '2023-03-26', 106.9, 56.657, 53.0, '23C26', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146095', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1732', '1908315', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2023-03-26', 106.9, 56.657, 53.0, '23C26', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146095', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1733', '1908316', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2023-03-26', 106.9, 56.657, 53.0, '23C26', 'Sauvy Yeast', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '146095', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2029', '2255386', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 52.682, 53.0, '24F26', 'Arnold Rocket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 248.74, 'Bubble Caps down', NULL, '168171', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2030', '2255387', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 52.682, 53.0, '24F26', 'Arnold Rocket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 248.74, 'Bubble Caps down', NULL, '168171', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2031', '2255388', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 52.682, 53.0, '24F26', 'Arnold Rocket Expeat barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 248.74, 'Bubble Caps down', NULL, '168171', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2032', '2255389', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 52.682, 53.0, '24F26', 'Arnold Rocket Vienna and MO19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 248.74, 'Bubble Caps down', NULL, '168171', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2033', '2255390', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 52.682, 53.0, '24F26', 'Arnold Rocket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 248.74, 'Bubble Caps down', NULL, '168171', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2052', '2386379', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 249.56, NULL, NULL, '175744', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2053', '2386380', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 249.56, NULL, NULL, '175744', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2054', '2386381', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 249.56, NULL, NULL, '175744', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2055', '2386382', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 249.56, NULL, NULL, '175744', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2056', '2386383', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 249.56, NULL, NULL, '175744', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2057', '2386437', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket Spirit MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 209.74, 'VFD has been down Rocket Spirit typically between 122-125', NULL, '175754', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2058', '2386438', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket Spirit MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 209.74, 'VFD has been down Rocket Spirit typically between 122-125', NULL, '175754', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2059', '2386439', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 109.8, 58.194, 53.0, '24L11', 'Rocket Spirit MO#19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 209.74, 'VFD has been down Rocket Spirit typically between 122-125', NULL, '175754', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2060', '2386454', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 110.0, 58.3, 53.0, '24L11', '50/50 Rocket Sp/Arnold SP', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1179.67, 'Half Rocket Spirit Half Arnold The Arnold Low Wines used was a combo of Rocket and Arnold Low Wines', NULL, '175756', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2064', '2386518', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2065', '2386519', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2066', '2386520', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2067', '2386521', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-6', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2068', '2386522', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2069', '2392757', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'NEW', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2024-12-21', 115.4, 61.162, 53.0, '24L21', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 342.18, 'The new make was a little hazy but tasted good.', NULL, '176184', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1992', '2223352', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-23', 115.8, 61.374, 53.0, '24E23', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166541', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2118', '2417179', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-22', 115.0, 57.5, 50.0, '25B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 706.24, 'Akira is ArnoldX2 distilled.', NULL, '178637', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2119', '2417180', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-3', '2025-02-22', 115.0, 57.5, 50.0, '25B22', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 706.23, '32 gallons from akira, 18 gallons from penelope Akira is ArnoldX2 distilled. Penelope is Rocket distilled Red Star and DistilaMax GW', NULL, '178637', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1848', '2099440', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-13', 116.3, 61.639, 53.0, '24A13', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.38, 'Rocket Spirit', NULL, '159107', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1849', '2099441', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-2', '2024-01-13', 116.3, 61.639, 53.0, '24A13', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.38, 'Rocket Spirit', NULL, '159107', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2153', '2443335', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-4', '2025-04-29', 108.9, 57.717, 53.0, '25D29', 'Seeded Barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 511.85, NULL, NULL, '181383', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2154', '2443336', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-4', '2025-04-29', 108.9, 57.717, 53.0, '25D29', 'Seeded Barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 511.85, NULL, NULL, '181383', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2155', '2443337', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-4', '2025-04-29', 108.9, 57.717, 53.0, '25D29', 'Seeded Barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 511.85, NULL, NULL, '181383', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2156', '2443338', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-4', '2025-04-29', 108.9, 57.717, 53.0, '25D29', 'Seeded Barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 511.85, NULL, NULL, '181383', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2238', '2529421', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2026-01-11', 115.0, 60.95, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 738.54, '62% Rocket Spirit 38% Arnold Spirit', NULL, '189279', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2239', '2529422', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2026-01-11', 115.0, 60.95, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 738.54, '62% Rocket Spirit 38% Arnold Spirit', NULL, '189279', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2240', '2529423', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2026-01-11', 115.0, 60.95, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 738.54, '62% Rocket Spirit 38% Arnold Spirit', NULL, '189279', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2241', '2529424', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2026-01-11', 115.0, 60.95, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 738.54, '62% Rocket Spirit 38% Arnold Spirit', NULL, '189279', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2242', '2529425', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2026-01-11', 115.0, 60.95, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 738.54, '62% Rocket Spirit 38% Arnold Spirit', NULL, '189279', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2243', '2529426', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2026-01-11', 115.0, 60.95, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 738.51, '62% Rocket Spirit 38% Arnold Spirit', NULL, '189279', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2244', '2529427', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-01-11', 124.0, 65.72, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 955.09, 'Rocket (compare others)', NULL, '189280', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2245', '2529428', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-01-11', 124.0, 65.72, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 955.09, 'Rocket (compare others)', NULL, '189280', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2246', '2529429', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2026-01-11', 124.0, 65.72, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 955.09, 'Rocket (compare others)', NULL, '189280', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2247', '2529430', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2026-01-11', 124.0, 65.72, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 955.09, 'Rocket (compare others)', NULL, '189280', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2248', '2529431', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2026-01-11', 124.0, 65.72, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 955.09, 'Rocket (compare others)', NULL, '189280', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2249', '2529432', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2026-01-11', 120.0, 63.6, 53.0, '26A11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 796.09, 'Arnold (to compare)', NULL, '189281', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2250', '2530013', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-4', '2026-01-14', 121.8, 64.554, 53.0, '26A14', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 769.53, 'Arnold x 2', NULL, '189384', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2251', '2530014', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-5', '2026-01-14', 121.8, 64.554, 53.0, '26A14', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 769.53, 'Arnold x 2', NULL, '189384', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2252', '2530015', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2026-01-14', 121.8, 64.554, 53.0, '26A14', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 769.53, 'Arnold x 2', NULL, '189384', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2253', '2530016', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-5', '2026-01-14', 121.8, 64.554, 53.0, '26A14', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 769.53, 'Arnold x 2', NULL, '189384', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2254', '2530017', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2026-01-14', 121.8, 64.554, 53.0, '26A14', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 769.53, 'Arnold x 2', NULL, '189384', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2255', '2530018', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-4', '2026-01-14', 121.8, 64.554, 53.0, '26A14', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 769.53, 'Arnold x 2', NULL, '189384', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1991', '2223351', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-23', 115.8, 61.374, 53.0, '24E23', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166541', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1828', '2087864', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 119.3, 63.229, 53.0, '23L30A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 2.33, 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', NULL, '158372', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1829', '2087865', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 119.3, 63.229, 53.0, '23L30A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 2.33, 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', NULL, '158372', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2061', '2386515', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2062', '2386516', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2063', '2386517', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-5', '2024-12-11', 110.5, 58.565, 53.0, '24L11', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1185.03, 'The Feint/Tails cut was deeper than normal. Run fast, caps up, no dephleg. Low wines were from a mixture of Arnold and Rocket with an average proof around 60.', NULL, '175770', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1808', '2031580', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-5', '2023-10-29', 115.1, 61.003, 53.0, '23J29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 44.06, 'Whisky Rocket', NULL, '154967', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1809', '2031581', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-5', '2023-10-29', 115.1, 61.003, 53.0, '23J29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 44.06, 'Whisky Rocket', NULL, '154967', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1810', '2031582', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-5', '2023-10-29', 115.1, 61.003, 53.0, '23J29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 44.06, 'Whisky Rocket', NULL, '154967', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1811', '2031583', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-5', '2023-10-29', 115.1, 61.003, 53.0, '23J29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 44.06, 'Whisky Rocket', NULL, '154967', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1830', '2087861', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'NEW', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 122.9, 65.137, 53.0, '23L30B', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', NULL, '158371', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1826', '2087862', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 119.3, 63.229, 53.0, '23L30A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 2.33, 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', NULL, '158372', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1827', '2087863', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-30', 119.3, 63.229, 53.0, '23L30A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 2.33, 'Rocket Spirit post JJ still modification and high preheater for flashing to a lower distillation proof', NULL, '158372', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1989', '2222482', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-22', 109.5, 58.035, 53.0, '24E22', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166499', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1990', '2222483', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-22', 109.5, 58.035, 53.0, '24E22', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '166499', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2132', '2421608', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-03-05', 106.0, 55.12, 52.0, '25C05', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 642.7, 'Distilled by Randy "Old School"', NULL, '179100', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2133', '2421609', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-03-05', 106.0, 55.12, 52.0, '25C05', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 642.7, 'Distilled by Randy "Old School"', NULL, '179100', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2134', '2421610', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-2', '2025-03-05', 106.0, 55.12, 52.0, '25C05', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 642.7, 'Distilled by Randy "Old School"', NULL, '179100', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1777', '1941949', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2023-07-12', 121.4, 64.342, 53.0, '23G12', 'Rocket Single Pass', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 464.81, NULL, NULL, '148903', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1776', '1941950', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2023-07-12', 121.4, 64.342, 53.0, '23G12', 'Rocket Single Pass', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 464.8, NULL, NULL, '148903', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1823', '2086148', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-2', '2023-12-28', 112.4, 59.572, 53.0, '23L28', 'Arnold Rocket Low Cut Johnny Jeffery Method 88.8 proof', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.63, NULL, NULL, '158228', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '722', '1825664', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2018-03-30', 121.0, 62.912559, 51.99, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '890', '1825768', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2018-12-18', 120.0, 63.6, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '891', '1825769', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-3', '2018-12-18', 121.0, 64.13, 53.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '700', '1825642', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2018-02-19', 120.0, 61.212432, 51.01, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '701', '1825643', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-02-19', 120.0, 61.843488, 51.54, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '717', '1825659', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-4', '2018-03-23', 124.5, 65.182174, 52.36, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'single run barreled distilled march 21 2018', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '695', '1825638', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-4', '2018-02-13', 122.4, 64.55376, 52.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '696', '1825639', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-02-13', 122.4, 61.326072, 50.1, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '838', '1825730', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2018-06-21', 121.0, 64.346009, 53.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '839', '1825731', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-06-21', 121.0, 62.753286, 51.86, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '840', '1825732', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'W-1', '2018-06-21', 121.0, 62.355105, 51.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '841', '1825733', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2018-06-30', 121.0, 63.231103, 52.26, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '842', '1825734', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2018-06-30', 121.0, 63.390375, 52.39, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '843', '1825735', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2018-06-30', 121.0, 63.390375, 52.39, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '844', '1825736', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2018-06-30', 121.0, 64.346009, 53.18, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '604', '1825607', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2017-11-21', 119.5, 63.196948, 52.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '605', '1825608', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-3', '2017-11-21', 119.5, 62.961431, 52.69, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '962', '1825836', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2019-04-08', 115.7, 60.529612, 52.32, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Peated (Crisp and Simpsons blend) RedStar/BE-134 ex-bourbon', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '963', '1825837', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2019-04-08', 117.0, 60.843545, 52.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'heavy peat a touch of crisp and simposons', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '964', '1825838', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2019-04-17', 115.0, 60.263082, 52.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red star be-134 c1-195 c2-155 Peated (Baird) RedStar/BE-134 in ex-bourbon Column distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '965', '1825839', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-6', '2019-04-17', 115.0, 60.563646, 52.66, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red star be-134', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '966', '1825840', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-4', '2019-04-17', 115.0, 59.812236, 52.01, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red star be-134', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '967', '1825841', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-2', '2019-04-17', 115.0, 61.765902, 53.71, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red star be-134', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '950', '1825828', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2019-03-26', 113.0, 60.257725, 53.33, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '946', '1825824', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-5', '2019-03-26', 113.0, 59.963066, 53.06, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '927', '1825805', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2019-02-21', 120.0, 64.209948, 53.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '894', '1825772', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'H-6', '2018-12-21', 125.0, 65.48355, 52.39, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '730', '1825671', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2018-04-12', 116.8, 60.878589, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '731', '1825673', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2018-04-12', 116.8, 61.490435, 52.65, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '732', '1825674', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-4', '2018-04-12', 116.8, 60.878589, 52.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '733', '1825675', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2018-04-12', 116.8, 61.337473, 52.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '734', '1825676', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-1', '2018-04-12', 116.8, 60.266744, 51.6, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '969', '1825843', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2019-04-17', 120.0, 63.263364, 52.72, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '40% Red Star & BE 134/60% red star only', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '970', '1825844', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'J-4', '2019-04-17', 123.0, 64.270206, 52.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '100% red star only Peated (Baird) RedStar in ex-bourbon Column distilled', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '825', '1825721', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-18', 119.5, 62.80442, 52.56, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '826', '1825722', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-18', 119.5, 62.333387, 52.16, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '827', '1825723', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2018-06-18', 119.5, 62.333387, 52.16, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '828', '1825724', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-18', 116.5, 61.313764, 52.63, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '829', '1825725', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-2', '2018-06-18', 119.5, 62.176376, 52.03, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '830', '1825726', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2018-06-18', 119.5, 61.705343, 51.64, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '836', '1825728', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2018-06-21', 121.0, 64.107101, 52.98, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '837', '1825729', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2018-06-21', 121.0, 62.355105, 51.53, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '928', '1825806', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2019-02-21', 120.0, 62.632308, 52.19, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '929', '1825807', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-02-21', 120.0, 64.209948, 53.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '930', '1825808', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-02-21', 120.0, 63.1056, 52.59, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '931', '1825809', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2019-02-21', 120.0, 62.947836, 52.46, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '932', '1825810', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-2', '2019-02-21', 120.0, 63.89442, 53.25, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '933', '1825811', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-01', 117.0, 61.30332, 52.4, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'heaven Hill cl-196', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '934', '1825812', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-01', 117.0, 60.537029, 51.74, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'c1-196 c2-155', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '935', '1825813', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-01', 117.0, 62.835903, 53.71, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'c1-196 c2-155', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '936', '1825814', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-01', 117.0, 61.763095, 52.79, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'c1-196 c2-155', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '937', '1825815', 'whiskey', 'aging', 'Whisky Single Malt', '53g Used Bourbon', 53, 'USED', '53g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'K-3', '2019-03-01', 117.0, 61.150062, 52.27, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'c1-196 c2-155', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;


COMMIT;
