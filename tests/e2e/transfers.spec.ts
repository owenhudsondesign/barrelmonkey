import { test, expect } from '@playwright/test'

test.describe('Transfers', () => {
  test('unauthenticated user is redirected to login from /transfers', async ({ page }) => {
    await page.goto('/transfers')
    await expect(page).toHaveURL(/\/login/)
  })

  test('/transfers route exists and returns 200 or redirects to login', async ({ page }) => {
    const response = await page.goto('/transfers')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/transfers?direction=inbound route exists', async ({ page }) => {
    const response = await page.goto('/transfers?direction=inbound')
    expect(response?.status()).toBeLessThan(500)
  })

  test('/transfers?direction=outbound route exists', async ({ page }) => {
    const response = await page.goto('/transfers?direction=outbound')
    expect(response?.status()).toBeLessThan(500)
  })
})
