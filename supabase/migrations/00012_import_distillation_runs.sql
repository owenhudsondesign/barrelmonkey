-- ============================================================
-- BARRELMONKEY — Import Distillation Runs
-- 355 rows from WhiskeySystems export
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    364, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-03-10T14:15:00', '2026-03-10', 'Storage',
    0, 0, 115.4574, 0, 0,
    115.4574, 115.4574, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    363, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-03-10T14:13:00', '2026-03-10', NULL,
    0, 0, 0, 0, 19.526,
    19.526, 19.526, 'Rocket Low Wines', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    362, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-03-08T17:58:00', '2026-03-08', 'Storage',
    0, 0, 125.50647, 0, 0,
    125.50647, 125.50647, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    361, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-03-07T17:52:00', '2026-03-07', 'Storage',
    0, 0, 127.7858, 0, 0,
    127.7858, 127.7858, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    360, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-03-06T18:56:00', '2026-03-06', NULL,
    0, 0, 0, 0, 85.191,
    85.191, 85.191, 'Rocket Low Wines Strip', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    359, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-03-06T18:50:00', '2026-03-06', 'Storage',
    0, 0, 118.41744, 0, 0,
    118.41744, 118.41744, 'Arnold spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    358, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-03-05T19:35:00', '2026-03-05', NULL,
    0, 0, 0, 0, 44.1612,
    44.1612, 44.1612, 'Rocket Low Wine', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    357, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-03-05T17:35:00', '2026-03-05', 'Storage',
    0, 0, 105.60128, 0, 0,
    105.60128, 105.60128, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    356, NULL, 'whiskey'::spirit_type, 'Rocket', 'strip',
    '2026-03-05T17:21:00', '2026-03-05', NULL,
    0, 0, 0, 0, 75.0766,
    75.0766, 75.0766, 'Rocket Strip', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    355, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-03-04T17:19:00', '2026-03-04', NULL,
    0, 0, 0, 0, 84.693,
    84.693, 84.693, 'Rocket Low Wine strip', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    354, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-03-01T19:18:00', '2026-03-01', NULL,
    0, 0, 0, 0, 57.4236,
    57.4236, 57.4236, 'Rocket Strip Low Wines LW', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    353, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-02-28T19:11:00', '2026-02-28', NULL,
    0, 0, 0, 0, 79.31,
    79.31, 79.31, 'Rocket Strip Low Wine', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    352, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-02-22T17:14:00', '2026-02-22', NULL,
    0, 0, 0, 0, 73.304,
    73.304, 73.304, 'Rocket Low Wines', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    351, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-02-20T15:13:00', '2026-02-20', NULL,
    0, 0, 0, 0, 82.473,
    82.473, 82.473, 'Rocket Low Wine', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    350, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-02-17T16:44:00', '2026-02-17', 'Storage',
    0, 0, 105.83595, 0, 0,
    105.83595, 105.83595, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    349, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-02-09T15:49:00', '2026-02-09', 'Storage',
    0, 0, 107.2953, 0, 0,
    107.2953, 107.2953, 'Arnold Spirit x 2', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    348, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-21T17:03:00', '2026-01-21', 'Storage',
    0, 0, 60.0237, 0, 0,
    60.0237, 60.0237, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    347, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-21T15:59:00', '2026-01-21', 'Storage',
    0, 0, 94.9053, 0, 0,
    94.9053, 94.9053, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    346, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-20T17:14:00', '2026-01-20', 'Storage',
    0, 0, 99.4112, 0, 0,
    99.4112, 99.4112, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    345, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-20T17:05:00', '2026-01-20', 'Storage',
    0, 0, 82.05, 0, 0,
    82.05, 82.05, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    344, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-19T09:32:00', '2026-01-19', 'Storage',
    0, 0, 80.8414, 0, 0,
    80.8414, 80.8414, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    343, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-18T09:24:00', '2026-01-18', 'Storage',
    0, 0, 42.5, 0, 0,
    42.5, 42.5, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    342, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-19T16:36:00', '2026-01-19', 'Storage',
    0, 0, 75.12714, 0, 0,
    75.12714, 75.12714, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    341, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-18T16:32:00', '2026-01-18', 'Storage',
    0, 0, 76.68876, 0, 0,
    76.68876, 76.68876, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    340, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-16T17:27:00', '2026-01-16', 'Storage',
    0, 0, 125.0832, 0, 0,
    125.0832, 125.0832, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    339, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-16T16:44:00', '2026-01-16', 'Storage',
    0, 0, 82.16, 0, 0,
    82.16, 82.16, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    338, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-15T16:10:00', '2026-01-15', 'Storage',
    0, 0, 121.8, 0, 0,
    121.8, 121.8, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    337, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-14T13:01:00', '2026-01-14', 'Storage',
    0, 0, 71.16525, 0, 0,
    71.16525, 71.16525, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    336, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-13T16:11:00', '2026-01-13', 'Storage',
    0, 0, 78.87217, 0, 0,
    78.87217, 78.87217, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    335, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-11T16:14:00', '2026-01-11', 'Storage',
    0, 0, 61.3272, 0, 0,
    61.3272, 61.3272, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    334, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-11T16:10:00', '2026-01-11', 'Storage',
    0, 0, 89.38755, 0, 0,
    89.38755, 89.38755, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    333, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2026-01-10T11:56:00', '2026-01-10', 'Storage',
    0, 0, 139.748, 0, 0,
    139.748, 139.748, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    332, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2026-01-08T15:45:00', '2026-01-08', NULL,
    0, 0, 0, 0, 70.62,
    70.62, 70.62, 'Rocket Burp Low Wines', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    331, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-07T17:04:00', '2026-01-07', 'Storage',
    0, 0, 96.72, 0, 0,
    96.72, 96.72, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    330, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-06T16:58:00', '2026-01-06', 'Storage',
    0, 0, 98.56, 0, 0,
    98.56, 98.56, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    329, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2026-01-05T16:22:00', '2026-01-05', 'Storage',
    0, 0, 99.864, 0, 0,
    99.864, 99.864, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    328, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-20T16:54:00', '2025-12-20', 'Storage',
    0, 0, 88.8, 0, 0,
    88.8, 88.8, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    327, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-19T17:45:00', '2025-12-19', 'Storage',
    0, 0, 77.976, 0, 0,
    77.976, 77.976, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    326, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-19T17:20:00', '2025-12-19', 'Storage',
    0, 0, 134.724, 0, 0,
    134.724, 134.724, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    325, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-17T11:53:00', '2025-12-17', 'Storage',
    0, 0, 15.25, 0, 0,
    15.25, 15.25, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    324, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-17T11:48:00', '2025-12-17', 'Storage',
    0, 0, 135.5738, 0, 0,
    135.5738, 135.5738, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    323, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-16T11:29:00', '2025-12-16', 'Storage',
    0, 0, 66.582, 0, 0,
    66.582, 66.582, 'Rocket Spirit
Problems', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    322, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-13T15:03:00', '2025-12-13', 'Storage',
    0, 0, 79.0832, 0, 0,
    79.0832, 79.0832, 'Rocket Spirit

