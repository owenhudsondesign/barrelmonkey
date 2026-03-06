import { ProofCorrection } from '@/components/calculators/proof-correction'
import { DilutionCalculator } from '@/components/calculators/dilution-calculator'
import { GallonConversion } from '@/components/calculators/gallon-conversion'
import { GaugingCalculator } from '@/components/calculators/gauging-calculator'

export const metadata = {
  title: 'Calculators — BarrelMonkey',
}

export default function CalculatorsPage() {
  return (
    <div>
      <div className="mb-8">
        <h1 className="text-2xl font-bold text-white">Calculators</h1>
        <p className="text-sm text-white/40 mt-1">
          TTB-compliant proof correction, dilution, and gauging tools
        </p>
      </div>

      <div className="grid gap-6 lg:grid-cols-2">
        <ProofCorrection />
        <DilutionCalculator />
        <GallonConversion />
        <GaugingCalculator />
      </div>
    </div>
  )
}
