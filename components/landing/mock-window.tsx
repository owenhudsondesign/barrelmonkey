export function MockWindow({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div className="mock-window">
      <div className="mock-window-chrome">
        <div className="mock-dot" />
        <div className="mock-dot" />
        <div className="mock-dot" />
        <span className="ml-3 text-[11px] text-white/30 tracking-wide">{title}</span>
      </div>
      <div className="p-5">{children}</div>
    </div>
  )
}

export function MockInput({ label, value, accent }: { label: string; value: string; accent?: boolean }) {
  return (
    <div>
      <div className="text-[10px] text-white/30 uppercase tracking-wider mb-1">{label}</div>
      <div className={`text-sm px-3 py-2 rounded-md border ${accent ? 'border-accent/40 text-accent bg-accent/5' : 'border-white/10 text-white/80 bg-white/[0.03]'}`}>
        {value}
      </div>
    </div>
  )
}
