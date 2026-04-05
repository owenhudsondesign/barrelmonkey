interface FormErrorBannerProps {
  readonly message?: string
}

export function FormErrorBanner({ message }: FormErrorBannerProps) {
  if (!message) return null

  return (
    <div className="bg-error/10 border border-error/20 rounded-md px-4 py-3 text-error text-sm">
      {message}
    </div>
  )
}
