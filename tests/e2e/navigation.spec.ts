import { test, expect } from '@playwright/test'

test.describe('Navigation & Routing', () => {
  test('/ serves the landing page', async ({ page }) => {
    const response = await page.goto('/')

    expect(response?.status()).toBe(200)
    await expect(page.locator('main')).toBeVisible()
  })

  test('/login serves the login page', async ({ page }) => {
    const response = await page.goto('/login')

    expect(response?.status()).toBe(200)
    await expect(page.locator('input#email')).toBeVisible()
  })

  test('protected routes redirect to login', async ({ page }) => {
    // All these should redirect to /login for unauthenticated users
    const protectedRoutes = ['/barrels', '/dashboard', '/admin/import']

    for (const route of protectedRoutes) {
      await page.goto(route)
      await expect(page).toHaveURL(/\/login/, {
        timeout: 5000,
      })
    }
  })

  test('non-existent route redirects unauthenticated user to login', async ({ page }) => {
    await page.goto('/this-page-does-not-exist')

    // Middleware catches unknown routes and redirects to login
    await expect(page).toHaveURL(/\/login/)
  })

  test('static assets are accessible', async ({ page }) => {
    // Logo SVG should be served
    const response = await page.goto('/logo/barrelmonkey-logo-lockup.svg')

    expect(response?.status()).toBe(200)
    expect(response?.headers()['content-type']).toContain('svg')
  })
})
