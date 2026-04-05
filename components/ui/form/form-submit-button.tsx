'use client'

import { useFormStatus } from 'react-dom'

interface FormSubmitButtonProps {
  readonly label?: string
  readonly pendingLabel?: string
}

export function FormSubmitButton({
  label = 'Save',
  pendingLabel = 'Saving...',
}: FormSubmitButtonProps) {
  const { pending } = useFormStatus()

  return (
    <button
      type="submit"
      disabled={pending}
      className="bg-accent text-black font-semibold text-sm py-2.5 px-6 rounded-md hover:bg-accent/90 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
    >
      {pending ? pendingLabel : label}
    </button>
  )
}