Experienced loss due to heat issues.', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    321, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-13T14:41:00', '2025-12-13', 'Storage',
    0, 0, 80.46, 0, 0,
    80.46, 80.46, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    320, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-11T14:44:00', '2025-12-11', 'Storage',
    0, 0, 90.3303, 0, 0,
    90.3303, 90.3303, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    319, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-10T15:08:00', '2025-12-10', 'Storage',
    0, 0, 39.9517, 0, 0,
    39.9517, 39.9517, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    318, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-10T15:06:00', '2025-12-10', 'Storage',
    0, 0, 50.9243, 0, 0,
    50.9243, 50.9243, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    317, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-09T09:32:00', '2025-12-09', 'Storage',
    0, 0, 51.86685, 0, 0,
    51.86685, 51.86685, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    316, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-09T09:26:00', '2025-12-09', 'Storage',
    0, 0, 115.056, 0, 0,
    115.056, 115.056, 'Rocket Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    315, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-04T15:30:00', '2025-12-04', 'Storage',
    0, 0, 99.72288, 0, 0,
    99.72288, 99.72288, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    314, NULL, 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-12-03T11:33:00', '2025-12-03', 'Storage',
    0, 0, 116.025, 0, 0,
    116.025, 116.025, 'Rocket Spirit Post Column work', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    313, NULL, 'whiskey'::spirit_type, 'Arnold', 'spirit',
    '2025-12-03T11:02:00', '2025-12-03', 'Storage',
    0, 0, 77.80592, 0, 0,
    77.80592, 77.80592, 'Arnold Spirit', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    312, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-22T10:39:00', '2025-11-22', 'Storage',
    0, 0, 112.6389, 0, 0,
    112.6389, 112.6389, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    311, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-21T17:53:00', '2025-11-21', NULL,
    0, 0, 0, 0, 133.7493,
    133.7493, 133.7493, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    310, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-19T17:51:00', '2025-11-19', NULL,
    0, 0, 0, 0, 70.5664,
    70.5664, 70.5664, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    309, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-18T15:24:00', '2025-11-18', 'Storage',
    0, 0, 91.92, 0, 0,
    91.92, 91.92, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    308, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-14T18:30:00', '2025-11-14', NULL,
    0, 0, 0, 0, 70.4186,
    70.4186, 70.4186, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    307, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-13T18:22:00', '2025-11-13', NULL,
    0, 0, 0, 0, 77.0408,
    77.0408, 77.0408, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    306, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-06T17:47:00', '2025-11-06', NULL,
    0, 0, 0, 0, 32.35725,
    32.35725, 32.35725, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    304, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-05T17:27:00', '2025-11-05', NULL,
    0, 0, 0, 0, 45.198,
    45.198, 45.198, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    303, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-11-04T17:25:00', '2025-11-04', NULL,
    0, 0, 0, 0, 45.12768,
    45.12768, 45.12768, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    302, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-31T10:39:00', '2025-10-31', NULL,
    0, 0, 0, 0, 43.20457,
    43.20457, 43.20457, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    301, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-30T12:33:00', '2025-10-30', NULL,
    0, 0, 0, 0, 41.38752,
    41.38752, 41.38752, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    300, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-29T12:30:00', '2025-10-29', NULL,
    0, 0, 0, 0, 41.04958,
    41.04958, 41.04958, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    299, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-28T12:27:00', '2025-10-28', NULL,
    0, 0, 0, 0, 42.30508,
    42.30508, 42.30508, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    298, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-25T14:13:00', '2025-10-25', NULL,
    0, 0, 0, 0, 23.50595,
    23.50595, 23.50595, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    297, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-25T14:04:00', '2025-10-25', NULL,
    0, 0, 0, 0, 44.77938,
    44.77938, 44.77938, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    295, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-24T13:54:00', '2025-10-24', NULL,
    0, 0, 0, 0, 42.91378,
    42.91378, 42.91378, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    294, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-23T10:27:00', '2025-10-23', NULL,
    0, 0, 0, 0, 48.02462,
    48.02462, 48.02462, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    293, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-22T10:23:00', '2025-10-22', NULL,
    0, 0, 0, 0, 36.29988,
    36.29988, 36.29988, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    292, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-21T10:17:00', '2025-10-21', NULL,
    0, 0, 0, 0, 42.33768,
    42.33768, 42.33768, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    291, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-18T10:14:00', '2025-10-18', NULL,
    0, 0, 0, 0, 41.5701,
    41.5701, 41.5701, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    290, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-17T10:09:00', '2025-10-17', NULL,
    0, 0, 0, 0, 37.11,
    37.11, 37.11, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    289, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-16T09:16:00', '2025-10-16', NULL,
    0, 0, 0, 0, 42.86856,
    42.86856, 42.86856, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    288, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-15T09:14:00', '2025-10-15', NULL,
    0, 0, 0, 0, 43.19146,
    43.19146, 43.19146, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    287, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-14T09:12:00', '2025-10-14', NULL,
    0, 0, 0, 0, 43.4265,
    43.4265, 43.4265, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    286, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-10T10:33:00', '2025-10-10', NULL,
    0, 0, 0, 0, 38.923248,
    38.923248, 38.923248, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    285, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-09T15:00:00', '2025-10-09', NULL,
    0, 0, 0, 0, 22.85955,
    22.85955, 22.85955, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    284, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-09T10:28:00', '2025-10-09', NULL,
    0, 0, 0, 0, 45.94092,
    45.94092, 45.94092, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    283, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-10-08T16:30:00', '2025-10-08', NULL,
    0, 0, 0, 0, 46.99687,
    46.99687, 46.99687, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    282, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-09-27T13:22:00', '2025-09-27', NULL,
    0, 0, 0, 0, 39.6417,
    39.6417, 39.6417, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    281, NULL, 'whiskey'::spirit_type, 'Arnold', 'low_wines',
    '2025-09-26T16:01:00', '2025-09-26', NULL,
    0, 0, 0, 0, 46.1862,
    46.1862, 46.1862, 'Arnold Low Wines', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    280, NULL, 'whiskey'::spirit_type, 'Arnold', 'low_wines',
    '2025-09-25T15:59:00', '2025-09-25', NULL,
    0, 0, 0, 0, 30.008,
    30.008, 30.008, 'Arnold Low Wines', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    279, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-09-24T13:23:00', '2025-09-24', NULL,
    0, 0, 0, 0, 49.77936,
    49.77936, 49.77936, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    278, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-09-21T09:52:00', '2025-09-21', 'Storage',
    0, 0, 4.356, 0, 0,
    4.356, 4.356, 'Cisco New Bedford', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    277, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-09-20T09:51:00', '2025-09-20', 'Storage',
    0, 0, 4.72, 0, 0,
    4.72, 4.72, 'Cisco Seaport', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    276, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-09-19T09:47:00', '2025-09-19', 'Storage',
    0, 0, 4.758, 0, 0,
    4.758, 4.758, 'Cisco Fenway', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    275, NULL, 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2025-09-10T18:30:00', '2025-09-10', NULL,
    0, 0, 0, 0, 66.846,
    66.846, 66.846, 'Rocket Low Wine 45 day fermentation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    274, 'Rocket Low Wine', 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2025-09-08T18:17:00', '2025-09-08', NULL,
    0, 0, 0, 0, 81.4293,
    81.4293, 81.4293, 'Rocket Low Wine 45 day fermentation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    273, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-08-29T13:53:00', '2025-08-29', 'Storage',
    0, 0, 109.494, 0, 0,
    109.494, 109.494, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    272, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-08-12T17:06:00', '2025-08-12', 'Storage',
    0, 0, 100.772, 0, 0,
    100.772, 100.772, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    271, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-08-09T16:22:00', '2025-08-09', 'Storage',
    0, 0, 115.9872, 0, 0,
    115.9872, 115.9872, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    270, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-08-07T16:09:00', '2025-08-07', 'Storage',
    0, 0, 110.40029, 0, 0,
    110.40029, 110.40029, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    269, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-08-06T16:06:00', '2025-08-06', 'Storage',
    0, 0, 88.1928, 0, 0,
    88.1928, 88.1928, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    268, NULL, 'gin'::spirit_type, NULL, NULL,
    '2025-08-05T16:01:00', '2025-08-05', 'Storage',
    0, 0, 76.018457, 0, 0,
    76.018457, 76.018457, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    267, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-08-12T14:16:00', '2025-08-12', 'Storage',
    0, 0, 70.0291, 0, 0,
    70.0291, 70.0291, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    266, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-08-09T14:12:00', '2025-08-09', 'Storage',
    0, 0, 78.065, 0, 0,
    78.065, 78.065, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    265, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-08-07T13:14:00', '2025-08-07', 'Storage',
    0, 0, 134.3199, 0, 0,
    134.3199, 134.3199, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    264, 'Lager/Vienna', 'whiskey'::spirit_type, NULL, NULL,
    '2025-07-05T17:00:00', '2025-07-05', 'Storage',
    0, 0, 53.058, 0, 0,
    53.058, 53.058, '73.3% Simpsons Finest Lager 26.7% Weyermann Vienna
