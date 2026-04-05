'use client'

import { useActionState } from 'react'
import { createFermentationBatch } from '@/lib/actions/fermentation'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'

interface FermentationBatchFormProps {
  readonly fermenters: readonly { id: string; name: string }[]
}

const SPIRIT_TYPES = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other'] as const

const initial: FormActionResult = { success: false }

export function FermentationBatchForm({ fermenters }: FermentationBatchFormProps) {
  const [state, formAction] = useActionState(createFermentationBatch, initial)
  const today = new Date().toISOString().split('T')[0]

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <FormField label="Batch Number" htmlFor="batch_number" error={state.errors?.batch_number}>
          <FormInput id="batch_number" name="batch_number" type="text" placeholder="e.g. FERM-001" required />
        </FormField>

        <FormField label="Cook Number" htmlFor="cook_number" error={state.errors?.cook_number}>
          <FormInput id="cook_number" name="cook_number" type="number" placeholder="Optional" />
        </FormField>

        <FormField label="Fermenter" htmlFor="fermenter_id" error={state.errors?.fermenter_id}>
          <FormSelect id="fermenter_id" name="fermenter_id" required>
            <option value="">Select fermenter</option>
            {fermenters.map((f) => (
              <option key={f.id} value={f.id}>{f.name}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Spirit Type" htmlFor="spirit_type" error={state.errors?.spirit_type}>
          <FormSelect id="spirit_type" name="spirit_type" required>
            {SPIRIT_TYPES.map((s) => (
              <option key={s} value={s}>{s.charAt(0).toUpperCase() + s.slice(1)}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Start Date" htmlFor="start_date" error={state.errors?.start_date}>
          <FormInput id="start_date" name="start_date" type="date" defaultValue={today} required />
        </FormField>

        <FormField label="Status" htmlFor="status" error={state.errors?.status}>
          <FormSelect id="status" name="status" defaultValue="active">
            <option value="active">Active</option>
            <option value="complete">Complete</option>
            <option value="scrapped">Scrapped</option>
          </FormSelect>
        </FormField>

        <FormField label="Mash Bill" htmlFor="mash_bill" error={state.errors?.mash_bill}>
          <FormInput id="mash_bill" name="mash_bill" type="text" placeholder="e.g. 100% Malted Barley" />
        </FormField>

        <FormField label="Lot Name" htmlFor="lot_name" error={state.errors?.lot_name}>
          <FormInput id="lot_name" name="lot_name" type="text" placeholder="Optional" />
        </FormField>

        <FormField label="Volume (gal)" htmlFor="volume_gal" error={state.errors?.volume_gal}>
          <FormInput id="volume_gal" name="volume_gal" type="number" step="0.1" />
        </FormField>

        <FormField label="Starting SG" htmlFor="start_sg" error={state.errors?.start_sg}>
          <FormInput id="start_sg" name="start_sg" type="number" step="0.001" placeholder="e.g. 1.065" />
        </FormField>

        <FormField label="pH" htmlFor="ph" error={state.errors?.ph}>
          <FormInput id="ph" name="ph" type="number" step="0.01" />
        </FormField>

        <FormField label="Temperature (F)" htmlFor="temp_f" error={state.errors?.temp_f}>
          <FormInput id="temp_f" name="temp_f" type="number" step="0.1" />
        </FormField>
      </div>

      <FormField label="Notes" htmlFor="notes" error={state.errors?.notes}>
        <FormTextarea id="notes" name="notes" placeholder="Optional notes..." />
      </FormField>

      <FormSubmitButton label="Create Batch" pendingLabel="Creating..." />
    </form>
  )
}
