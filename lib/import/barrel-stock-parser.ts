// Parse WS "Barrel Stock" freetext field
// e.g. "59g Used Wine Scraped ReToasted" → structured fields

export interface ParsedBarrelStock {
  barrel_condition: 'new' | 'used' | null
  previous_spirit: string | null
  barrel_treatment: string | null
  cooperage: string | null
}

const SPIRIT_KEYWORDS: Record<string, string> = {
  wine: 'wine',
  bourbon: 'bourbon',
  rum: 'rum',
  sherry: 'sherry',
  'single malt': 'single_malt',
  'single_malt': 'single_malt',
  cognac: 'cognac',
  port: 'port',
  brandy: 'brandy',
  rye: 'rye',
  whiskey: 'whiskey',
  whisky: 'whiskey',
}

const COOPERAGE_NAMES = [
  'nadalie',
  'kelvin',
  'independent stave',
  'seguin moreau',
  'tonnellerie o',
  'demptos',
  'taransaud',
]

const TREATMENT_KEYWORDS = [
  'scraped retoasted',
  'scraped_retoasted',
  'retoasted',
  'recharred',
  'charred',
  'toasted',
  'scraped',
  'medium toast',
  'heavy toast',
  'light toast',
  'medium char',
  'heavy char',
  '#3 char',
  '#4 char',
]

export function parseBarrelStock(raw: string | null | undefined): ParsedBarrelStock {
  if (!raw) return { barrel_condition: null, previous_spirit: null, barrel_treatment: null, cooperage: null }

  const text = raw.trim()
  const lower = text.toLowerCase()

  // Barrel condition
  let barrel_condition: 'new' | 'used' | null = null
  if (/\bused\b/i.test(text)) barrel_condition = 'used'
  else if (/\bnew\b/i.test(text)) barrel_condition = 'new'

  // Previous spirit
  let previous_spirit: string | null = null
  for (const [keyword, value] of Object.entries(SPIRIT_KEYWORDS)) {
    if (lower.includes(keyword)) {
      previous_spirit = value
      break
    }
  }

  // Cooperage
  let cooperage: string | null = null
  for (const name of COOPERAGE_NAMES) {
    if (lower.includes(name)) {
      cooperage = name.charAt(0).toUpperCase() + name.slice(1)
      break
    }
  }

  // Treatment
  let barrel_treatment: string | null = null
  for (const treatment of TREATMENT_KEYWORDS) {
    if (lower.includes(treatment.toLowerCase())) {
      barrel_treatment = treatment.replace(/\s+/g, '_').toLowerCase()
      break
    }
  }

  return { barrel_condition, previous_spirit, barrel_treatment, cooperage }
}
