import type { SelectHTMLAttributes } from 'react'

type FormSelectProps = Omit<SelectHTMLAttributes<HTMLSelectElement>, 'className'>

export function FormSelect(props: FormSelectProps) {
  return (
    <select
      {...props}
      className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2.5 text-sm text-white focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25"
    />
  )
}
