-- Add spirit_age_date for TTB-compliant age calculation
-- When a barrel is filled from a tank containing dumped aged spirit,
-- the age should reflect the youngest spirit in the blend, not the fill date.
ALTER TABLE barrels ADD COLUMN IF NOT EXISTS spirit_age_date DATE;

-- Default: copy fill_date for all existing barrels (age = spirit age for fresh fills)
UPDATE barrels SET spirit_age_date = fill_date WHERE spirit_age_date IS NULL AND fill_date IS NOT NULL;

-- Fix the 3 hurricane rum blend barrels — spirit is 7.5 years old (youngest barrel ~Aug 2018)
UPDATE barrels SET spirit_age_date = '2018-08-20'
WHERE barrel_number IN ('2284', '2285', '2286');
