import { test, expect } from '@playwright/test'

test.describe('Tanks Page', () => {
  test('unauthenticated user is redirected to login', async ({ page }) => {
    await page.goto('/tanks')
    await expect(page).toHaveURL(/\/login/)
  })

  test('tank detail route redirects unauthenticated', async ({ page }) => {
    await page.goto('/tanks/some-id')
    await expect(page).toHaveURL(/\/login/)
  })
})
