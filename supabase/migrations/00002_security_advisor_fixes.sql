-- ============================================================
-- FIX: Supabase Security Advisor issues
-- 3 Errors:  Security Definer Views
-- 2 Warnings: Function Search Path Mutable
-- ============================================================


-- ============================================================
-- FIX: Function Search Path Mutable
-- Pin search_path to prevent search path manipulation attacks
-- ============================================================

CREATE OR REPLACE FUNCTION public.get_user_role()
RETURNS user_role AS $$
  SELECT role FROM public.users WHERE id = auth.uid()
$$ LANGUAGE sql SECURITY DEFINER STABLE SET search_path = '';

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.users (id, email, full_name, role)
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'full_name', ''),
    COALESCE(
      (NEW.raw_user_meta_data->>'role')::public.user_role,
      'producer'
    )
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = '';


-- ============================================================
-- FIX: Security Definer Views
-- Recreate views with SECURITY INVOKER so they run with the
-- caller's permissions instead of the view owner's
-- ============================================================

CREATE OR REPLACE VIEW active_barrels
WITH (security_invoker = true)
AS
SELECT
  b.id,
  b.barrel_number,
  b.spirit_type,
  b.status,
  b.fill_date,
  b.entry_pf,
  b.fill_proof_gal,
  b.fill_wine_gal,
  b.size_gal,
  b.barrel_type,
  r.name AS rackhouse,
  r.is_offsite,
  b.slot,
  EXTRACT(YEAR FROM AGE(now(), b.fill_date::TIMESTAMPTZ))::INT AS years_aging,
  b.notes
FROM public.barrels b
LEFT JOIN public.rackhouses r ON r.id = b.rackhouse_id
WHERE b.status = 'aging'
ORDER BY b.fill_date ASC;

CREATE OR REPLACE VIEW barrel_timeline
WITH (security_invoker = true)
AS
SELECT
  b.id AS barrel_id,
  b.barrel_number,
  b.spirit_type,
  b.status,
  b.fill_date,
  b.dump_date,
  be.id AS event_id,
  be.event_type,
  be.event_date,
  be.proof,
  be.proof_gal,
  be.wine_gal,
  be.net_weight_lb,
  be.temp_f,
  be.rack,
  be.row,
  be.position,
  r_event.name AS event_rackhouse,
  r_from.name  AS moved_from,
  r_to.name    AS moved_to,
  be.notes     AS event_notes,
  u.full_name  AS logged_by_name
FROM public.barrels b
JOIN public.barrel_events be ON be.barrel_id = b.id
LEFT JOIN public.rackhouses r_event ON r_event.id = be.rackhouse_id
LEFT JOIN public.rackhouses r_from  ON r_from.id  = be.from_rackhouse_id
LEFT JOIN public.rackhouses r_to    ON r_to.id    = be.to_rackhouse_id
LEFT JOIN public.users u ON u.id = be.logged_by
ORDER BY b.barrel_number, be.event_date ASC;

CREATE OR REPLACE VIEW monthly_production
WITH (security_invoker = true)
AS
SELECT
  DATE_TRUNC('month', run_date::TIMESTAMPTZ) AS month,
  spirit_type,
  COUNT(*) AS run_count,
  SUM(proof_gal) AS total_proof_gal,
  SUM(pg_total) AS total_pg
FROM public.distillation_runs
GROUP BY 1, 2
ORDER BY 1 DESC, 2;
