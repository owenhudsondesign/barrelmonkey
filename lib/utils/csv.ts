interface BarrelRow {
  barrel_number: string
  spirit_type: string
  status: string
  size_gal: number | null
  fill_date: string | null
  entry_pf: number | null
  fill_proof_gal: number | null
  fill_wine_gal: number | null
  slot: string | null
  barrel_type: string | null
  cooperage: string | null
  new_or_used: string | null
  lot_number: string | null
  internal_lot_name: string | null
  current_dsp: string | null
  dump_date: string | null
  dump_proof: number | null
  dump_proof_gal: number | null
  dump_wine_gal: number | null
  notes: string | null
  rackhouse: { name: string } | null
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
