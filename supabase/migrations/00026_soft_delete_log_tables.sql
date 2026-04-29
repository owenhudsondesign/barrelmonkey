-- Soft-delete columns for log/event tables.
-- Records remain in the database for audit + TTB compliance,
-- but are hidden from the UI when deleted_at IS NOT NULL.

ALTER TABLE barrel_events        ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE fermentation_batches ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE distillation_runs    ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE dump_batches         ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE batching_runs        ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE bottling_runs        ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE tib_records          ADD COLUMN IF NOT EXISTS deleted_at timestamptz;

-- Partial indexes: only the active (non-deleted) rows need indexing
-- since that's what every query filters on.
CREATE INDEX IF NOT EXISTS idx_barrel_events_active        ON barrel_events        (event_date)    WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_fermentation_batches_active ON fermentation_batches (start_date)    WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_distillation_runs_active    ON distillation_runs    (run_date)      WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_dump_batches_active         ON dump_batches         (dump_date)     WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_batching_runs_active        ON batching_runs        (batch_date)    WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_bottling_runs_active        ON bottling_runs        (bottle_date)   WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_tib_records_active          ON tib_records          (transfer_date) WHERE deleted_at IS NULL;
