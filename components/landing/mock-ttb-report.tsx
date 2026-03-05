import { MockWindow } from './mock-window'

const forms = [
  { id: '5110.40', name: 'Production Report', status: 'ready', icon: '\u2713' },
  { id: '5110.11', name: 'Storage Report', status: 'ready', icon: '\u2713' },
  { id: '5110.28', name: 'Processing Report', status: 'attention', icon: '!' },
]

export function MockTTBReport() {
  return (
    <MockWindow title="barrelmonkey /TTB reports">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-white/90 font-semibold text-sm">February 2026</span>
          <span className="text-[10px] text-white/20">Due Mar 15</span>
        </div>

        <div className="space-y-2">
          {forms.map((f) => (
            <div
              key={f.id}
              className="flex items-center gap-3 bg-white/[0.03] rounded-lg p-3.5 border border-white/[0.06]"
            >
              <div
                className={`w-6 h-6 rounded-full flex items-center justify-center text-[11px] font-bold ${
                  f.status === 'ready'
                    ? 'bg-emerald-500/20 text-emerald-400'
                    : 'bg-amber-500/20 text-amber-400'
                }`}
              >
                {f.icon}
              </div>
              <div className="flex-1">
                <div className="text-white/80 text-xs font-semibold">Form {f.id}</div>
                <div className="text-[10px] text-white/30">{f.name}</div>
              </div>
              <div
                className={`text-[10px] px-2 py-0.5 rounded ${
                  f.status === 'ready'
                    ? 'bg-emerald-500/10 text-emerald-400'
                    : 'bg-amber-500/10 text-amber-400'
                }`}
              >
                {f.status === 'ready' ? 'Ready' : '2 entries'}
              </div>
            </div>
          ))}
        </div>

        <div className="flex items-center gap-2 text-[10px] text-white/20 pt-1">
          <div className="w-full h-1.5 rounded-full bg-white/[0.06] overflow-hidden">
            <div className="h-full w-[85%] rounded-full bg-emerald-500/50" />
          </div>
          <span className="whitespace-nowrap">85% complete</span>
        </div>

        <button className="w-full bg-accent text-black text-sm font-semibold py-2.5 rounded-md">
          Review &amp; Submit
        </button>
      </div>
    </MockWindow>
  )
}