8% ABV and 3.6pH
25 day fermentation
No burp', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    263, 'Lager/Vienna', 'whiskey'::spirit_type, NULL, NULL,
    '2025-07-03T13:55:00', '2025-07-03', 'Storage',
    0, 0, 65.0676, 0, 0,
    65.0676, 65.0676, '73.3% Simpsons Finest Lager 26.7% Weyermann Vienna
8% ABV and 3.6pH
25 day fermentation
some type of burp during column distillation. Hazy days of summer.', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    262, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-06-29T16:16:00', '2025-06-29', 'Storage',
    0, 0, 123.1025, 0, 0,
    123.1025, 123.1025, '40 day ferment', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    261, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-06-19T17:05:00', '2025-06-19', NULL,
    0, 0, 0, 0, 59.9064,
    59.9064, 59.9064, '35-45 day fermentation
8.2% abv
3.34 pH', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    260, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-06-17T16:59:00', '2025-06-17', NULL,
    0, 0, 0, 0, 74.3922,
    74.3922, 74.3922, '35-45 day fermentation
8.2% abv
3.34 pH', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    259, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-06-16T16:52:00', '2025-06-16', NULL,
    0, 0, 0, 0, 69.1599,
    69.1599, 69.1599, '35-45 day fermentation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    258, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-06-15T16:28:00', '2025-06-15', NULL,
    0, 0, 0, 0, 65.9088,
    65.9088, 65.9088, '35-45 day fermentation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    257, 'Arnold Spirit', 'whiskey'::spirit_type, 'Arnold', NULL,
    '2025-04-24T15:46:00', '2025-04-24', 'Storage',
    0, 0, 111.6747, 0, 0,
    111.6747, 111.6747, 'Mainly all Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    256, 'Arnold Spirit', 'whiskey'::spirit_type, 'Rocket', 'low_wines',
    '2025-04-04T15:22:00', '2025-04-04', 'Storage',
    0, 0, 116.8862, 0, 0,
    116.8862, 116.8862, 'Rocket Low Wine', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    255, 'Rocket Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-04-02T17:10:00', '2025-04-02', NULL,
    0, 0, 0, 0, 85.251,
    85.251, 85.251, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    254, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-04-01T17:07:00', '2025-04-01', NULL,
    0, 0, 0, 0, 85.7,
    85.7, 85.7, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    253, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-03-29T11:59:00', '2025-03-29', 'Storage',
    0, 0, 89.99824, 0, 0,
    89.99824, 89.99824, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    252, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-03-28T14:45:00', '2025-03-28', NULL,
    0, 0, 0, 0, 81.8,
    81.8, 81.8, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    251, 'Rocket Low wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-03-26T15:55:00', '2025-03-26', NULL,
    0, 0, 0, 0, 72.9358,
    72.9358, 72.9358, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    250, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-03-25T14:38:00', '2025-03-25', 'Storage',
    0, 0, 73.40364, 0, 0,
    73.40364, 73.40364, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    249, 'Arnold Spirit', 'whiskey'::spirit_type, 'Arnold', NULL,
    '2025-03-21T16:22:00', '2025-03-21', 'Storage',
    0, 0, 71.60252, 0, 0,
    71.60252, 71.60252, 'Mostly Double Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    248, 'Arnold Spirit', 'whiskey'::spirit_type, 'Arnold', NULL,
    '2025-03-20T16:20:00', '2025-03-20', 'Storage',
    0, 0, 68.392224, 0, 0,
    68.392224, 68.392224, 'mostly double Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    246, 'Arnold Spirit', 'whiskey'::spirit_type, 'Arnold', NULL,
    '2025-03-18T17:33:00', '2025-03-18', 'Storage',
    0, 0, 70.38576, 0, 0,
    70.38576, 70.38576, 'Double Arnold mainly', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    245, 'Arnold Spirit', 'whiskey'::spirit_type, 'Arnold', 'low_wines',
    '2025-03-17T14:28:00', '2025-03-17', 'Storage',
    0, 0, 82.65804, 0, 0,
    82.65804, 82.65804, 'Arnold Spirit mostly Arnold Low Wines as well', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    244, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2025-03-04T09:18:00', '2025-03-04', 'Storage',
    0, 0, 352.114, 0, 0,
    352.114, 352.114, 'from sojourner', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    242, 'Rocket Spirit NEAECA Yeast', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-14T17:00:00', '2025-02-14', 'Storage',
    0, 0, 44.8232, 0, 0,
    44.8232, 44.8232, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    241, 'Rocket Spirit NEAECA Yeast', 'whiskey'::spirit_type, 'Rocket', 'spirit',
    '2025-02-13T10:57:00', '2025-02-13', 'Storage',
    0, 0, 103.3326, 0, 0,
    103.3326, 103.3326, 'Rocket Spirit NEAECA Yeast', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    240, 'Rocket Spirit NEAECA Yeast', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-12T17:00:00', '2025-02-12', 'Storage',
    0, 0, 96.3661, 0, 0,
    96.3661, 96.3661, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    239, 'GL', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-13T10:59:00', '2025-02-13', 'Storage',
    0, 0, 60, 0, 0,
    60.0, 60.0, NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    238, 'Rocket Spirit NEAECA Yeast', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-11T12:27:00', '2025-02-11', 'Storage',
    0, 0, 106.5547, 0, 0,
    106.5547, 106.5547, 'NEW ENGLAND AMERICAN EAST
COAST ALE YEAST and Red Star', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    237, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-09T15:43:00', '2025-02-09', NULL,
    0, 0, 0, 0, 52.4076,
    52.4076, 52.4076, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    236, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-09T15:41:00', '2025-02-09', NULL,
    0, 0, 0, 0, 23.98155,
    23.98155, 23.98155, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    235, 'Rocket Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-08T15:24:00', '2025-02-08', NULL,
    0, 0, 0, 0, 71.463,
    71.463, 71.463, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    234, 'Arnold Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-08T15:02:00', '2025-02-08', NULL,
    0, 0, 0, 0, 20.53767,
    20.53767, 20.53767, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    233, 'Arnold Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-07T14:54:00', '2025-02-07', NULL,
    0, 0, 0, 0, 22.68638,
    22.68638, 22.68638, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    232, 'Arnold Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-06T14:49:00', '2025-02-06', NULL,
    0, 0, 0, 0, 44.47548,
    44.47548, 44.47548, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    231, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2025-02-07T14:35:00', '2025-02-07', 'Storage',
    0, 0, 95.018, 0, 0,
    95.018, 95.018, NULL, COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    230, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-02-05T14:21:00', '2025-02-05', NULL,
    0, 0, 0, 0, 44.7599,
    44.7599, 44.7599, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    229, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-31T16:12:00', '2025-01-31', NULL,
    0, 0, 0, 0, 28.44344,
    28.44344, 28.44344, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    228, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-30T12:55:00', '2025-01-30', 'Storage',
    0, 0, 111.0756, 0, 0,
    111.0756, 111.0756, 'GW 1000g
