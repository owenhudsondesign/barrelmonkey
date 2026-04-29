interface FormFieldProps {
  readonly label: string
  readonly htmlFor: string
  readonly error?: string[]
  readonly children: React.ReactNode
  readonly className?: string
}

export function FormField({ label, htmlFor, error, children, className = '' }: FormFieldProps) {
  return (
    <div className={className}>
      <label
        htmlFor={htmlFor}
        className="block text-xs text-white/40 uppercase tracking-wider mb-2"
      >
        {label}
      </label>
      {children}
      {error && error.length > 0 && (
        <p className="text-error text-xs mt-1">{error[0]}</p>
      )}
    </div>
  )
}
