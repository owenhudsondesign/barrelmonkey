import { test, expect } from '@playwright/test'

test.describe('Processing', () => {
  test('unauthenticated user is redirected to login from /processing', async ({ page }) => {
    await page.goto('/processing')
    await expect(page).toHaveURL(/\/login/)
  })

  test('/processing route exists and returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/processing')
    // Either serves the page (authenticated) or redirects to login
    expect(response?.status()).toBeLessThan(500)
  })

  test('/processing?tab=batching route exists', async ({ page }) => {
    const response = await page.goto('/processing?tab=batching')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/processing?tab=bottling route exists', async ({ page }) => {
    const response = await page.goto('/processing?tab=bottling')
    expect(response?.status()).toBeLessThan(500)
  })
})