250 red star', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    227, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-29T12:51:00', '2025-01-29', NULL,
    0, 0, 0, 0, 42.45934,
    42.45934, 42.45934, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    226, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-25T17:42:00', '2025-01-25', NULL,
    0, 0, 0, 0, 32.518248,
    32.518248, 32.518248, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    225, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-24T14:20:00', '2025-01-24', NULL,
    0, 0, 0, 0, 38.15138,
    38.15138, 38.15138, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    224, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-24T14:15:00', '2025-01-24', 'Storage',
    0, 0, 62.1874, 0, 0,
    62.1874, 62.1874, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    223, 'Rocket Spirit RedStar GW', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-23T14:03:00', '2025-01-23', 'Storage',
    0, 0, 75.096, 0, 0,
    75.096, 75.096, 'Different yeast', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    222, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-23T13:59:00', '2025-01-23', NULL,
    0, 0, 0, 0, 17.2484,
    17.2484, 17.2484, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    221, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-22T17:53:00', '2025-01-22', NULL,
    0, 0, 0, 0, 48.8214,
    48.8214, 48.8214, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    220, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-19T17:02:00', '2025-01-19', 'Storage',
    0, 0, 90.0188, 0, 0,
    90.0188, 90.0188, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    219, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-19T16:59:00', '2025-01-19', NULL,
    0, 0, 0, 0, 46.204956,
    46.204956, 46.204956, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    218, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-17T16:36:00', '2025-01-17', NULL,
    0, 0, 0, 0, 43.285088,
    43.285088, 43.285088, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    217, 'Arnold Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-16T17:05:00', '2025-01-16', NULL,
    0, 0, 0, 0, 44.6462,
    44.6462, 44.6462, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    216, 'Arnold Low Wine', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-15T17:01:00', '2025-01-15', NULL,
    0, 0, 0, 0, 46.2924,
    46.2924, 46.2924, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    215, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-08T16:30:00', '2025-01-08', NULL,
    0, 0, 0, 0, 43.83072,
    43.83072, 43.83072, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    214, 'Arnold Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-07T16:31:00', '2025-01-07', NULL,
    0, 0, 0, 0, 44.64027,
    44.64027, 44.64027, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    213, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-03T17:44:00', '2025-01-03', 'Storage',
    0, 0, 97.9216, 0, 0,
    97.9216, 97.9216, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    212, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2025-01-03T16:14:00', '2025-01-03', 'Storage',
    0, 0, 96.116724, 0, 0,
    96.116724, 96.116724, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    211, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-27T13:14:00', '2024-12-27', 'Storage',
    0, 0, 93.2543, 0, 0,
    93.2543, 93.2543, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    210, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-26T13:12:00', '2024-12-26', 'Storage',
    0, 0, 20.4891, 0, 0,
    20.4891, 20.4891, 'Acetic ferment', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    209, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-20T13:06:00', '2024-12-20', 'Storage',
    0, 0, 84.819, 0, 0,
    84.819, 84.819, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    208, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-15T15:27:00', '2024-12-15', 'Storage',
    0, 0, 89.38755, 0, 0,
    89.38755, 89.38755, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    207, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-13T15:22:00', '2024-12-13', 'Storage',
    0, 0, 87.6582, 0, 0,
    87.6582, 87.6582, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    206, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-19T15:08:00', '2024-12-19', 'Storage',
    0, 0, 84.6036, 0, 0,
    84.6036, 84.6036, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    205, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-16T15:05:00', '2024-12-16', 'Storage',
    0, 0, 82.9472, 0, 0,
    82.9472, 82.9472, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    204, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-15T11:10:00', '2024-12-15', 'Storage',
    0, 0, 68.4084, 0, 0,
    68.4084, 68.4084, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    203, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-14T14:58:00', '2024-12-14', 'Storage',
    0, 0, 54.1683, 0, 0,
    54.1683, 54.1683, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    202, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-13T14:45:00', '2024-12-13', 'Storage',
    0, 0, 89.4465, 0, 0,
    89.4465, 89.4465, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    201, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-12T13:27:00', '2024-12-12', 'Production',
    0, 0, 94.752, 0, 0,
    94.752, 94.752, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    200, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-10T17:23:00', '2024-12-10', 'Storage',
    0, 0, 93.50924, 0, 0,
    93.50924, 93.50924, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    199, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-10T17:14:00', '2024-12-10', 'Storage',
    0, 0, 73.6764, 0, 0,
    73.6764, 73.6764, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    198, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-06T11:29:00', '2024-12-06', 'Storage',
    0, 0, 57.2164, 0, 0,
    57.2164, 57.2164, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    197, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-06T11:20:00', '2024-12-06', 'Storage',
    0, 0, 90.2638, 0, 0,
    90.2638, 90.2638, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    196, 'Rocket Burp Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-04T11:16:00', '2024-12-04', NULL,
    0, 0, 0, 0, 28.4328,
    28.4328, 28.4328, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    195, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-04T11:10:00', '2024-12-04', 'Storage',
    0, 0, 34.889, 0, 0,
    34.889, 34.889, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    194, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-04T11:07:00', '2024-12-04', 'Storage',
    0, 0, 96.60424, 0, 0,
    96.60424, 96.60424, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    193, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-03T14:31:00', '2024-12-03', 'Storage',
    0, 0, 96.1968, 0, 0,
    96.1968, 96.1968, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    192, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-03T12:42:00', '2024-12-03', 'Storage',
    0, 0, 95.11272, 0, 0,
    95.11272, 95.11272, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    191, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-12-01T15:02:00', '2024-12-01', 'Storage',
    0, 0, 104.28648, 0, 0,
    104.28648, 104.28648, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    190, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-30T14:48:00', '2024-11-30', 'Storage',
    0, 0, 106.1284, 0, 0,
    106.1284, 106.1284, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    189, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-29T14:40:00', '2024-11-29', 'Storage',
    0, 0, 21.0012, 0, 0,
    21.0012, 21.0012, 'VFD issues', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    188, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-27T14:11:00', '2024-11-27', 'Storage',
    0, 0, 86.52, 0, 0,
    86.52, 86.52, 'VFD issues
