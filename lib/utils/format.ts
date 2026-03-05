export function computeAge(fillDate: string | null): { years: number; months: number; display: string } {
  if (!fillDate) return { years: 0, months: 0, display: '—' }

  const fill = new Date(fillDate)
  const now = new Date()
  let years = now.getFullYear() - fill.getFullYear()
  let months = now.getMonth() - fill.getMonth()

  if (months < 0) {
    years--
    months += 12
  }

  if (years === 0 && months === 0) {
    const days = Math.floor((now.getTime() - fill.getTime()) / (1000 * 60 * 60 * 24))
    return { years: 0, months: 0, display: `${days}d` }
  }

  const parts: string[] = []
  if (years > 0) parts.push(`${years}yr`)
  if (months > 0) parts.push(`${months}mo`)

  return { years, months, display: parts.join(' ') }
}

export function formatDate(date: string | null): string {
  if (!date) return '—'
  return new Date(date).toLocaleDateString('en-US', {
    month: 'short',
    day: 'numeric',
    year: 'numeric',
  })
}

export function formatDateTime(date: string | null): string {
  if (!date) return '—'
  return new Date(date).toLocaleDateString('en-US', {
    month: 'short',
    day: 'numeric',
    year: 'numeric',
    hour: 'numeric',
    minute: '2-digit',
  })
}

export function formatProof(proof: number | null): string {
  if (proof == null) return '—'
  return `${proof.toFixed(1)} PF`
}

export function formatGallons(gal: number | null): string {
  if (gal == null) return '—'
  return `${gal.toFixed(1)} gal`
}

export function formatProofGallons(pg: number | null): string {
  if (pg == null) return '—'
  return `${pg.toFixed(2)} PG`
}
