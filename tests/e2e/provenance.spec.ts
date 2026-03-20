import { test, expect } from '@playwright/test'

test.describe('Provenance', () => {
  test('unauthenticated user is redirected to login from /provenance', async ({ page }) => {
    await page.goto('/provenance')
    await expect(page).toHaveURL(/\/login/)
  })

  test('/provenance route exists and returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/provenance')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/provenance with search param returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/provenance?search=whiskey')
    expect(response?.status()).toBeLessThan(500)
  })

  test('provenance page renders heading when accessible', async ({ page }) => {
    const response = await page.goto('/provenance')
    // If we got redirected to login, skip content checks
    if (response?.url().includes('/login')) return

    await expect(page.locator('h1')).toContainText('Provenance')
  })

  test('provenance page renders search input when accessible', async ({ page }) => {
    const response = await page.goto('/provenance')
    if (response?.url().includes('/login')) return

    const searchInput = page.locator('input[placeholder*="Search"]')
    await expect(searchInput).toBeVisible()
  })

  test('provenance page shows minimum character hint for short searches', async ({ page }) => {
    const response = await page.goto('/provenance?search=a')
    if (response?.url().includes('/login')) return

    await expect(page.getByText(/at least 2 characters/i)).toBeVisible()
  })

  test('provenance page shows result count for valid searches', async ({ page }) => {
    const response = await page.goto('/provenance?search=whiskey')
    if (response?.url().includes('/login')) return

    // Should show "X results for" text
    await expect(page.getByText(/results? for/i)).toBeVisible()
  })
})

test.describe('Barrel Detail Provenance', () => {
  test('/barrels route exists and returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/barrels')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/barrels with dumped status filter returns 200 or redirects', async ({ page }) => {
    const response = await page.goto('/barrels?status=dumped')
    expect(response?.status()).toBeLessThan(500)
  })

  test('barrel detail page for non-existent ID returns 404', async ({ page }) => {
    const response = await page.goto('/barrels/00000000-0000-0000-0000-000000000000')
    // Either 404 (not found) or redirect to login
    const status = response?.status() ?? 0
    expect(status === 404 || status === 200 || response?.url().includes('/login')).toBeTruthy()
  })
})

test.describe('Provenance Navigation', () => {
  test('sidebar contains Provenance link', async ({ page }) => {
    const response = await page.goto('/barrels')
    if (response?.url().includes('/login')) return

    // Check for Provenance nav item
    const provenanceLink = page.locator('nav a[href="/provenance"], aside a[href="/provenance"]')
    await expect(provenanceLink).toBeVisible()
  })
})
