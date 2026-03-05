import { MockWindow } from './mock-window'

const barrels = [
  { id: 'B-0142', type: 'Bourbon', loc: 'Rick 3A', age: '3.8 yr', status: 'aging' },
  { id: 'B-0267', type: 'Rye', loc: 'Rick 1B', age: '5.4 yr', status: 'ready' },
  { id: 'B-0389', type: 'Rum', loc: 'Rick 2C', age: '1.3 yr', status: 'aging' },
  { id: 'B-0401', type: 'Bourbon', loc: 'Rick 4D', age: '6.7 yr', status: 'check' },
  { id: 'B-0415', type: 'Gin', loc: 'Rick 1A', age: '0.8 yr', status: 'aging' },
  { id: 'B-0422', type: 'Bourbon', loc: 'Rick 2A', age: '4.1 yr', status: 'ready' },
]

const statusColor: Record<string, string> = {
  aging: 'bg-emerald-400',
  ready: 'bg-accent',
  check: 'bg-red-400',
}

export function MockBarrelInventory() {
  return (
    <MockWindow title="barrelmonkey /inventory">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-white/90 font-semibold text-sm">Barrel Inventory</span>
          <div className="flex items-center gap-3 text-[11px] text-white/30">
            <span>527 total</span>
            <span className="text-accent">12 ready</span>
          </div>
        </div>

        <div className="bg-white/[0.03] rounded-md px-3 py-2 border border-white/[0.06] text-white/20 text-xs">
          Search barrels...
        </div>

        <div className="grid grid-cols-2 gap-2">
          {barrels.map((b) => (
            <div key={b.id} className="bg-white/[0.03] rounded-lg p-3 border border-white/[0.06]">
              <div className="flex items-center justify-between mb-2">
                <span className="text-white/80 text-xs font-semibold">{b.id}</span>
                <div className={`w-2 h-2 rounded-full ${statusColor[b.status]}`} />
              </div>
              <div className="text-[10px] text-white/30 space-y-0.5">
                <div>{b.type}</div>
                <div>{b.loc}</div>
                <div className="text-white/50">{b.age}</div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </MockWindow>
  )
}