Impacting yield', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    187, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-26T18:00:00', '2024-11-26', 'Storage',
    0, 0, 62.1368, 0, 0,
    62.1368, 62.1368, 'On going issues with the VFD and impacting feed rate and distillation', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    186, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-22T15:25:00', '2024-11-22', 'Storage',
    0, 0, 64.2488, 0, 0,
    64.2488, 64.2488, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    185, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-21T15:22:00', '2024-11-21', NULL,
    0, 0, 0, 0, 15.3786,
    15.3786, 15.3786, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    184, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-20T14:12:00', '2024-11-20', NULL,
    0, 0, 0, 0, 70.0944,
    70.0944, 70.0944, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    183, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-14T14:09:00', '2024-11-14', NULL,
    0, 0, 0, 0, 47.68875,
    47.68875, 47.68875, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    182, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-13T14:04:00', '2024-11-13', NULL,
    0, 0, 0, 0, 47.54118,
    47.54118, 47.54118, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    181, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-11-01T14:46:00', '2024-11-01', NULL,
    0, 0, 0, 0, 24.7379,
    24.7379, 24.7379, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    180, 'Rocket Strip', 'whiskey'::spirit_type, 'Rocket', NULL,
    '2024-10-31T18:00:00', '2024-10-31', NULL,
    0, 0, 0, 0, 16.1674,
    16.1674, 16.1674, 'Rocket VFD is down.', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    179, 'Arnold Low Wine', 'whiskey'::spirit_type, 'Rocket', NULL,
    '2024-10-31T13:23:00', '2024-10-31', NULL,
    0, 0, 0, 0, 47.39644,
    47.39644, 47.39644, 'Rocket VFD is down', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    178, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-29T18:00:00', '2024-10-29', NULL,
    0, 0, 0, 0, 47.45187,
    47.45187, 47.45187, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    177, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-24T18:00:00', '2024-10-24', NULL,
    0, 0, 0, 0, 24.0327,
    24.0327, 24.0327, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    176, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-24T15:13:00', '2024-10-24', NULL,
    0, 0, 0, 0, 67.962,
    67.962, 67.962, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    175, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-23T20:00:00', '2024-10-23', NULL,
    0, 0, 0, 0, 87.24,
    87.24, 87.24, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    174, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-23T18:00:00', '2024-10-23', NULL,
    0, 0, 0, 0, 66.3901,
    66.3901, 66.3901, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    173, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-23T16:30:00', '2024-10-23', NULL,
    0, 0, 0, 0, 49.78925,
    49.78925, 49.78925, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    172, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-22T18:00:00', '2024-10-22', NULL,
    0, 0, 0, 0, 22.92732,
    22.92732, 22.92732, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    171, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-11T16:39:00', '2024-10-11', NULL,
    0, 0, 0, 0, 52.1136,
    52.1136, 52.1136, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    170, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-11T16:30:00', '2024-10-11', NULL,
    0, 0, 0, 0, 25.137,
    25.137, 25.137, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    169, 'Arnold Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-10T19:30:00', '2024-10-10', NULL,
    0, 0, 0, 0, 72.447,
    72.447, 72.447, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    168, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-10T19:00:00', '2024-10-10', NULL,
    0, 0, 0, 0, 102.098,
    102.098, 102.098, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    167, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-10-09T17:47:00', '2024-10-09', NULL,
    0, 0, 0, 0, 83.0346,
    83.0346, 83.0346, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    166, 'Rocket Arnold', 'whiskey'::spirit_type, 'Both', NULL,
    '2024-10-09T15:30:00', '2024-10-09', 'Storage',
    0, 0, 114.38835, 0, 0,
    114.38835, 114.38835, 'Rocket Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    165, 'Rocket Arnold', 'whiskey'::spirit_type, 'Both', NULL,
    '2024-10-08T18:30:00', '2024-10-08', 'Storage',
    0, 0, 109.773609, 0, 0,
    109.773609, 109.773609, 'Rocket Arnold', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    164, 'Kelp Seaport', 'gin'::spirit_type, NULL, NULL,
    '2024-10-03T15:30:00', '2024-10-03', 'Storage',
    0, 0, 4.13, 0, 0,
    4.13, 4.13, 'Brandy Kelp distillation to be used for future gin product', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    163, 'Rocket Arnold', 'whiskey'::spirit_type, NULL, NULL,
    '2024-09-27T18:00:00', '2024-09-27', 'Storage',
    0, 0, 116.43863, 0, 0,
    116.43863, 116.43863, '490/168.5', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    162, 'Rocket Arnold', 'whiskey'::spirit_type, NULL, NULL,
    '2024-09-26T18:00:00', '2024-09-26', 'Storage',
    0, 0, 104.0026, 0, 0,
    104.0026, 104.0026, '449/165.7', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    161, NULL, 'gin'::spirit_type, NULL, NULL,
    '2024-09-11T16:39:00', '2024-09-11', 'Storage',
    0, 0, 121.7601, 0, 0,
    121.7601, 121.7601, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    160, NULL, 'gin'::spirit_type, NULL, NULL,
    '2024-09-10T16:31:00', '2024-09-10', 'Storage',
    0, 0, 107.06823, 0, 0,
    107.06823, 107.06823, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    159, 'Late Summer Gin', 'gin'::spirit_type, NULL, NULL,
    '2024-09-06T11:42:00', '2024-09-06', 'Storage',
    0, 0, 62.4175, 0, 0,
    62.4175, 62.4175, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    158, 'Late Summer Gin', 'gin'::spirit_type, NULL, NULL,
    '2024-09-05T11:16:00', '2024-09-05', 'Storage',
    0, 0, 55.13717, 0, 0,
    55.13717, 55.13717, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    157, 'Late Summer Gin', 'gin'::spirit_type, NULL, NULL,
    '2024-09-05T10:57:00', '2024-09-05', 'Storage',
    0, 0, 57.79116, 0, 0,
    57.79116, 57.79116, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    156, 'Late Summer Gin', 'gin'::spirit_type, NULL, NULL,
    '2024-09-05T10:47:00', '2024-09-05', 'Storage',
    0, 0, 57.56268, 0, 0,
    57.56268, 57.56268, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    155, 'Late Summer Gin', 'gin'::spirit_type, NULL, NULL,
    '2024-09-05T10:39:00', '2024-09-05', 'Storage',
    0, 0, 59.4696, 0, 0,
    59.4696, 59.4696, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    154, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-08-22T16:45:00', '2024-08-22', NULL,
    0, 0, 0, 0, 87.172,
    87.172, 87.172, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    152, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-08-22T10:00:00', '2024-08-22', 'Storage',
    0, 0, 8.89, 0, 0,
    8.89, 8.89, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    151, 'Brandy Apple Spirit', 'brandy'::spirit_type, NULL, NULL,
    '2024-08-14T14:39:00', '2024-08-14', 'Storage',
    0, 0, 40.401648, 0, 0,
    40.401648, 40.401648, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    150, 'Brandy Apple Spirit', 'brandy'::spirit_type, NULL, NULL,
    '2024-08-07T14:12:00', '2024-08-07', 'Storage',
    0, 0, 18.50002, 0, 0,
    18.50002, 18.50002, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    149, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2024-07-26T16:05:00', '2024-07-26', 'Storage',
    0, 0, 24.37434, 0, 0,
    24.37434, 24.37434, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    148, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2024-07-25T16:00:00', '2024-07-25', 'Storage',
    0, 0, 41.304, 0, 0,
    41.304, 41.304, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    147, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2024-07-20T15:19:00', '2024-07-20', 'Storage',
    0, 0, 19.839939, 0, 0,
    19.839939, 19.839939, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    146, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2024-07-19T17:00:00', '2024-07-19', 'Storage',
    0, 0, 19.796724, 0, 0,
    19.796724, 19.796724, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    145, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2024-07-18T17:00:00', '2024-07-18', 'Storage',
    0, 0, 19.6669, 0, 0,
    19.6669, 19.6669, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    144, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2024-07-17T16:12:00', '2024-07-17', 'Storage',
    0, 0, 25.30584, 0, 0,
    25.30584, 25.30584, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    143, 'Rocket Strip 24 days', 'whiskey'::spirit_type, NULL, NULL,
    '2024-07-17T18:07:00', '2024-07-17', NULL,
    0, 0, 0, 0, 109.35,
    109.35, 109.35, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    142, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-07-16T17:00:00', '2024-07-16', NULL,
    0, 0, 0, 0, 100.868,
    100.868, 100.868, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    141, 'Rocket Strip 24 day fermentation', 'whiskey'::spirit_type, NULL, NULL,
    '2024-07-12T17:34:00', '2024-07-12', NULL,
    0, 0, 0, 0, 94.668,
    94.668, 94.668, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    140, 'Arnold Rocket', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-28T16:37:00', '2024-06-28', 'Storage',
    0, 0, 105.0525, 0, 0,
    105.0525, 105.0525, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    139, 'Arnold Rocket', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-27T15:54:00', '2024-06-27', 'Storage',
    0, 0, 94.709526, 0, 0,
    94.709526, 94.709526, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    138, 'Arnold Spirit Rocket Bubble Caps down plates engaged 392#172', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-25T16:51:00', '2024-06-25', 'Storage',
    0, 0, 95.691804, 0, 0,
    95.691804, 95.691804, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    137, 'Arnold Spirit Rocket Bubble Caps Down Plates engaged', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-20T15:45:00', '2024-06-20', 'Storage',
    0, 0, 119.147798, 0, 0,
    119.147798, 119.147798, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    136, 'Rocket Low Wine Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-19T15:21:00', '2024-06-19', NULL,
    0, 0, 0, 0, 103.752,
    103.752, 103.752, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    135, 'Arnold Spirit Rocket Bubble Caps Down Plates engaged', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-19T13:21:00', '2024-06-19', 'Storage',
    0, 0, 95.238612, 0, 0,
    95.238612, 95.238612, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    134, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-18T17:42:00', '2024-06-18', NULL,
    0, 0, 0, 0, 107.055,
    107.055, 107.055, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    133, 'Arnold Spirit Rocket 388.8/168 Bubble Caps Down Plates engaged', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-18T17:30:00', '2024-06-18', 'Storage',
    0, 0, 92.00235, 0, 0,
    92.00235, 92.00235, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    132, 'Arnold Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-14T16:30:00', '2024-06-14', 'Storage',
    0, 0, 97.1124, 0, 0,
    97.1124, 97.1124, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    131, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-07T16:40:00', '2024-06-07', NULL,
    0, 0, 0, 0, 57.1113,
    57.1113, 57.1113, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    130, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-06T16:36:00', '2024-06-06', NULL,
    0, 0, 0, 0, 93.732,
    93.732, 93.732, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    129, 'Arnold Spirit Rocket', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-07T16:33:00', '2024-06-07', 'Storage',
    0, 0, 86.1192, 0, 0,
    86.1192, 86.1192, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    128, 'Arnold Spirit Rocket', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-06T16:30:00', '2024-06-06', 'Storage',
    0, 0, 94.670856, 0, 0,
    94.670856, 94.670856, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    127, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-05T17:25:00', '2024-06-05', NULL,
    0, 0, 0, 0, 72.0243,
    72.0243, 72.0243, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    126, 'Arnold Spirit Rocket', 'whiskey'::spirit_type, NULL, NULL,
    '2024-06-02T18:00:00', '2024-06-02', 'Storage',
    0, 0, 91.81966, 0, 0,
    91.81966, 91.81966, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    125, 'Rocket Strip Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-31T18:01:00', '2024-05-31', NULL,
    0, 0, 0, 0, 99.372,
    99.372, 99.372, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    124, 'Arnold Spirit R Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-31T17:50:00', '2024-05-31', 'Storage',
    0, 0, 83.3664, 0, 0,
    83.3664, 83.3664, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    123, 'Rocket Low Wines 723', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-30T17:00:00', '2024-05-30', NULL,
    0, 0, 0, 0, 97.7002,
    97.7002, 97.7002, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    122, 'Arnold Spirit Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-30T16:50:00', '2024-05-30', 'Storage',
    0, 0, 93.6231, 0, 0,
    93.6231, 93.6231, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    121, 'Rocket Spirit problems with the steam trap lead to low yields', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-22T16:41:00', '2024-05-22', 'Storage',
    0, 0, 75.6, 0, 0,
    75.6, 75.6, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    120, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-21T12:01:00', '2024-05-21', NULL,
    0, 0, 0, 0, 101.06,
    101.06, 101.06, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    119, 'Rocket Spirit 70 day or so fermentation. Post new boiler and tweaks. Last of that batch', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-11T17:31:00', '2024-05-11', 'Storage',
    0, 0, 54.3992, 0, 0,
    54.3992, 54.3992, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    118, 'Rocket Spirit Maris Otter #19 still post new boiler 662g', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-07T17:49:00', '2024-05-07', 'Storage',
    0, 0, 96.2782, 0, 0,
    96.2782, 96.2782, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    117, 'Rocket Spirit Long fermentation 69 days second run after boiler installation newer adjustments', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-03T17:30:00', '2024-05-03', 'Storage',
    0, 0, 68.8707, 0, 0,
    68.8707, 68.8707, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    116, 'Rocket Spirit Long fermentation 71 days second run after boiler installation new adjustments', 'whiskey'::spirit_type, NULL, NULL,
    '2024-05-01T16:42:00', '2024-05-01', 'Storage',
    0, 0, 59.2729, 0, 0,
    59.2729, 59.2729, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    115, 'Rocket Spirit Long Fermentation 63 days first run post new boiler', 'whiskey'::spirit_type, NULL, NULL,
    '2024-04-30T19:00:00', '2024-04-30', 'Storage',
    0, 0, 89.505, 0, 0,
    89.505, 89.505, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    114, 'Rocket Strip Low Wine 518', 'whiskey'::spirit_type, NULL, NULL,
    '2024-03-07T18:08:00', '2024-03-07', NULL,
    0, 0, 0, 0, 66.4073,
    66.4073, 66.4073, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    113, 'Rocket Low Wines Strip 484', 'whiskey'::spirit_type, NULL, NULL,
    '2024-03-06T18:08:00', '2024-03-06', NULL,
    0, 0, 0, 0, 65.778,
    65.778, 65.778, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    112, 'Rocket Strip Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-03-05T18:00:00', '2024-03-05', NULL,
    0, 0, 0, 0, 82.8624,
    82.8624, 82.8624, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    111, 'Rocket Strip Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-03-03T17:04:00', '2024-03-03', NULL,
    0, 0, 0, 0, 57.188,
    57.188, 57.188, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    110, 'Rocket Strip Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-03-02T16:26:00', '2024-03-02', NULL,
    0, 0, 0, 0, 81.2059,
    81.2059, 81.2059, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    109, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2024-03-01T17:00:00', '2024-03-01', NULL,
    0, 0, 0, 0, 81.424,
    81.424, 81.424, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    108, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-18T20:11:00', '2024-02-18', NULL,
    0, 0, 0, 0, 82.61,
    82.61, 82.61, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    107, 'Rocket Spirit 117 proof record off still', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-17T18:12:00', '2024-02-17', 'Storage',
    0, 0, 115.0325, 0, 0,
    115.0325, 115.0325, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    106, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-16T18:23:00', '2024-02-16', 'Storage',
    0, 0, 106.8264, 0, 0,
    106.8264, 106.8264, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    105, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-14T17:49:00', '2024-02-14', 'Storage',
    0, 0, 104.98455, 0, 0,
    104.98455, 104.98455, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    104, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-13T17:58:00', '2024-02-13', 'Storage',
    0, 0, 88.128, 0, 0,
    88.128, 88.128, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    103, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-13T17:53:00', '2024-02-13', 'Production',
    0, 0, 102.3496, 0, 0,
    102.3496, 102.3496, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    102, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-02T17:34:00', '2024-02-02', 'Storage',
    0, 0, 107.92719, 0, 0,
    107.92719, 107.92719, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    101, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-01T16:48:00', '2024-02-01', 'Storage',
    0, 0, 99.86846, 0, 0,
    99.86846, 99.86846, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    100, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-02-01T16:00:00', '2024-02-01', 'Storage',
    0, 0, 60.9427, 0, 0,
    60.9427, 60.9427, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    99, 'Rocket Spirt burp low wines', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-30T12:13:00', '2024-01-30', NULL,
    0, 0, 0, 0, 76.0485,
    76.0485, 76.0485, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    98, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-26T19:00:00', '2024-01-26', 'Storage',
    0, 0, 96.237, 0, 0,
    96.237, 96.237, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    97, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-26T12:26:00', '2024-01-26', 'Storage',
    0, 0, 100.68136, 0, 0,
    100.68136, 100.68136, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    96, 'Rocket Low Wines New Container of MO#19', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-26T12:06:00', '2024-01-26', NULL,
    0, 0, 0, 0, 21.2463,
    21.2463, 21.2463, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    95, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-25T18:40:00', '2024-01-25', 'Storage',
    0, 0, 108.3248, 0, 0,
    108.3248, 108.3248, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    93, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-18T18:30:00', '2024-01-18', 'Storage',
    0, 0, 100.488, 0, 0,
    100.488, 100.488, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    92, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-17T18:11:00', '2024-01-17', 'Storage',
    0, 0, 73.9613, 0, 0,
    73.9613, 73.9613, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    91, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-14T18:30:00', '2024-01-14', 'Storage',
    0, 0, 97.4592, 0, 0,
    97.4592, 97.4592, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    90, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-14T10:42:00', '2024-01-14', 'Storage',
    0, 0, 96.1605, 0, 0,
    96.1605, 96.1605, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    89, 'Arnold Gale Force Gin', 'gin'::spirit_type, NULL, NULL,
    '2023-12-09T16:44:00', '2023-12-09', 'ProcessingBulk',
    0, 0, 101.00485, 0, 0,
    101.00485, 101.00485, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    88, 'Arnold Gale Force Gin', 'gin'::spirit_type, NULL, NULL,
    '2023-12-08T16:36:00', '2023-12-08', 'ProcessingBulk',
    0, 0, 90.52155, 0, 0,
    90.52155, 90.52155, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    87, 'Arnold Gale Force Gin', 'gin'::spirit_type, NULL, NULL,
    '2023-12-07T16:33:00', '2023-12-07', 'ProcessingBulk',
    0, 0, 101.12712, 0, 0,
    101.12712, 101.12712, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    86, 'Arnold Gale Force Gin', 'gin'::spirit_type, NULL, NULL,
    '2023-12-06T16:13:00', '2023-12-06', 'ProcessingBulk',
    0, 0, 129.911958, 0, 0,
    129.911958, 129.911958, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    85, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-11T17:00:00', '2024-01-11', 'Storage',
    0, 0, 82.15848, 0, 0,
    82.15848, 82.15848, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    84, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-11T17:30:00', '2024-01-11', 'Storage',
    0, 0, 80.6322, 0, 0,
    80.6322, 80.6322, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    83, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-10T17:09:00', '2024-01-10', 'Storage',
    0, 0, 114.7079, 0, 0,
    114.7079, 114.7079, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    82, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-10T15:54:00', '2024-01-10', 'Storage',
    0, 0, 84.09618, 0, 0,
    84.09618, 84.09618, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    81, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-09T17:30:00', '2024-01-09', 'Storage',
    0, 0, 114.2856, 0, 0,
    114.2856, 114.2856, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    80, 'Rocket Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2024-01-09T17:00:00', '2024-01-09', 'Storage',
    0, 0, 91.2665, 0, 0,
    91.2665, 91.2665, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    79, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-29T18:02:00', '2023-12-29', 'Storage',
    0, 0, 117.4924, 0, 0,
    117.4924, 117.4924, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    78, 'Arnold Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-29T17:01:00', '2023-12-29', 'Storage',
    0, 0, 79.12695, 0, 0,
    79.12695, 79.12695, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    77, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-28T18:17:00', '2023-12-28', 'Storage',
    0, 0, 100.3275, 0, 0,
    100.3275, 100.3275, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    76, 'Arnold/Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-28T16:18:00', '2023-12-28', 'Storage',
    0, 0, 86.43826, 0, 0,
    86.43826, 86.43826, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    75, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-27T19:00:00', '2023-12-27', 'Storage',
    0, 0, 96.1605, 0, 0,
    96.1605, 96.1605, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    74, 'Arnold Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-27T17:00:00', '2023-12-27', 'Storage',
    0, 0, 89.25696, 0, 0,
    89.25696, 89.25696, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    73, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-22T17:05:00', '2023-12-22', 'Storage',
    0, 0, 69.4811, 0, 0,
    69.4811, 69.4811, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    72, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-21T17:20:00', '2023-12-21', 'Storage',
    0, 0, 95.931, 0, 0,
    95.931, 95.931, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    71, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-15T19:00:00', '2023-12-15', 'Production',
    0, 0, 108.3024, 0, 0,
    108.3024, 108.3024, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    70, 'Rocket Spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-14T18:30:00', '2023-12-14', 'Storage',
    0, 0, 96.4418, 0, 0,
    96.4418, 96.4418, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    69, 'rocket spirit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-12-13T18:30:00', '2023-12-13', 'Storage',
    0, 0, 95.8545, 0, 0,
    95.8545, 95.8545, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    68, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-28T19:00:00', '2023-11-28', 'Storage',
    0, 0, 89.9884, 0, 0,
    89.9884, 89.9884, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    67, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-26T18:00:00', '2023-11-26', 'Storage',
    0, 0, 71.3592, 0, 0,
    71.3592, 71.3592, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    66, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-25T19:00:00', '2023-11-25', NULL,
    0, 0, 0, 0, 92.1202,
    92.1202, 92.1202, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    65, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-21T18:24:00', '2023-11-21', NULL,
    0, 0, 0, 0, 104.346,
    104.346, 104.346, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    64, 'Rocket Strip Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-20T18:00:00', '2023-11-20', NULL,
    0, 0, 0, 0, 85.12,
    85.12, 85.12, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    63, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-18T18:07:00', '2023-11-18', NULL,
    0, 0, 0, 0, 68.1036,
    68.1036, 68.1036, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    62, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-17T19:03:00', '2023-11-17', NULL,
    0, 0, 0, 0, 103.3362,
    103.3362, 103.3362, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    61, 'Rocket Strip Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-15T19:12:00', '2023-11-15', NULL,
    0, 0, 0, 0, 104.7484,
    104.7484, 104.7484, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    60, 'Rocket Low Wines Post JJ Visit', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-14T18:34:00', '2023-11-14', NULL,
    0, 0, 0, 0, 117.81,
    117.81, 117.81, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    59, 'Rocket Low Wines JJ Last Day Distilling', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-09T10:15:00', '2023-11-09', NULL,
    0, 0, 0, 0, 42.883,
    42.883, 42.883, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    58, 'Rocket Low Wines JJ Last Day Distilling', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-09T10:00:00', '2023-11-09', NULL,
    0, 0, 0, 0, 80.7032,
    80.7032, 80.7032, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    57, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-08T10:24:00', '2023-11-08', NULL,
    0, 0, 0, 0, 93.6164,
    93.6164, 93.6164, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    56, 'Rocket Strip', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-06T17:30:00', '2023-11-06', NULL,
    0, 0, 0, 0, 55.35,
    55.35, 55.35, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    55, 'Rocket Low Wines', 'whiskey'::spirit_type, NULL, NULL,
    '2023-11-03T17:08:00', '2023-11-03', NULL,
    0, 0, 0, 0, 80.775,
    80.775, 80.775, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    54, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-10-28T18:28:00', '2023-10-28', 'Storage',
    0, 0, 96.2904, 0, 0,
    96.2904, 96.2904, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    53, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-10-26T18:00:00', '2023-10-26', 'Production',
    0, 0, 101.8395, 0, 0,
    101.8395, 101.8395, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    52, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-10-25T19:00:00', '2023-10-25', 'Storage',
    0, 0, 89.9008, 0, 0,
    89.9008, 89.9008, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    51, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-10-24T19:00:00', '2023-10-24', 'Production',
    0, 0, 96.075, 0, 0,
    96.075, 96.075, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    50, 'Rocket Spirit Super Saison', 'rum'::spirit_type, NULL, NULL,
    '2023-10-07T19:35:00', '2023-10-07', 'Storage',
    0, 0, 130.29, 0, 0,
    130.29, 130.29, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    49, 'Rocket Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-10-05T15:02:00', '2023-10-05', 'Storage',
    0, 0, 95.904, 0, 0,
    95.904, 95.904, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    48, 'Feed entry dropped to the middle from the top. Steam valves changed out. Seems better', 'rum'::spirit_type, NULL, NULL,
    '2023-10-03T13:07:00', '2023-10-03', 'Storage',
    0, 0, 119.3766, 0, 0,
    119.3766, 119.3766, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    47, 'Post Column repairs. Still small test runs. Efficiency is off.', 'rum'::spirit_type, NULL, NULL,
    '2023-09-30T16:00:00', '2023-09-30', 'Storage',
    0, 0, 16.1162, 0, 0,
    16.1162, 16.1162, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    46, 'DistillMaxRM fruit bac', 'rum'::spirit_type, NULL, NULL,
    '2023-09-13T17:00:00', '2023-09-13', 'Storage',
    0, 0, 69.825, 0, 0,
    69.825, 69.825, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    45, 'Rocket Spirit DistilamaxRM', 'rum'::spirit_type, NULL, NULL,
    '2023-09-05T12:08:00', '2023-09-05', 'Storage',
    0, 0, 37.6675, 0, 0,
    37.6675, 37.6675, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    44, 'Rocket Spirit DistilamaxRM', 'rum'::spirit_type, NULL, NULL,
    '2023-08-29T12:41:00', '2023-08-29', 'Storage',
    0, 0, 79.3764, 0, 0,
    79.3764, 79.3764, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    42, 'Rocket Spirit DistilamaxRM C1 193 C2 150', 'rum'::spirit_type, NULL, NULL,
    '2023-08-25T16:30:00', '2023-08-25', 'Storage',
    0, 0, 99.2, 0, 0,
    99.2, 99.2, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    41, '12% rum wash (20 brix start) Rocket Spirit fruit/bacteria', 'rum'::spirit_type, NULL, NULL,
    '2023-08-23T16:44:00', '2023-08-23', 'Storage',
    0, 0, 98.88, 0, 0,
    98.88, 98.88, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    40, 'Distilamax RM', 'rum'::spirit_type, NULL, NULL,
    '2023-08-09T11:00:00', '2023-08-09', 'Storage',
    0, 0, 10.6335, 0, 0,
    10.6335, 10.6335, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    39, 'DistillaMax RM Yeast Rocket Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-08-04T17:00:00', '2023-08-04', 'Storage',
    0, 0, 65.832, 0, 0,
    65.832, 65.832, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    38, 'Rocket Spirit Top Feed Distilamax RM', 'rum'::spirit_type, NULL, NULL,
    '2023-07-21T16:46:00', '2023-07-21', 'Storage',
    0, 0, 68.145, 0, 0,
    68.145, 68.145, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    37, 'DistillMaxRM Rocket Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-07-20T16:01:00', '2023-07-20', 'Storage',
    0, 0, 70.623, 0, 0,
    70.623, 70.623, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    36, NULL, 'gin'::spirit_type, NULL, NULL,
    '2023-07-18T12:59:00', '2023-07-18', 'Storage',
    0, 0, 89.29351, 0, 0,
    89.29351, 89.29351, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    35, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-07-07T14:02:00', '2023-07-07', 'Storage',
    0, 0, 50.758, 0, 0,
    50.758, 50.758, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    34, NULL, 'whiskey'::spirit_type, NULL, NULL,
    '2023-06-21T16:00:00', '2023-06-21', 'Storage',
    0, 0, 78.5355, 0, 0,
    78.5355, 78.5355, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    33, 'Sauvy', 'rum'::spirit_type, NULL, NULL,
    '2023-06-14T17:00:00', '2023-06-14', 'Storage',
    0, 0, 91.008, 0, 0,
    91.008, 91.008, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    31, NULL, 'rum'::spirit_type, NULL, NULL,
    '2023-06-08T14:22:00', '2023-06-08', 'Storage',
    0, 0, 124.028, 0, 0,
    124.028, 124.028, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    30, NULL, 'rum'::spirit_type, NULL, NULL,
    '2023-05-31T13:55:00', '2023-05-31', 'Storage',
    0, 0, 82.55, 0, 0,
    82.55, 82.55, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    29, NULL, 'rum'::spirit_type, NULL, NULL,
    '2023-05-01T10:27:00', '2023-05-01', 'Storage',
    0, 0, 99.77, 0, 0,
    99.77, 99.77, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    28, '4 mos rest', 'whiskey'::spirit_type, NULL, NULL,
    '2023-03-27T09:18:00', '2023-03-27', 'Production',
    0, 0, 145.288, 0, 0,
    145.288, 145.288, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    27, NULL, 'gin'::spirit_type, NULL, NULL,
    '2023-03-30T16:49:00', '2023-03-30', 'ProcessingBulk',
    0, 0, 616.76, 0, 0,
    616.76, 616.76, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    26, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-03-19T13:48:00', '2023-03-19', 'Storage',
    0, 0, 167.66232, 0, 0,
    167.66232, 167.66232, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    25, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-03-17T11:58:00', '2023-03-17', 'Storage',
    0, 0, 81.74768, 0, 0,
    81.74768, 81.74768, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    24, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-03-16T11:51:00', '2023-03-16', NULL,
    0, 0, 0, 0, 164.7,
    164.7, 164.7, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    23, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-03-16T11:37:00', '2023-03-16', NULL,
    0, 0, 0, 0, 51,
    51.0, 51.0, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    22, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-03-12T10:50:00', '2023-03-12', 'Storage',
    0, 0, 88.28173, 0, 0,
    88.28173, 88.28173, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    21, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-03-09T10:45:00', '2023-03-09', 'Storage',
    0, 0, 94.86708, 0, 0,
    94.86708, 94.86708, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    20, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-03-07T10:28:00', '2023-03-07', 'Storage',
    0, 0, 94.86708, 0, 0,
    94.86708, 94.86708, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    19, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-03-04T10:12:00', '2023-03-04', 'Storage',
    0, 0, 94.4581, 0, 0,
    94.4581, 94.4581, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    18, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-02-24T16:42:00', '2023-02-24', NULL,
    0, 0, 0, 0, 114.72,
    114.72, 114.72, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    17, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-02-23T16:29:00', '2023-02-23', NULL,
    0, 0, 0, 0, 86.779,
    86.779, 86.779, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    16, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-02-19T16:06:00', '2023-02-19', 'Storage',
    0, 0, 78.336, 0, 0,
    78.336, 78.336, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    15, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-02-17T15:58:00', '2023-02-17', 'Storage',
    0, 0, 62.69202, 0, 0,
    62.69202, 62.69202, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    14, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-02-05T13:26:00', '2023-02-05', 'Storage',
    0, 0, 55.14418, 0, 0,
    55.14418, 55.14418, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    13, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-02-04T12:48:00', '2023-02-04', 'Storage',
    0, 0, 70.36962, 0, 0,
    70.36962, 70.36962, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    11, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-02-04T12:20:00', '2023-02-04', NULL,
    0, 0, 0, 0, 20.375,
    20.375, 20.375, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    10, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-02-03T11:41:00', '2023-02-03', NULL,
    0, 0, 0, 0, 44.9982,
    44.9982, 44.9982, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    9, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-02-01T11:13:00', '2023-02-01', NULL,
    0, 0, 0, 0, 77.22,
    77.22, 77.22, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    8, 'Rocket Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-01-30T10:49:00', '2023-01-30', NULL,
    0, 0, 0, 0, 83.692,
    83.692, 83.692, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    7, 'Arnold Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-01-30T09:45:00', '2023-01-30', NULL,
    0, 0, 0, 0, 39.07904,
    39.07904, 39.07904, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    6, 'Arnold Spirit', 'rum'::spirit_type, NULL, NULL,
    '2023-01-29T09:40:00', '2023-01-29', 'Storage',
    0, 0, 65.09278, 0, 0,
    65.09278, 65.09278, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    5, 'Arnold Strip', 'rum'::spirit_type, NULL, NULL,
    '2023-01-28T17:33:00', '2023-01-28', NULL,
    0, 0, 0, 0, 39.02094,
    39.02094, 39.02094, NULL, COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    4, 'Rocket', 'rum'::spirit_type, NULL, NULL,
    '2023-01-27T17:12:00', '2023-01-27', NULL,
    0, 0, 0, 0, 73.326,
    73.326, 73.326, NULL, COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    3, NULL, 'rum'::spirit_type, NULL, NULL,
    '2023-01-26T17:06:00', '2023-01-26', NULL,
    0, 0, 0, 0, 45.9584,
    45.9584, 45.9584, NULL, COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    2, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2023-01-24T14:57:00', '2023-01-24', 'Storage',
    0, 0, 37.5199, 0, 0,
    37.5199, 37.5199, NULL, COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

  INSERT INTO distillation_runs (
    run_number, lot_name, spirit_type, still_name, run_phase,
    run_timestamp, run_date, output_account,
    pg_feints, pg_heads, pg_hearts, pg_tails, pg_low_wines,
    pg_total, proof_gal, notes, logged_by
  ) VALUES (
    1, NULL, 'brandy'::spirit_type, NULL, NULL,
    '2023-01-06T14:49:00', '2023-01-06', 'Storage',
    0, 0, 56.6916, 0, 0,
    56.6916, 56.6916, NULL, COALESCE((SELECT id FROM users WHERE email = 'Donald@TimeAndTasks.com' LIMIT 1), v_user_id)
  ) ON CONFLICT (run_number) DO NOTHING;

END $$;

COMMIT;