# CLAUDE.md — BarrelMonkey

## Project Overview

**BarrelMonkey** is an enterprise-grade distillery management platform for Triple Eight Distillery. It handles production tracking, barrel inventory, TTB regulatory reporting, and operational workflows — all in one system.

**Tech Stack:** Next.js 15 (App Router) · React 19 · TypeScript 5 · Tailwind CSS 3.4 · Vercel deployment

**Live:** https://barrelmonkey.vercel.app

## Critical Rules

### 1. Code Organization

- Organize by feature/domain, not by type
- Many small files over few large files — 200-400 lines typical, 800 max
- High cohesion, low coupling
- Co-locate tests with source files (`*.test.ts` next to `*.ts`)

### 2. Code Style

- Strict TypeScript — no `any`, no `as` casts without justification
- Immutability always — never mutate objects or arrays
- No `console.log` in production code (use structured logging)
- Prefer `const` over `let`, never use `var`
- Use early returns to reduce nesting
- Conventional commits: `feat:`, `fix:`, `refactor:`, `docs:`, `test:`, `chore:`

### 3. Testing

- TDD: Write tests first when adding new features
- Unit tests for utilities and business logic
- Integration tests for API routes
- E2E tests for critical user flows
- Minimum 80% coverage target

### 4. Security

- No hardcoded secrets — use environment variables
- Validate all user inputs (Zod)
- Parameterized queries only — no string concatenation for SQL
- CSRF protection enabled
- Sanitize all outputs to prevent XSS

### 5. Performance

- Use Next.js Image component for all images
- Lazy load below-the-fold content
- Prefer Server Components — use `'use client'` only when needed
- Keep bundle size minimal — audit imports

## File Structure

```
app/
  (auth)/              # Auth pages (login)
  (app)/               # Authenticated app shell
    barrels/           # Barrel list + [id] detail
    dashboard/         # Admin dashboard
  auth/callback/       # Magic link callback
  layout.tsx           # Root layout
  page.tsx             # Landing page (public)
  globals.css
components/
  barrels/             # Barrel list, detail, timeline, filters
  ui/                  # Sidebar, badges, shared UI
lib/
  supabase/            # Client, server, middleware Supabase factories
  queries/             # Data fetching (barrels, etc.)
  types/               # TypeScript types matching schema
  utils/               # Formatters, CSV export
supabase/
  migrations/          # SQL migrations
  seed.sql             # Reference data
public/
  images/              # Static images
  logo/                # Brand assets
```

## Key Patterns

### API Response Format

```typescript
interface ApiResponse<T> {
  success: boolean
  data?: T
  error?: string
  message?: string
}
```

### Error Handling

```typescript
try {
  const result = await operation()
  return { success: true, data: result }
} catch (error) {
  logger.error('Operation failed:', error)
  return { success: false, error: 'User-friendly message' }
}
```

## Environment Variables

```bash
# Required — Supabase
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
SUPABASE_SERVICE_ROLE_KEY=
```

## Available Commands

- `/plan` — Create implementation plan
- `/tdd` — Test-driven development workflow
- `/code-review` — Review code quality
- `/build-fix` — Fix build errors
- `/e2e` — Generate and run E2E tests

## Git Workflow

- Never commit to `main` directly — use feature branches
- Branch naming: `feat/description`, `fix/description`, `refactor/description`
- PRs require review before merge
- All tests must pass before merge
- Squash merge to keep history clean

## Domain Context

- **Batch** — A production run (mashing, fermenting, distilling)
- **Barrel** — A storage container for aging spirits, tracked by ID
- **TTB** — Alcohol and Tobacco Tax and Trade Bureau (federal regulator)
- **Gauge** — Measuring alcohol proof/volume in a barrel
- **Rickhouse** — Warehouse where barrels age
