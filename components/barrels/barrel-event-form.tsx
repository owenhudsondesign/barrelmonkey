'use client'

import { useActionState, useState } from 'react'
import { createBarrelEvent } from '@/lib/actions/barrel-events'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'
import type { BarrelEventType } from '@/lib/types/database'

interface BarrelEventFormProps {
  readonly barrelId: string
  readonly barrelNumber: string
  readonly tanks: readonly { id: string; name: string }[]
  readonly rackhouses: readonly { id: string; name: string }[]
}

const EVENT_TYPES: { value: BarrelEventType; label: string }[] = [
  { value: 'fill', label: 'Fill' },
  { value: 'dump', label: 'Dump' },
  { value: 'move', label: 'Move' },
  { value: 'proof_reading', label: 'Proof Reading' },
  { value: 'tib_out', label: 'TIB Out' },
  { value: 'tib_in', label: 'TIB In' },
  { value: 'adjustment', label: 'Adjustment' },
  { value: 'inspection', label: 'Inspection' },
]

const initial: FormActionResult = { success: false }

export function BarrelEventForm({ barrelId, barrelNumber, tanks, rackhouses }: BarrelEventFormProps) {
  const [state, formAction] = useActionState(createBarrelEvent, initial)
  const [eventType, setEventType] = useState<BarrelEventType>('proof_reading')

  const today = new Date().toISOString().split('T')[0]

  if (state.success) {
    return (
      <div className="bg-success/10 border border-success/20 rounded-md px-4 py-3 text-success text-sm">
        {state.message}
      </div>
    )
  }

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />
      <input type="hidden" name="barrel_id" value={barrelId} />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <FormField label="Event Type" htmlFor="event_type" error={state.errors?.event_type}>
          <FormSelect
            id="event_type"
            name="event_type"
            value={eventType}
            onChange={(e) => setEventType(e.target.value as BarrelEventType)}
            required
          >
            {EVENT_TYPES.map((t) => (
              <option key={t.value} value={t.value}>{t.label}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Date" htmlFor="event_date" error={state.errors?.event_date}>
          <FormInput id="event_date" name="event_date" type="date" defaultValue={today} required />
        </FormField>
      </div>

      {/* Fields for fill */}
      {eventType === 'fill' && (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <FormField label="Fill Proof" htmlFor="fill_proof" error={state.errors?.fill_proof}>
            <FormInput id="fill_proof" name="fill_proof" type="number" step="0.1" placeholder="e.g. 125.0" />
          </FormField>
          <FormField label="Source Tank" htmlFor="source_tank_id" error={state.errors?.source_tank_id}>
            <FormSelect id="source_tank_id" name="source_tank_id">
              <option value="">Select tank</option>
              {tanks.map((t) => (
                <option key={t.id} value={t.id}>{t.name}</option>
              ))}
            </FormSelect>
          </FormField>
          <FormField label="Proof Gallons" htmlFor="proof_gal" error={state.errors?.proof_gal}>
            <FormInput id="proof_gal" name="proof_gal" type="number" step="0.01" />
          </FormField>
          <FormField label="Wine Gallons" htmlFor="wine_gal" error={state.errors?.wine_gal}>
            <FormInput id="wine_gal" name="wine_gal" type="number" step="0.01" />
          </FormField>
          <FormField label="Cooperage" htmlFor="cooperage" error={state.errors?.cooperage}>
            <FormInput id="cooperage" name="cooperage" type="text" placeholder="e.g. 53 gal American Oak" />
          </FormField>
          <FormField label="Barrel Condition" htmlFor="barrel_condition" error={state.errors?.barrel_condition}>
            <FormSelect id="barrel_condition" name="barrel_condition">
              <option value="">Select</option>
              <option value="new">New</option>
              <option value="used">Used</option>
            </FormSelect>
          </FormField>
        </div>
      )}

      {/* Fields for dump */}
      {eventType === 'dump' && (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <FormField label="Proof" htmlFor="proof" error={state.errors?.proof}>
            <FormInput id="proof" name="proof" type="number" step="0.1" />
          </FormField>
          <FormField label="To Tank" htmlFor="to_tank_id" error={state.errors?.to_tank_id}>
            <FormSelect id="to_tank_id" name="to_tank_id">
              <option value="">Select tank</option>
              {tanks.map((t) => (
                <option key={t.id} value={t.id}>{t.name}</option>
              ))}
            </FormSelect>
          </FormField>
          <FormField label="Proof Gallons" htmlFor="proof_gal" error={state.errors?.proof_gal}>
            <FormInput id="proof_gal" name="proof_gal" type="number" step="0.01" />
          </FormField>
          <FormField label="Wine Gallons" htmlFor="wine_gal" error={state.errors?.wine_gal}>
            <FormInput id="wine_gal" name="wine_gal" type="number" step="0.01" />
          </FormField>
        </div>
      )}

      {/* Fields for move */}
      {eventType === 'move' && (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <FormField label="From Rackhouse" htmlFor="from_rackhouse_id" error={state.errors?.from_rackhouse_id}>
            <FormSelect id="from_rackhouse_id" name="from_rackhouse_id">
              <option value="">Select rackhouse</option>
              {rackhouses.map((r) => (
                <option key={r.id} value={r.id}>{r.name}</option>
              ))}
            </FormSelect>
          </FormField>
          <FormField label="To Rackhouse" htmlFor="to_rackhouse_id" error={state.errors?.to_rackhouse_id}>
            <FormSelect id="to_rackhouse_id" name="to_rackhouse_id">
              <option value="">Select rackhouse</option>
              {rackhouses.map((r) => (
                <option key={r.id} value={r.id}>{r.name}</option>
              ))}
            </FormSelect>
          </FormField>
        </div>
      )}

      {/* Fields for proof_reading */}
      {eventType === 'proof_reading' && (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <FormField label="Proof" htmlFor="proof" error={state.errors?.proof}>
            <FormInput id="proof" name="proof" type="number" step="0.1" placeholder="e.g. 128.5" />
          </FormField>
          <FormField label="Proof Gallons" htmlFor="proof_gal" error={state.errors?.proof_gal}>
            <FormInput id="proof_gal" name="proof_gal" type="number" step="0.01" />
          </FormField>
          <FormField label="Wine Gallons" htmlFor="wine_gal" error={state.errors?.wine_gal}>
            <FormInput id="wine_gal" name="wine_gal" type="number" step="0.01" />
          </FormField>
          <FormField label="Temperature (F)" htmlFor="temp_f" error={state.errors?.temp_f}>
            <FormInput id="temp_f" name="temp_f" type="number" step="0.1" />
          </FormField>
          <FormField label="Net Weight (lb)" htmlFor="net_weight_lb" error={state.errors?.net_weight_lb}>
            <FormInput id="net_weight_lb" name="net_weight_lb" type="number" step="0.1" />
          </FormField>
        </div>
      )}

      {/* Fields for adjustment */}
      {(eventType === 'adjustment' || eventType === 'tib_out' || eventType === 'tib_in') && (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <FormField label="Proof Gallons" htmlFor="proof_gal" error={state.errors?.proof_gal}>
            <FormInput id="proof_gal" name="proof_gal" type="number" step="0.01" />
          </FormField>
          <FormField label="Wine Gallons" htmlFor="wine_gal" error={state.errors?.wine_gal}>
            <FormInput id="wine_gal" name="wine_gal" type="number" step="0.01" />
          </FormField>
        </div>
      )}

      <FormField label="Notes" htmlFor="notes" error={state.errors?.notes}>
        <FormTextarea id="notes" name="notes" placeholder="Optional notes..." />
      </FormField>

      <div className="flex items-center gap-3 pt-2">
        <FormSubmitButton label="Log Event" pendingLabel="Logging..." />
        <span className="text-xs text-white/30">Barrel {barrelNumber}</span>
      </div>
    </form>
  )
}
