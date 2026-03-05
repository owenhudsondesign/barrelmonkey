import { test, expect } from '@playwright/test'

test.describe('Landing Page', () => {
  test('renders hero section with headline and nav', async ({ page }) => {
    await page.goto('/')

    await expect(page.locator('h1')).toContainText('Distillery management')
    await expect(page.locator('h1')).toContainText('Triple Eight')
    await expect(page.locator('nav img[alt="BarrelMonkey"]')).toBeVisible()
  })

  test('renders all major sections', async ({ page }) => {
    await page.goto('/')

    // Section labels that should be visible as user scrolls
    const sectionLabels = [
      'The Situation',
      "What We're Building",
      "Who It's For",
      'Meet You Where You Are',
      'Smarter, Not Riskier',
      'The Case',
      'How We Get There',
    ]

    for (const label of sectionLabels) {
      await expect(page.getByText(label, { exact: true })).toBeAttached()
    }
  })

  test('renders feature mock UIs', async ({ page }) => {
    await page.goto('/')

    // Mock windows should be present in the DOM
    await expect(page.getByText('barrelmonkey /new batch')).toBeAttached()
    await expect(page.getByText('barrelmonkey /inventory')).toBeAttached()
    await expect(page.getByText('barrelmonkey /TTB reports')).toBeAttached()
    await expect(page.getByText('barrelmonkey /calculators')).toBeAttached()
  })

  test('renders comparison table with both columns', async ({ page }) => {
    await page.goto('/')

    const table = page.locator('.comparison-table')
    await expect(table).toBeAttached()
    await expect(table.getByText('Whiskey Systems')).toBeAttached()
    await expect(table.getByText('BarrelMonkey')).toBeAttached()
  })

  test('renders footer with branding', async ({ page }) => {
    await page.goto('/')

    const footer = page.locator('footer')
    await expect(footer.getByText('Built for Triple Eight Distillery')).toBeAttached()
    await expect(footer.getByText('barrelmonkey.vercel.app')).toBeAttached()
  })

  test('page has correct meta title', async ({ page }) => {
    await page.goto('/')

    // Default Next.js title or custom one
    await expect(page).toHaveTitle(/BarrelMonkey|barrelmonkey/i)
  })
})
