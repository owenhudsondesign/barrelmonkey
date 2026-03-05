export function SectionLabel({ children }: { children: React.ReactNode }) {
  return <p className="section-label mb-4">{children}</p>
}

export function Hl({ children, solid }: { children: React.ReactNode; solid?: boolean }) {
  return <span className={solid ? 'hl-solid' : 'hl'}>{children}</span>
}
