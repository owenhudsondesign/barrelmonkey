-- ============================================================
-- BARRELMONKEY — Import TIB Records
-- 122 incoming + 5 outgoing from WhiskeySystems export
-- ============================================================

BEGIN;

DO $$ DECLARE v_user_id UUID;
BEGIN
  SELECT id INTO v_user_id FROM users LIMIT 1;
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No user found. Import users first.';
  END IF;

  -- ============================================================
  -- TIB INCOMING
  -- ============================================================
  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    117, 'inbound'::tib_direction, '2025-09-23T12:23:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    110, 'inbound'::tib_direction, '2025-09-23T10:03:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    110, 'inbound'::tib_direction, '2025-09-23T10:03:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    110, 'inbound'::tib_direction, '2025-09-23T10:03:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    110, 'inbound'::tib_direction, '2025-09-23T10:03:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    110, 'inbound'::tib_direction, '2025-09-23T10:03:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    110, 'inbound'::tib_direction, '2025-09-23T10:03:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    '2025-1478', 'SO67361', 1,
    105.4, 54.98, 191.71, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    97, 'inbound'::tib_direction, '2025-05-09T12:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 54.87, 192, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    81, 'inbound'::tib_direction, '2024-08-15T16:34:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Ultra Pure Kentucky, LLC', 'DSP-KY-20124',
    NULL, NULL, 1,
    105.35, 55, 191.55, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'randy@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    80, 'inbound'::tib_direction, '2024-04-04T16:23:00', 'bourbon'::spirit_type,
    NULL, NULL, NULL, 'Southern Distilling', NULL,
    NULL, NULL, 72,
    4197.6, 3816, NULL, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    67, 'inbound'::tib_direction, '2024-01-16T10:14:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    'Inv 70888', NULL, 1,
    104.188, 54.26, 192.02, 4.605424808999117,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    66, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    65, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    64, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    63, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    62, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    61, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    60, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    59, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    58, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    57, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    56, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    55, 'inbound'::tib_direction, '2023-10-11T11:22:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Eagle Alcohol St Louis MO', 'DSP-MO-20019',
    '69460', NULL, 1,
    104.285, 54.89, 189.99, 11.135350242124947,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    54, 'inbound'::tib_direction, '2021-10-18T00:00:00', 'bourbon'::spirit_type,
    'Bourbon', NULL, 'OG FIll 4/16/18', 'MGPI of Indiana LLC', NULL,
    'SO47900', NULL, 1,
    50.535, 45, 112.3, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    53, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    52, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    51, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    50, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    49, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    48, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    47, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    46, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    45, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    44, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    43, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    42, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    41, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    40, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    39, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    38, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    37, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    36, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    35, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    34, 'inbound'::tib_direction, '2023-06-29T15:16:00', 'vodka'::spirit_type,
    '22F23C', NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '365', NULL, 1,
    104.285, 54.89, 189.99, 10.817759025746751,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    32, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    31, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    30, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    29, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    28, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    27, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    26, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    25, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    24, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    23, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    22, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    21, 'inbound'::tib_direction, '2023-05-30T13:40:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    'Inv 364; UltraPure 67608', NULL, 1,
    104.3, 54.89, 190.02, 11.850814956855226,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    20, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    19, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    18, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    17, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 0,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    16, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    15, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    14, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    13, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    12, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    11, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    10, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    9, 'inbound'::tib_direction, '2023-01-25T15:51:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '363', NULL, 1,
    103.302, 54, 191.3, 5.877814563125593,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    8, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    7, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    6, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    5, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    4, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    3, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    2, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, transfer_date, spirit_type,
    lot_name, ttb_formula, notes, dsp_name, dsp_number,
    ref_number, po_number, container_ct,
    total_pg, total_wg, pf, price_per_pg,
    dest_account, logged_by
  ) VALUES (
    1, 'inbound'::tib_direction, '2023-01-25T15:42:00', 'vodka'::spirit_type,
    NULL, NULL, NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003',
    '362', NULL, 1,
    104.29, 54.89, 190, 12.336369738229935,
    'Storage', COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  -- ============================================================
  -- TIB OUTGOING
  -- ============================================================
  INSERT INTO tib_records (
    tib_number, direction, tib_type, transfer_date, spirit_type,
    notes, dsp_name, dsp_number, ref_number,
    container_ct, dest_account,
    total_pg, total_wg, pf, wip_value, tax_due,
    logged_by
  ) VALUES (
    6, 'outbound'::tib_direction, 'TaxPaid', '2025-08-13T17:09:00', 'vodka'::spirit_type,
    NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003', NULL,
    1, 'Storage',
    104.188, 54.26, 192.02, 479.83, 281.3076,
    COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, tib_type, transfer_date, spirit_type,
    notes, dsp_name, dsp_number, ref_number,
    container_ct, dest_account,
    total_pg, total_wg, pf, wip_value, tax_due,
    logged_by
  ) VALUES (
    5, 'outbound'::tib_direction, 'TaxPaid', '2025-08-13T16:43:00', 'vodka'::spirit_type,
    NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003', NULL,
    1, 'Storage',
    105.35, 54.98, 191.62, 0, 284.445,
    COALESCE((SELECT id FROM users WHERE email = 'bryan@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, tib_type, transfer_date, spirit_type,
    notes, dsp_name, dsp_number, ref_number,
    container_ct, dest_account,
    total_pg, total_wg, pf, wip_value, tax_due,
    logged_by
  ) VALUES (
    2, 'outbound'::tib_direction, 'TaxPaid', '2023-12-12T11:46:00', 'vodka'::spirit_type,
    NULL, 'Cisco Brewers, Distillers & Vintners', 'DSP-MA-21003', NULL,
    1, 'Storage',
    104.186, 54.26, 192.01, 0, 281.3022,
    COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, tib_type, transfer_date, spirit_type,
    notes, dsp_name, dsp_number, ref_number,
    container_ct, dest_account,
    total_pg, total_wg, pf, wip_value, tax_due,
    logged_by
  ) VALUES (
    1, 'outbound'::tib_direction, 'TIB', '2023-02-17T17:43:00', 'other'::spirit_type,
    NULL, 'Fabrizia Spirits', NULL, NULL,
    2, 'Multiple',
    41.736, 45.48, NULL, 0, 0,
    COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

  INSERT INTO tib_records (
    tib_number, direction, tib_type, transfer_date, spirit_type,
    notes, dsp_name, dsp_number, ref_number,
    container_ct, dest_account,
    total_pg, total_wg, pf, wip_value, tax_due,
    logged_by
  ) VALUES (
    3, 'outbound'::tib_direction, 'TIB', '2023-02-17T13:38:00', 'rum'::spirit_type,
    NULL, 'Fabrizia Spirits', NULL, NULL,
    3, 'Storage',
    217.91, 165, NULL, 0, 0,
    COALESCE((SELECT id FROM users WHERE email = 'nicole@ciscobrewers888.com' LIMIT 1), v_user_id)
  ) ON CONFLICT DO NOTHING;

END $$;

COMMIT;