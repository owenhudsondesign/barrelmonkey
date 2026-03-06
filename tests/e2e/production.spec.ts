import { test, expect } from '@playwright/test'

test.describe('Production Page', () => {
  test('unauthenticated user is redirected to login', async ({ page }) => {
    await page.goto('/production')
    await expect(page).toHaveURL(/\/login/)
  })

  test('fermentation detail route redirects unauthenticated', async ({ page }) => {
    await page.goto('/production/fermentation/some-id')
    await expect(page).toHaveURL(/\/login/)
  })

  test('distillation detail route redirects unauthenticated', async ({ page }) => {
    await page.goto('/production/distillation/some-id')
    await expect(page).toHaveURL(/\/login/)
  })
})
