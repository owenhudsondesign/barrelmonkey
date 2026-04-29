'use client'

import Link from 'next/link'
import { useEffect, useRef, useState, useTransition } from 'react'

interface RowActionsProps {
  readonly editHref: string
  readonly onDelete: () => Promise<void>
  readonly confirmLabel?: string
  readonly recordLabel?: string
}

export function RowActions({
  editHref,
  onDelete,
  confirmLabel = 'Delete',
  recordLabel = 'this record',
}: RowActionsProps) {
  const [open, setOpen] = useState(false)
  const [confirming, setConfirming] = useState(false)
  const [pending, startTransition] = useTransition()
  const ref = useRef<HTMLDivElement>(null)

  useEffect(() => {
    if (!open) return
    const onClick = (e: MouseEvent) => {
      if (ref.current && !ref.current.contains(e.target as Node)) {
        setOpen(false)
        setConfirming(false)
      }
    }
    const onKey = (e: KeyboardEvent) => {
      if (e.key === 'Escape') {
        setOpen(false)
        setConfirming(false)
      }
    }
    document.addEventListener('mousedown', onClick)
    document.addEventListener('keydown', onKey)
    return () => {
      document.removeEventListener('mousedown', onClick)
      document.removeEventListener('keydown', onKey)
    }
  }, [open])

  const handleDelete = () => {
    startTransition(async () => {
      try {
        await onDelete()
        setOpen(false)
        setConfirming(false)
      } catch {
        setConfirming(false)
      }
    })
  }

  return (
    <div ref={ref} className="relative inline-block">
      <button
        type="button"
        aria-label="Row actions"
        onClick={(e) => {
          e.preventDefault()
          e.stopPropagation()
          setOpen((v) => !v)
          setConfirming(false)
        }}
        className="p-1.5 rounded-md text-white/40 hover:text-white hover:bg-white/[0.06] transition-colors"
      >
        <svg className="w-4 h-4" viewBox="0 0 20 20" fill="currentColor">
          <circle cx="4" cy="10" r="1.5" />
          <circle cx="10" cy="10" r="1.5" />
          <circle cx="16" cy="10" r="1.5" />
        </svg>
      </button>

      {open && (
        <div className="absolute right-0 top-full mt-1 z-20 min-w-[140px] rounded-md border border-white/10 bg-zinc-900 shadow-lg overflow-hidden">
          {!confirming ? (
            <>
              <Link
                href={editHref}
                className="block px-3 py-2 text-sm text-white/80 hover:bg-white/[0.06] transition-colors"
                onClick={(e) => e.stopPropagation()}
              >
                Edit
              </Link>
              <button
                type="button"
                onClick={(e) => {
                  e.stopPropagation()
                  setConfirming(true)
                }}
                className="block w-full text-left px-3 py-2 text-sm text-error hover:bg-error/[0.08] transition-colors"
              >
                Delete
              </button>
            </>
          ) : (
            <div className="p-3 w-64">
              <p className="text-xs text-white/60 mb-3">
                Delete {recordLabel}? It will be hidden but kept for audit history.
              </p>
              <div className="flex gap-2">
                <button
                  type="button"
                  onClick={handleDelete}
                  disabled={pending}
                  className="flex-1 px-3 py-1.5 text-xs font-semibold bg-error text-white rounded hover:bg-error/90 disabled:opacity-50 transition-colors"
                >
                  {pending ? 'Deleting…' : confirmLabel}
                </button>
                <button
                  type="button"
                  onClick={(e) => {
                    e.stopPropagation()
                    setConfirming(false)
                  }}
                  disabled={pending}
                  className="flex-1 px-3 py-1.5 text-xs text-white/60 border border-white/10 rounded hover:bg-white/[0.04] disabled:opacity-50 transition-colors"
                >
                  Cancel
                </button>
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  )
}
