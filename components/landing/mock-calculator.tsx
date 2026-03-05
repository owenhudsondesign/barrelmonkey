import { MockWindow, MockInput } from './mock-window'

export function MockCalculator() {
  return (
    <MockWindow title="barrelmonkey /calculators">
      <div className="space-y-4">
        <div className="flex gap-2">
          {['Proof Correction', 'Temp Adjust', 'Gallons', 'Cut-to-Proof'].map((tab, i) => (
            <div
              key={tab}
              className={`text-[11px] px-3 py-1.5 rounded ${i === 0 ? 'bg-accent text-black font-semibold' : 'bg-white/[0.04] text-white/30'}`}
            >
              {tab}
            </div>
          ))}
        </div>

        <div className="grid grid-cols-2 gap-3">
          <MockInput label="Observed Proof" value="128.5" />
          <MockInput label="Temperature" value="68\u00b0F" />
        </div>

        <div className="border-t border-white/[0.06] pt-4 space-y-3">
          <div className="text-[10px] text-white/30 uppercase tracking-wider">Results</div>
          <div className="grid grid-cols-3 gap-3">
            {[
              { label: 'Corrected Proof', value: '129.2' },
              { label: 'Wine Gallons', value: '350.0' },
              { label: 'Proof Gallons', value: '451.9' },
            ].map(({ label, value }) => (
              <div key={label} className="bg-accent/5 border border-accent/20 rounded-md p-2.5 text-center">
                <div className="text-accent text-lg font-bold">{value}</div>
                <div className="text-[9px] text-white/30 mt-0.5">{label}</div>
              </div>
            ))}
          </div>
          <div className="text-[10px] text-white/20 flex items-center gap-1.5">
            <div className="w-1 h-1 rounded-full bg-emerald-400" />
            TTB Table 1 reference applied at 68&deg;F
          </div>
        </div>
      </div>
    </MockWindow>
  )
}
