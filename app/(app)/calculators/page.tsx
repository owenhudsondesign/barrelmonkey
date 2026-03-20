import { ProofCorrectionCalc } from '@/components/calculators/proof-correction-calc'
import { DilutionCalc } from '@/components/calculators/dilution-calc'
import { ProofGallonsCalc } from '@/components/calculators/proof-gallons-calc'

export const metadata = {
  title: 'Calculators — BarrelMonkey',
}

export default function CalculatorsPage() {
  return (
    <div>
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white">Calculators</h1>
        <p className="text-sm text-white/40 mt-1">
          Proof correction, dilution, and conversion tools
        </p>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <ProofCorrectionCalc />
        <DilutionCalc />
        <ProofGallonsCalc />
      </div>
    </div>
  )
}
