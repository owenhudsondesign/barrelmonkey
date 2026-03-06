'use client'

import { useState, useTransition } from 'react'
import { logBarrelEvent } from '@/app/(app)/log/actions'

interface LogBarrelEventProps {
  barrels: { id: string; barrel_number: string }[]
  rackhouses: { id: string; name: string }[]
  onSuccess: () => void
}

const EVENT_TYPES = [
  { value: 'proof_reading', label: 'Proof Reading' },
  { value: 'move', label: 'Move' },
  { value: 'inspection', label: 'Inspection' },
] as const

export function LogBarrelEvent({ barrels, rackhouses, onSuccess }: LogBarrelEventProps) {
  const [isPending, startTransition] = useTransition()
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState(false)
  const [eventType, setEventType] = useState<string>('proof_reading')

  function handleSubmit(formData: FormData) {
    setError(null)
    setSuccess(false)
    startTransition(async () => {
      const result = await logBarrelEvent(formData)
      if (result.success) {
        setSuccess(true)
        onSuccess()
        setTimeout(() => setSuccess(false), 3000)
      } else {
        setError(result.error ?? 'Failed to log event')
      }
    })
  }

  return (
    <form action={handleSubmit} className="space-y-4">
      {/* Barrel Select */}
      <div>
        <label htmlFor="barrelId" className="block text-xs text-white/50 mb-1.5">
          Barrel
        </label>
        <select
          name="barrelId"
          id="barrelId"
          required
          className="w-full bg-white/[0.06] border border-white/10 rounded-lg px-4 py-3 text-white text-sm focus:outline-none focus:border-accent/50"
        >
          <option value="">Select barrel...</option>
          {barrels.map((b) => (
            <option key={b.id} value={b.id}>{b.barrel_number}</option>
          ))}
        </select>
      </div>

      {/* Event Type */}
      <div>
        <label className="block text-xs text-white/50 mb-1.5">Event Type</label>
        <div className="flex gap-2">
          {EVENT_TYPES.map(({ value, label }) => (
            <button
              key={value}
              type="button"
              onClick={() => setEventType(value)}
              className={`flex-1 text-sm px-3 py-3 rounded-lg border transition-colors ${
                eventType === value
                  ? 'bg-accent/10 text-accent border-accent/30 font-medium'
                  : 'bg-white/[0.04] text-white/40 border-white/10'
              }`}
            >
              {label}
            </button>
          ))}
        </div>
        <input type="hidden" name="eventType" value={eventType} />
      </div>

      {/* Date */}
      <div>
        <label htmlFor="eventDate" className="block text-xs text-white/50 mb-1.5">
          Date
        </label>
        <input
          type="datetime-local"
          name="eventDate"
          id="eventDate"
          required
          defaultValue={new Date().toISOString().slice(0, 16)}
          className="w-full bg-white/[0.06] border border-white/10 rounded-lg px-4 py-3 text-white text-sm focus:outline-none focus:border-accent/50"
        />
      </div>

      {/* Proof & Measurements */}
      <div className="grid grid-cols-2 gap-3">
        <div>
          <label htmlFor="proof" className="block text-xs text-white/50 mb-1.5">
            Proof
          </label>
          <input
            type="number"
            name="proof"
            id="proof"
            step="0.1"
            placeholder="128.5"
            className="w-full bg-white/[0.06] border border-white/10 rounded-lg px-4 py-3 text-white text-sm focus:outline-none focus:border-accent/50 [appearance:textfield] [&::-webkit-outer-spin-button]:appearance-none [&::-webkit-inner-spin-button]:appearance-none"
          />
        </div>
        <div>
          <label htmlFor="tempF" className="block text-xs text-white/50 mb-1.5">
            Temp (°F)
          </label>
          <input
            type="number"
            name="tempF"
            id="tempF"
            step="0.1"
            placeholder="68"
            className="w-full bg-white/[0.06] border border-white/10 rounded-lg px-4 py-3 text-white text-sm focus:outline-none focus:border-accent/50 [appearance:textfield] [&::-webkit-outer-spin-button]:appearance-none [&::-webkit-inner-spin-button]:appearance-none"
          />
        </div>
      </div>

      {eventType === 'move' && (
        <div>
          <label htmlFor="toRackhouseId" className="block text-xs text-white/50 mb-1.5">
            Move to Rackhouse
          </label>
          <select
            name="toRackhouseId"
            id="toRackhouseId"
            className="w-full bg-white/[0.06] border border-white/10 rounded-lg px-4 py-3 text-white text-sm focus:outline-none focus:border-accent/50"
          >
            <option value="">Select rackhouse...</option>
            {rackhouses.map((r) => (
              <option key={r.id} value={r.id}>{r.name}</option>
            ))}
          </select>
        </div>
      )}

      {/* Notes */}
      <div>
        <label htmlFor="notes" className="block text-xs text-white/50 mb-1.5">
          Notes
        </label>
        <textarea
          name="notes"
          id="notes"
          rows={2}
          placeholder="Optional notes..."
          className="w-full bg-white/[0.06] border border-white/10 rounded-lg px-4 py-3 text-white text-sm focus:outline-none focus:border-accent/50 resize-none"
        />
      </div>

      {/* Submit */}
      <button
        type="submit"
        disabled={isPending}
        className="w-full bg-accent text-black font-semibold py-3.5 rounded-lg text-sm hover:bg-accent/90 transition-colors disabled:opacity-50"
      >
        {isPending ? 'Logging...' : 'Log Event'}
      </button>

      {error && (
        <div className="text-sm text-error bg-error/10 border border-error/20 rounded-lg px-4 py-3">
          {error}
        </div>
      )}

      {success && (
        <div className="text-sm text-success bg-success/10 border border-success/20 rounded-lg px-4 py-3">
          Event logged successfully
        </div>
      )}
    </form>
  )
}
