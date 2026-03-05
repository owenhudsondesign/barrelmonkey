import { ImportWizard } from '@/components/import/import-wizard'

export const metadata = {
  title: 'Import Data — BarrelMonkey',
}

export default function ImportPage() {
  return (
    <div>
      <h1 className="text-2xl font-bold text-white tracking-tight mb-1">Import Data</h1>
      <p className="text-white/40 text-sm mb-8">
        Import CSV exports from Whiskey Systems. Follow the order below.
      </p>
      <ImportWizard />
    </div>
  )
}
