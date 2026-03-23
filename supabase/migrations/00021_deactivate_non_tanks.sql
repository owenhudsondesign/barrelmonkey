-- ============================================================
-- BARRELMONKEY — Deactivate non-tank entries
-- 39 entries that are lot codes, placeholders, or one-off refs
-- Keeps records for FK integrity, just hides from active counts
-- ============================================================

UPDATE tanks SET active = false
WHERE name IN ('090-PD', '097- Glass Carboy', '1-23J31A', '1-24A04A', '1-24F13', '10-22F23C', '11-23A11A6', '11-25D08', '12-24F13', '12-25D08', '121- PD', '2-24F13', '22F23C-49', '25I11-5', '25I11-6', '25I11-7', '25I11-8', '3-24F13', '4-24F13', '4-25D08', '5-23A11A6', '5-23J31A', '6-23J31A', '7-23J31A', '8-25D08', 'ArnoldPotStill', 'FDC 1.3', 'FDC 14.3', 'FDC 16.3', 'FDC 2.3', 'FDC 3.3', 'FDC 5.3', 'FIX ME!', 'JOseph "Zigaboo" Modeliste- SD', 'Katherine Bigelow', 'NA', 'PD- NH HR TIB', 'PD- NH NR TIB', 'Sojourner Trouth');
