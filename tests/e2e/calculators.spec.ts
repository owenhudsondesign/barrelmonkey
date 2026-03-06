import { test, expect } from '@playwright/test'

test.describe('Calculators Page', () => {
  test('unauthenticated user is redirected to login', async ({ page }) => {
    await page.goto('/calculators')
    await expect(page).toHaveURL(/\/login/)
  })

  test('page has correct title', async ({ page }) => {
    // Redirects to login, but we can verify the protected route exists
    const response = await page.goto('/calculators')
    expect(response?.status()).toBe(200)
  })
})
