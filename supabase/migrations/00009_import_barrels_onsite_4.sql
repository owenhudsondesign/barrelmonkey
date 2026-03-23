-- Barrel import: onsite part 4 (188 barrels)
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
  '1296', '1826095', 'brandy', 'aging', 'Brandy Grape', '59g Used Grape Brandy', 59, 'USED', '59g Used Grape Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2020-10-28', 105.6, 87.196538, 82.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'using the ORIGINAL PG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2229', '2525486', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-20', 103.3, 60.947, 59.0, '25L20', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 729.08, 'Straight from Arnold', NULL, '188896', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2083', '2399497', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.7, 66.493, 59.0, '25A10', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 940.05, NULL, NULL, '176843', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2231', '2525648', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-21', 107.7, 63.543, 59.0, '25L21', 'Rocket Single', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 754.37, 'Wine barrel that was STR, filled with rum, dumped and filled with MO#19 Rocket', NULL, '188898', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2233', '2525650', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-5', '2025-12-21', 107.7, 63.543, 59.0, '25L21', 'Double Arnold', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 702.15, 'STR wine previously held Rum. Double Arnold with a little Rocket new make redistilled. Dirty Dean', NULL, '188900', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2234', '2525651', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 53, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2025-12-21', 113.0, 66.67, 59.0, '25L21', '3R:2A', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 796.64, '3partsRocket(1):2partsArnold(x2) Fresh rum dump', NULL, '188901', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2235', '2525652', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 53, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-5', '2025-12-21', 113.0, 66.67, 59.0, '25L21', '3R:2A', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 796.64, '3partsRocket(1):2partsArnold(x2) Fresh rum dump', NULL, '188901', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1863', '2103879', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 53, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-3', '2024-01-18', 121.9, 64.607, 53.0, '24A18B', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '159337', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '795', '1825706', 'rum', 'aging', 'Rum FdC 7yr Dark', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'Q-2', '2011-05-14', 113.5, 67.965094, 59.88, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2077', '2399383', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Rum', 53, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 66.375, 59.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 339.26, NULL, NULL, '176828', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1431', '1826203', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2021-08-19', 110.2, 63.592761, 57.71, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1432', '1826204', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-2', '2021-08-19', 110.2, 61.874038, 56.15, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '525', '1825546', 'rum', 'aging', 'Rum Nantucket', '59g Used Rum', 59, 'USED', '59g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-2', '2017-06-07', 114.0, 79.8, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'leaking sherry butt- transfer to nadalier barrel formerly holding 524 rum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2269', '2534506', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2026-02-05', 116.0, 63.8, 55.0, '26B05', 'segal buyback- re-toasted', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '189824', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2009-09-21'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2270', '2534507', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2026-02-05', 116.0, 61.48, 53.0, '26B05', 'segal buyback- re-toasted', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '189824', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2009-09-21'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2078', '2399384', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'X-1', '2025-01-10', 112.5, 66.375, 59.0, '25A10', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 339.26, 'See additional notes in WS Is this better or worse new make? Look for GC tests for this new make to compare down the road.; Had some spirit from Distillation Run: ID = 522608 12/26/2024 Consume 371.00 WG / 1404.388 L from fermenter ''WC Nowhere'' Spirit underwent a long fermentation and the bacterial influence was pronounced. Only 16 gallons of it into a 59 gallon barrel with a more normal ferment. Is this better or worse new make? Did the extra acids and congeners affect in a positive way?', NULL, '176828', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2001', '2235162', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2002', '2235163', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2003', '2235164', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2004', '2235165', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2005', '2235166', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2006', '2235167', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1322', '1826117', 'whiskey', 'aging', 'Whisky Specialty', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2021-01-04', 121.6, 70.000268, 57.57, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'RTWB previously 867', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1323', '1826118', 'whiskey', 'aging', 'Whisky Specialty', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2021-01-04', 121.6, 69.679901, 57.3, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'RTWB previously 867', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1999', '2235160', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2271', '2534584', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2026-02-06', 123.6, 65.508, 53.0, '26B06', 'vatted ketterer and other barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '189836', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2009-09-22'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2272', '2534585', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2026-02-06', 123.6, 64.272, 52.0, '26B06', 'vatted ketterer and other barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '189836', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2009-09-22'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2000', '2235161', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-4', '2024-06-05', 102.0, 60.18, 59.0, '24F05', '25th re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '167164', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2012', '2246034', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 60.475, 59.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.32, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1625', '1826362', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2022-03-29', 101.0, 59.59, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Vienna Malt grown in the NorthEast Freshly dumped barrels from an eight year Notch bottling', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2295', '2542099', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-6', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2296', '2542100', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-6', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2297', '2542101', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2298', '2542102', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2299', '2542103', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'G-6', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2300', '2542104', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2301', '2542105', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2302', '2542106', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '59g Used Single Malt', 53, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2026-03-11', 108.5, 57.505, 53.0, '26C11', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 65.68, 'SRT smw and rum', NULL, '190688', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2203', '2488070', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2025-08-21', 112.0, 62.72, 56.0, '25H21', '8YO nip blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 8yr Single Malt 6/750ml 96PF', '185394', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-05-10'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2204', '2488071', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2025-08-21', 112.0, 62.72, 56.0, '25H21', '8YO nip blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 8yr Single Malt 6/750ml 96PF', '185394', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-05-10'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2205', '2488072', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2025-08-21', 112.0, 62.72, 56.0, '25H21', '8YO nip blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 8yr Single Malt 6/750ml 96PF', '185394', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-05-10'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2206', '2488073', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Single Malt', 59, 'USED', '59g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'V-5', '2025-08-21', 112.0, 62.72, 56.0, '25H21', '8YO nip blend re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 8yr Single Malt 6/750ml 96PF', '185394', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-05-10'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1248', '1826051', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-3', '2020-07-13', 111.2, 63.949585, 57.51, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'merlot', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1153', '1825968', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-4', '2020-01-23', 110.0, 64.9, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1449', '1826219', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2021-10-14', 100.7, 60.231641, 59.81, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1450', '1826220', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2021-10-14', 100.7, 60.490701, 60.07, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1163', '1825978', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2020-02-09', 130.0, 66.458496, 51.12, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1164', '1825979', 'brandy', 'aging', 'Brandy Grape', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'AA-2', '2020-02-09', 130.0, 75.111946, 57.78, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'red wine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1443', '1826214', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine', 59, 'USED', '59g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-4', '2013-09-15', 96.8, 44.395752, 45.86, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1393', '1826178', 'whiskey', 'aging', 'Whisky Single Malt', '59g Used Wine Fortified', 59, 'USED', '59g Used Wine Fortified', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-5', '2021-06-16', 114.0, 68.152324, 59.78, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '15% Gambrinus Honey Malt, 85% Maris Otter No. 19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1349', '1826142', 'whiskey', 'aging', 'Whisky Single Malt', '60g Other', 60, 'USED', '60g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2021-03-12', 109.4, 64.77749, 59.21, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1422', '1826194', 'whiskey', 'aging', 'Whisky Single Malt', '60g Other', 60, 'USED', '60g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2021-08-10', 111.2, 65.975138, 59.33, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lower feed on rocket strip', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1423', '1826195', 'whiskey', 'aging', 'Whisky Single Malt', '60g Other', 60, 'USED', '60g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2021-08-10', 111.2, 65.685773, 59.07, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1643', '1826372', 'brandy', 'aging', 'Brandy Grape', '60g Other', 60, 'USED', '60g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-4', '2022-07-15', 111.5, 66.9, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1569', '1826309', 'whiskey', 'aging', 'Whisky Single Malt', '60g Used Bourbon', 60, 'USED', '60g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2022-03-07', 104.0, 62.4, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(Prev 1416) Red Star & SO4 Yeast', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1570', '1826310', 'whiskey', 'aging', 'Whisky Single Malt', '60g Used Bourbon', 60, 'USED', '60g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2022-03-07', 104.0, 62.4, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(Prev 1402) Red Star & SO4 Yeast', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1567', '1826307', 'whiskey', 'aging', 'Whisky Single Malt', '60g Used Bourbon', 60, 'USED', '60g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-4', '2022-03-07', 104.0, 62.4, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '(Prev 1358) Red Star & SO4 Yeast', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2149', '2433779', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Bourbon', 60, 'USED', '60g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-04-03', 110.0, 66.0, 60.0, '25D03', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 762.78, 'All MO#19. Majority is Red Star/SO4. Long Ferment. Mostly ArnoldX2', NULL, '180244', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2280', '2536854', 'whiskey', 'aging', 'Whisky Single Malt', '60g Used Bourbon', 60, 'USED', '60g Used Bourbon', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-02-13', 125.8, 70.448, 56.0, '26B13', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '190019', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2008-06-10'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1189', '1825999', 'brandy', 'aging', 'Brandy Grape', '60g Used Wine', 60, 'USED', '60g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2020-04-07', 108.0, 64.8, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1190', '1826000', 'brandy', 'aging', 'Brandy Grape', '60g Used Wine', 60, 'USED', '60g Used Wine', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-1', '2020-04-07', 108.0, 64.8, 60.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'cpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2027', '2254916', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 59.64, 60.0, '24F26', 'Arnold Rocket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 281.59, 'SRT Rum/Rum/Rum/Rum 5th use', NULL, '168141', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2028', '2254917', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-2', '2024-06-26', 99.4, 59.64, 60.0, '24F26', 'Arnold Rocket', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 281.59, 'SRT Rum/Rum/Rum/Rum 5th use', NULL, '168141', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1878', '2164184', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2024-03-08', 110.9, 66.54, 60.0, '24C08B', 'Rocket Rocket Spirit Maris Otter STR Chard Cider', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 3.47, 'Rocket Rocket Spirit Maris Otter STR Chard Cider', NULL, '162766', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2071', '2392841', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2024-12-21', 115.8, 69.48, 60.0, '24L21', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1154.75, 'A touch of spirit with a "low" cut, but the rest distilled caps down. The Low Wines were a mix of rocket and Arnold.', NULL, '176186', NULL, NULL, NULL, 34, 'REC-R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2072', '2392842', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2024-12-21', 107.8, 64.68, 60.0, '24L21', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit between 125 - 127 distillation proof. VFD has been down so more of a manual run', NULL, '176187', NULL, NULL, NULL, 34, 'REC-R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1803', '2011655', 'rum', 'aging', 'Rum Nantucket Molasses Grade A', '60g Used Wine Scraped ReToasted', 60, 'NEW', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2023-10-07', 116.9, 70.14, 60.0, '23J08', 'Rocket Spirit SafAle BE-134', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 56.06, 'DistillaMaxRM & SafAle BE-134', NULL, '153889', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1411', '1826186', 'whiskey', 'aging', 'Whisky Single Malt', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'D-2', '2021-07-14', 107.1, 64.359217, 60.09, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1412', '1826187', 'whiskey', 'aging', 'Whisky Single Malt', '60g Used Wine Scraped ReToasted', 60, 'USED', '60g Used Wine Scraped ReToasted', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-2', '2021-07-14', 107.7, 66.020962, 61.3, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1350', '1826143', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2021-03-12', 109.4, 75.289627, 68.82, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1351', '1826144', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-3', '2021-03-12', 109.4, 69.607391, 63.63, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2281', '2536855', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-02-13', 125.8, 70.448, 56.0, '26B13', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '190020', NULL, NULL, NULL, 2, 'REC', NULL, NULL, NULL, '2008-06-10'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2278', '2536601', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'C-5', '2026-02-12', 126.0, 48.4848, 38.48, '26B12', '26B12', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '189989', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, '2009-04-30'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2151', '2443237', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2025-04-29', 99.5, 62.685, 63.0, '25D29', '25th bottling re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '181366', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2021-04-27'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2152', '2443238', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2025-04-29', 99.5, 62.685, 63.0, '25D29', '25th bottling re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '181366', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2021-04-27'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1846', '2098151', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2024-01-12', 119.8, 69.484, 58.0, '24A12', '15yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '159035', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2008-12-16'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1847', '2098152', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-3', '2024-01-12', 119.8, 69.484, 58.0, '24A12', '15yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '159035', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2008-12-16'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2150', '2442190', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2025-04-25', 120.0, 54.0, 45.0, '25D25', 'hungerpiller barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '181250', 9, 'great fruit &amp; lovely texture', NULL, 0, NULL, NULL, NULL, NULL, '2009-10-01'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2225', '2510793', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), NULL, '2025-10-29', 121.2, 63.024, 52.0, '25J29', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '187538', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2009-03-01'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2038', '2407209', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2024-07-23', 117.8, 75.392, 64.0, '24G23', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '177517', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-10-23'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2039', '2407210', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2024-07-23', 117.8, 75.392, 64.0, '24G23', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '177517', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-10-23'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2040', '2407211', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2024-07-23', 117.8, 75.392, 64.0, '24G23', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '177517', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-10-23'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2041', '2407212', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2024-07-23', 117.8, 75.392, 64.0, '24G23', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '177517', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-10-23'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2042', '2407213', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'NEW', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-5', '2024-07-23', 117.8, 75.392, 64.0, '24G23', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, '177517', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-10-23'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2256', '2533465', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-4', '2026-01-31', 119.5, 78.87, 66.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 838.55, 'Arnoldx2 Used sherry. 2nd fill?', NULL, '189725', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2257', '2533466', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-6', '2026-01-31', 119.5, 78.87, 66.0, '26A31', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 504.5, 'Rocket Spirit ExSherry 2ndFill', NULL, '189726', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2073', '2392843', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2024-12-21', 115.8, 76.428, 66.0, '24L21', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 1270.22, 'Ex-Oloroso Sherry barrel. CaskNola? Arnold spirit from a combo of Arnold and Rocket Low Wines. This combination lowered the low wine abc to 30%', NULL, '176188', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2074', '2392844', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'M-6', '2024-12-21', 107.7, 71.082, 66.0, '24L21', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit between 125 - 127 distillation proof. VFD has been down so more of a manual run', NULL, '176189', NULL, NULL, NULL, 32, 'R', NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1985', '2222478', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'E-1', '2024-05-22', 97.0, 64.02, 66.0, '24E22', 'Ex-Sherry', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 0.43, 'Ex-Sherry Casknolia Oloroso', NULL, '166496', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1869', '2137985', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-02-15', 108.9, 71.874, 66.0, '24B15A', 'Rocket Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 5.31, 'Rocket Arnold Spirit Maris Otter 19 SO4 Red Star Oloroso Sherry Casknolia', NULL, '161008', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1868', '2137810', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-02-15', 113.8, 75.108, 66.0, '24B15', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit Maris Otter 19 SO4 Red Star Oloroso Sherry Casknolia', NULL, '161000', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1956', '2190714', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2024-04-12', 124.0, 81.84, 66.0, '24D12', 'frazer barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '164335', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2009-06-01'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1957', '2190715', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-5', '2024-04-12', 124.0, 81.84, 66.0, '24D12', 'frazer barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '164335', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2009-06-01'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1780', '1960095', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2023-08-09', 133.0, 87.78, 66.0, '23H09', '12yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'former barrels 10001 & 10002', 'Notch 12yr Single Malt 6/750ml 96PF', '150463', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2010-09-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1781', '1960096', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'N-5', '2023-08-09', 133.0, 87.78, 66.0, '23H09', '12yo notch re-barrel', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'former barrels 10001 & 10002', 'Notch 12yr Single Malt 6/750ml 96PF', '150463', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2010-09-03'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2037', '2268207', 'whiskey', 'aging', 'Whisky Single Malt', '66g Other', 66, 'USED', '66g Other', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'B-3', '2024-07-18', 112.5, 74.25, 66.0, '24G18', 'DiModico barrels', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, 'Notch 15yr Single Malt 6/750ml 96PF', '169192', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2007-07-01'
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '697', '1825640', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used', 70, 'USED', '70g Used', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2018-02-13', 122.4, 83.597119, 68.3, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '883', '1825761', 'rum', 'aging', 'Rum Nantucket Molasses', '70g Used', 70, 'USED', '70g Used', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'P-4', '2018-10-16', 120.0, 74.306844, 61.92, 'Nantucket Molasses', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '100% molases c1-190-9194 c2-160 flor de Cana- Our Rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1157', '1825972', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used', 70, 'USED', '70g Used', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-29', 114.0, 79.8, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1158', '1825973', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used', 70, 'USED', '70g Used', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-29', 114.0, 71.57482, 62.78, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1159', '1825974', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used', 70, 'USED', '70g Used', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-01-29', 114.0, 79.8, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '520', '1825543', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Rum', 70, 'USED', '70g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-2', '2017-06-01', 125.0, 87.5, 70.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'refill sherry from John Ramsay previously used 5 years for rum', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1227', '1826035', 'rum', 'aging', 'Rum Hurricane Blend', '70g Used Rum', 70, 'USED', '70g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-06-15', 100.4, 62.886348, 62.64, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'rum-rebarrel from bottling blend 13 june 2020 howard hawk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1228', '1826036', 'rum', 'aging', 'Rum Hurricane Blend', '70g Used Rum', 70, 'USED', '70g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-A2', '2020-06-15', 100.4, 66.63112, 66.37, 'Rum Blends', NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'rum-rebarrel from bottling blend 13 june 2020 howard hawk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '623', '1825623', 'whiskey', 'aging', 'Whisky Specialty', '70g Used Rum', 70, 'USED', '70g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'I-1', '2017-12-29', 124.8, 86.574222, 69.37, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'lambic whisky', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2013', '2246035', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '70g Used Single Malt', 53, 'USED', '70g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-1', '2024-06-15', 102.5, 71.75, 70.0, '24F15', 'Maris Otter 19', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 77.49, 'Arnold Spirit run Rocket Stripping run Hybrid plates and bubble caps not engaged. Cut around 100 proof', NULL, '167632', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '721', '1825663', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Single Malt', 70, 'USED', '70g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'T-5', '2018-03-30', 121.0, 83.140141, 68.71, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, '2nd use- from John Ramsay', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1167', '1825982', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Single Malt', 70, 'USED', '70g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-1', '2020-02-10', 104.2, 68.477104, 65.72, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1168', '1825983', 'whiskey', 'aging', 'Whisky Single Malt', '70g Used Single Malt', 70, 'USED', '70g Used Single Malt', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'A-3', '2020-02-10', 104.2, 68.477104, 65.72, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, 'buttery- 9/17/24', NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2097', '1826422', 'brandy', 'aging', 'Brandy Grape', '59g Used Fisher Brandy', 59, 'USED', '59g Used Fisher Brandy', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'BB-2', '2016-12-31', 135.8, 80.122, 59.0, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'made up date- Fisher Brandy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1437', '1826209', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie American Oak SHT TH', 59, 'NEW', '59g Nadalie American Oak SHT TH', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2021-09-01', 109.4, 63.498987, 58.04, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1438', '1826210', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie American Oak SHT TH', 59, 'NEW', '59g Nadalie American Oak SHT TH', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'U-1', '2021-09-01', 109.4, 63.641043, 58.17, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1447', '1826217', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie American Oak SHT TH', 59, 'NEW', '59g Nadalie American Oak SHT TH', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'F-2', '2021-10-05', 112.0, 67.094496, 59.91, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1448', '1826218', 'whiskey', 'aging', 'Whisky Single Malt', '59g Nadalie American Oak SHT TH', 59, 'NEW', '59g Nadalie American Oak SHT TH', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'L-4', '2021-10-05', 112.0, 64.906632, 57.95, NULL, NULL, 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1887', '1844964', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1886', '1844965', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1884', '1844966', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1885', '1844967', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1950', '1844953', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1954', '1844954', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1953', '1844955', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1911', '1844956', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1912', '1844957', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1914', '1844958', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1913', '1844959', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1891', '1844960', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1890', '1844961', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1889', '1844962', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1888', '1844963', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1932', '1844968', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1933', '1844969', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1934', '1844970', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1949', '1844996', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1948', '1844997', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1951', '1844998', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1952', '1844999', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1900', '1845000', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1899', '1845001', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1902', '1845002', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1935', '1844971', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1927', '1844972', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1929', '1844973', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1931', '1844974', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1930', '1844975', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1939', '1844976', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1938', '1844977', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1936', '1844978', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1937', '1844979', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1910', '1844980', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1909', '1844981', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1919', '1844982', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1908', '1844983', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A/22G28B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1942', '1844984', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1946', '1844985', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1941', '1844986', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1940', '1844987', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1922', '1844988', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1923', '1844989', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1920', '1844990', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1921', '1844991', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1947', '1844992', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1945', '1844993', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1943', '1844994', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1944', '1844995', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G27D/22G28A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1901', '1845003', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1898', '1845004', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1907', '1845005', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1897', '1845006', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1905', '1845007', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1896', '1845008', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1906', '1845009', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1903', '1845010', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1904', '1845011', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1895', '1845012', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1894', '1845013', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1892', '1845014', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1893', '1845015', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1915', '1845016', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1918', '1845017', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1916', '1845018', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1917', '1845019', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C1', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1924', '1845020', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1925', '1845021', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-30', 110.0, 58.3, 53.0, '22G27A/22G27B/22G27C/22G27D (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1926', '1845022', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-30', 110.0, 58.3, 53.0, '22G26D/22G27A/22G27B (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1928', '1844951', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-D2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1955', '1844952', 'bourbon', 'aging', 'Whisky Bourbon Southern Distilling', 'NEW WVGBC Toast Light Char #3 53g', 53, 'NEW', 'NEW WVGBC Toast Light Char #3 53g', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'GH-C2', '2022-07-31', 110.0, 58.3, 53.0, '22G28C/22G28D/22G29A (085)', NULL, 'Southern Distilling', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '2084', '2399498', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Rum', 59, 'USED', '60g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'S-5', '2025-01-10', 112.7, 67.62, 60.0, '25A10', 'Arnold Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, 955.98, NULL, NULL, '176843', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

INSERT INTO barrels (
  barrel_number, ws_barrel_id, spirit_type, status, product_name,
  barrel_type, size_gal, new_or_used, cooperage,
  rackhouse_id,
  slot, fill_date, entry_pf, fill_proof_gal, fill_wine_gal,
  lot_number, internal_lot_name, filling_dsp, current_dsp,
  location_type, offsite_facility, dollar_value, notes,
  expected_use, ws_filling_run_id, quality_rating, observation_notes,
  owner_name, ttb_characteristic_flags, ttb_characteristic_flags_str,
  net_weight, gross_weight, tare_weight, solera_age_date
) VALUES (
  '1867', '2113131', 'whiskey', 'aging', 'Whisky Crisp Maris Otter Malt 19', '60g Used Rum', 60, 'USED', '60g Used Rum', (SELECT id FROM rackhouses WHERE name = 'Nantucket' LIMIT 1), 'O-4', '2024-01-27', 107.5, 64.5, 60.0, '24A27A', 'Rocket Spirit', 'Triple Eight Distillery LLC', 'Triple Eight Distillery LLC', 'onsite', NULL, NULL, 'Rocket Spirit', NULL, '159797', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL
) ON CONFLICT (barrel_number) DO NOTHING;

-- Southern Distilling Offsite: 143 barrels


COMMIT;
