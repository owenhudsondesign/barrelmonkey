'use client'

import { useActionState } from 'react'
import { createBatchingRun } from '@/lib/actions/batching'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'

interface BatchingRunFormProps {
  readonly tanks: readonly { id: string; name: string }[]
}

const SPIRIT_TYPES = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other'] as const

const initial: FormActionResult = { success: false }

export function BatchingRunForm({ tanks }: BatchingRunFormProps) {
  const [state, formAction] = useActionState(createBatchingRun, initial)
  const today = new Date().toISOString().split('T')[0]

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <FormField label="Batch Number" htmlFor="batch_number" error={state.errors?.batch_number}>
          <FormInput id="batch_number" name="batch_number" type="text" placeholder="e.g. BATCH-001" required />
        </FormField>

        <FormField label="Product Name" htmlFor="product_name" error={state.errors?.product_name}>
          <FormInput id="product_name" name="product_name" type="text" required />
        </FormField>

        <FormField label="Spirit Type" htmlFor="spirit_type" error={state.errors?.spirit_type}>
          <FormSelect id="spirit_type" name="spirit_type" required>
            {SPIRIT_TYPES.map((s) => (
              <option key={s} value={s}>{s.charAt(0).toUpperCase() + s.slice(1)}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Batch Date" htmlFor="batch_date" error={state.errors?.batch_date}>
          <FormInput id="batch_date" name="batch_date" type="date" defaultValue={today} required />
        </FormField>

        <FormField label="Proof In" htmlFor="proof_in" error={state.errors?.proof_in}>
          <FormInput id="proof_in" name="proof_in" type="number" step="0.1" />
        </FormField>

        <FormField label="Wine Gallons In" htmlFor="wine_gal_in" error={state.errors?.wine_gal_in}>
          <FormInput id="wine_gal_in" name="wine_gal_in" type="number" step="0.01" />
        </FormField>

        <FormField label="Target Proof" htmlFor="target_proof" error={state.errors?.target_proof}>
          <FormInput id="target_proof" name="target_proof" type="number" step="0.1" />
        </FormField>

        <FormField label="Water Added (gal)" htmlFor="water_added_gal" error={state.errors?.water_added_gal}>
          <FormInput id="water_added_gal" name="water_added_gal" type="number" step="0.01" />
        </FormField>

        <FormField label="To Tank" htmlFor="to_tank_id" error={state.errors?.to_tank_id}>
          <FormSelect id="to_tank_id" name="to_tank_id">
            <option value="">Select tank</option>
            {tanks.map((t) => (
              <option key={t.id} value={t.id}>{t.name}</option>
            ))}
          </FormSelect>
        </FormField>
      </div>

      <FormField label="Notes" htmlFor="notes" error={state.errors?.notes}>
        <FormTextarea id="notes" name="notes" placeholder="Optional notes..." />
      </FormField>

      <FormSubmitButton label="Create Batching Run" pendingLabel="Creating..." />
    </form>
  )
}
