import { test, expect } from '@playwright/test'

test.describe('Authentication', () => {
  test('unauthenticated user is redirected to login from /barrels', async ({ page }) => {
    await page.goto('/barrels')

    // Middleware should redirect to /login
    await expect(page).toHaveURL(/\/login/)
  })

  test('unauthenticated user is redirected to login from /dashboard', async ({ page }) => {
    await page.goto('/dashboard')

    await expect(page).toHaveURL(/\/login/)
  })

  test('login page renders form with email and password fields', async ({ page }) => {
    await page.goto('/login')

    await expect(page.locator('h1')).toContainText('BarrelMonkey')
    await expect(page.locator('input#email')).toBeVisible()
    await expect(page.locator('input#password')).toBeVisible()
    await expect(page.getByRole('button', { name: /sign in/i })).toBeVisible()
  })

  test('login form validates empty email', async ({ page }) => {
    await page.goto('/login')

    // Submit empty form
    await page.getByRole('button', { name: /sign in/i }).click()

    await expect(page.getByText(/valid email/i)).toBeVisible()
  })

  test('login form validates empty password', async ({ page }) => {
    await page.goto('/login')

    await page.locator('input#email').fill('test@example.com')
    await page.getByRole('button', { name: /sign in/i }).click()

    await expect(page.getByText(/enter your password/i)).toBeVisible()
  })

  test('login form shows error for invalid credentials', async ({ page }) => {
    await page.goto('/login')

    await page.locator('input#email').fill('invalid@example.com')
    await page.locator('input#password').fill('wrongpassword')
    await page.getByRole('button', { name: /sign in/i }).click()

    // Button should show loading state briefly, then error
    await expect(page.getByText(/signing in/i)).toBeVisible()

    // Wait for error response (Supabase returns auth error)
    await expect(page.locator('.text-error')).toBeVisible({ timeout: 10000 })
  })

  test('public landing page is accessible without auth', async ({ page }) => {
    await page.goto('/')

    // Should NOT redirect — landing page is public
    await expect(page).toHaveURL('/')
    await expect(page.locator('h1')).toContainText('Distillery management')
  })
})
