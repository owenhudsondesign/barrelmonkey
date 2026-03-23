-- Merge "North Carolina" rackhouse into "Southern Distilling Offsite"
-- Move any barrels referencing the old rackhouse to the new one
UPDATE barrels SET rackhouse_id = (SELECT id FROM rackhouses WHERE name = 'Southern Distilling Offsite')
  WHERE rackhouse_id = (SELECT id FROM rackhouses WHERE name = 'North Carolina');

-- Deactivate the empty rackhouse
UPDATE rackhouses SET active = false WHERE name = 'North Carolina';
