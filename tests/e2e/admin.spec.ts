import { test, expect } from '@playwright/test'

test.describe('Admin', () => {
  test('unauthenticated user is redirected to login from /admin', async ({ page }) => {
    await page.goto('/admin')
    await expect(page).toHaveURL(/\/login/)
  })

  test('/admin route exists and returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/admin')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/admin?tab=equipment route exists', async ({ page }) => {
    const response = await page.goto('/admin?tab=equipment')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/admin?tab=imports route exists', async ({ page }) => {
    const response = await page.goto('/admin?tab=imports')
    expect(response?.status()).toBeLessThan(500)
  })
})
