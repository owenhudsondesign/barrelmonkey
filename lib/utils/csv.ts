import type { Barrel, Rackhouse } from '@/lib/types/database'

interface BarrelRow extends Barrel {
  rackhouse: Pick<Rackhouse, 'name'> | null
}

export function barrelsToCsv(barrels: BarrelRow[]): string {
  const headers = [
    'Barrel #',
    'Spirit Type',
    'Status',
    'Size (gal)',
    'Fill Date',
    'Entry PF',
    'Original PG',
    'Fill WG',
    'Slot',
    'Rackhouse',
    'Barrel Type',
    'Cooperage',
    'New/Used',
    'Lot Number',
    'Internal Lot',
    'DSP',
    'Dump Date',
    'Dump Proof',
    'Dump PG',
    'Dump WG',
    'Notes',
  ]

  const rows = barrels.map((b) => [
    b.barrel_number,
    b.spirit_type,
    b.status,
    b.size_gal ?? '',
    b.fill_date ?? '',
    b.entry_pf ?? '',
    b.fill_proof_gal ?? '',
    b.fill_wine_gal ?? '',
    b.slot ?? '',
    b.rackhouse?.name ?? '',
    b.barrel_type ?? '',
    b.cooperage ?? '',
    b.new_or_used ?? '',
    b.lot_number ?? '',
    b.internal_lot_name ?? '',
    b.current_dsp ?? '',
    b.dump_date ?? '',
    b.dump_proof ?? '',
    b.dump_proof_gal ?? '',
    b.dump_wine_gal ?? '',
    b.notes ?? '',
  ])

  const escape = (val: string | number) => {
    const str = String(val)
    if (str.includes(',') || str.includes('"') || str.includes('\n')) {
      return `"${str.replace(/"/g, '""')}"`
    }
    return str
  }

  return [
    headers.map(escape).join(','),
    ...rows.map((row) => row.map(escape).join(',')),
  ].join('\n')
}
