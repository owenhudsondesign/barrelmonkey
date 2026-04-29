import type { InputHTMLAttributes } from 'react'

type FormInputProps = Omit<InputHTMLAttributes<HTMLInputElement>, 'className'>

export function FormInput(props: FormInputProps) {
  return (
    <input
      {...props}
      className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2.5 text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25 text-sm"
    />
  )
}
