import { MockWindow, MockInput } from './mock-window'

export function MockBatchEntry() {
  return (
    <MockWindow title="barrelmonkey /new batch">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-white/90 font-semibold text-sm">New Batch Entry</span>
          <span className="text-[10px] text-white/20">Feb 28, 2026</span>
        </div>

        <div className="flex gap-2">
          {['Bourbon', 'Rye', 'Vodka', 'Gin', 'Rum'].map((s, i) => (
            <div
              key={s}
              className={`text-[11px] px-3 py-1.5 rounded ${i === 0 ? 'bg-accent text-black font-semibold' : 'bg-white/[0.04] text-white/40'}`}
            >
              {s}
            </div>
          ))}
        </div>

        <div>
          <div className="text-[10px] text-white/30 uppercase tracking-wider mb-2">Grain Bill</div>
          <div className="flex gap-2">
            {[
              { grain: 'Corn', pct: 70 },
              { grain: 'Rye', pct: 20 },
              { grain: 'Malt', pct: 10 },
            ].map(({ grain, pct }) => (
              <div key={grain} className="flex-1 bg-white/[0.03] rounded-md p-2.5 border border-white/[0.06]">
                <div className="text-[10px] text-white/30 mb-1">{grain}</div>
                <div className="text-white/80 text-sm font-semibold">{pct}%</div>
                <div className="mt-1.5 h-1 rounded-full bg-white/10 overflow-hidden">
                  <div className="h-full bg-accent/70 rounded-full" style={{ width: `${pct}%` }} />
                </div>
              </div>
            ))}
          </div>
        </div>

        <div className="grid grid-cols-2 gap-3">
          <MockInput label="Mash Volume" value="350 gal" />
          <MockInput label="Original Proof" value="128.5" />
        </div>

        <button className="w-full bg-accent text-black text-sm font-semibold py-2.5 rounded-md">
          Log Batch
        </button>
      </div>
    </MockWindow>
  )
}
