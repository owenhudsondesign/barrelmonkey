'use client'

import { useActionState } from 'react'
import { createBottlingRun } from '@/lib/actions/bottling'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'

interface BottlingRunFormProps {
  readonly tanks: readonly { id: string; name: string }[]
}

const SPIRIT_TYPES = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other'] as const

const initial: FormActionResult = { success: false }

export function BottlingRunForm({ tanks }: BottlingRunFormProps) {
  const [state, formAction] = useActionState(createBottlingRun, initial)
  const today = new Date().toISOString().split('T')[0]

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
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

        <FormField label="Bottle Date" htmlFor="bottle_date" error={state.errors?.bottle_date}>
          <FormInput id="bottle_date" name="bottle_date" type="date" defaultValue={today} required />
        </FormField>

        <FormField label="Bottling Number" htmlFor="bottling_number" error={state.errors?.bottling_number}>
          <FormInput id="bottling_number" name="bottling_number" type="number" placeholder="Optional" />
        </FormField>

        <FormField label="Lot Name" htmlFor="lot_name" error={state.errors?.lot_name}>
          <FormInput id="lot_name" name="lot_name" type="text" placeholder="Optional" />
        </FormField>

        <FormField label="Cases Filled" htmlFor="cases_filled" error={state.errors?.cases_filled}>
          <FormInput id="cases_filled" name="cases_filled" type="number" required />
        </FormField>

        <FormField label="Loose Bottles" htmlFor="loose_bottles" error={state.errors?.loose_bottles}>
          <FormInput id="loose_bottles" name="loose_bottles" type="number" placeholder="0" />
        </FormField>

        <FormField label="PG Bottled" htmlFor="proof_gal_bottled" error={state.errors?.proof_gal_bottled}>
          <FormInput id="proof_gal_bottled" name="proof_gal_bottled" type="number" step="0.01" />
        </FormField>

        <FormField label="Wine Gallons Bottled" htmlFor="wine_gal_bottled" error={state.errors?.wine_gal_bottled}>
          <FormInput id="wine_gal_bottled" name="wine_gal_bottled" type="number" step="0.01" />
        </FormField>

        <FormField label="Pack Format" htmlFor="pack_format" error={state.errors?.pack_format}>
          <FormInput id="pack_format" name="pack_format" type="text" placeholder="e.g. 6x750ml" />
        </FormField>

        <FormField label="Bottle Size (ml)" htmlFor="bottle_size_ml" error={state.errors?.bottle_size_ml}>
          <FormInput id="bottle_size_ml" name="bottle_size_ml" type="number" placeholder="e.g. 750" />
        </FormField>

        <FormField label="Bottles per Case" htmlFor="bottles_per_case" error={state.errors?.bottles_per_case}>
          <FormInput id="bottles_per_case" name="bottles_per_case" type="number" placeholder="e.g. 6" />
        </FormField>

        <FormField label="Source Tank" htmlFor="source_tank_id" error={state.errors?.source_tank_id}>
          <FormSelect id="source_tank_id" name="source_tank_id">
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

      <FormSubmitButton label="Create Bottling Run" pendingLabel="Creating..." />
    </form>
  )
}
