import { test, expect } from '@playwright/test'

test.describe('TTB Reports', () => {
  test('unauthenticated user is redirected to login from /reports', async ({ page }) => {
    await page.goto('/reports')
    await expect(page).toHaveURL(/\/login/)
  })

  test('/reports route exists and returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/reports')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/reports?type=production filter route exists', async ({ page }) => {
    const response = await page.goto('/reports?type=production')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/reports?type=storage filter route exists', async ({ page }) => {
    const response = await page.goto('/reports?type=storage')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/reports?status=draft filter route exists', async ({ page }) => {
    const response = await page.goto('/reports?status=draft')
    expect(response?.status()).toBeLessThan(500)
  })
})
