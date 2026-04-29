'use client'

import { useActionState } from 'react'
import { createDistillationRun, updateDistillationRun } from '@/lib/actions/distillation'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'

export interface DistillationRunRecord {
  readonly id: string
  readonly run_number: number
  readonly spirit_type: string
  readonly still_name: string | null
  readonly run_phase: string | null
  readonly run_date: string
  readonly proof_gal: number
  readonly lot_name: string | null
  readonly mash_bill: string | null
  readonly notes: string | null
}

interface DistillationRunFormProps {
  readonly record?: DistillationRunRecord
}

const SPIRIT_TYPES = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other'] as const

const initial: FormActionResult = { success: false }

export function DistillationRunForm({ record }: DistillationRunFormProps = {}) {
  const isEdit = !!record
  const [state, formAction] = useActionState(isEdit ? updateDistillationRun : createDistillationRun, initial)
  const today = new Date().toISOString().split('T')[0]

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />
      {isEdit && <input type="hidden" name="id" value={record.id} />}

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <FormField label="Run Number" htmlFor="run_number" error={state.errors?.run_number}>
          <FormInput id="run_number" name="run_number" type="number" defaultValue={record?.run_number} required />
        </FormField>

        <FormField label="Spirit Type" htmlFor="spirit_type" error={state.errors?.spirit_type}>
          <FormSelect id="spirit_type" name="spirit_type" defaultValue={record?.spirit_type} required>
            {SPIRIT_TYPES.map((s) => (
              <option key={s} value={s}>{s.charAt(0).toUpperCase() + s.slice(1)}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Still" htmlFor="still_name" error={state.errors?.still_name}>
          <FormSelect id="still_name" name="still_name" defaultValue={record?.still_name ?? ''}>
            <option value="">Select still</option>
            <option value="Rocket">Rocket</option>
            <option value="Arnold">Arnold</option>
            <option value="Both">Both</option>
          </FormSelect>
        </FormField>

        <FormField label="Run Phase" htmlFor="run_phase" error={state.errors?.run_phase}>
          <FormSelect id="run_phase" name="run_phase" defaultValue={record?.run_phase ?? ''}>
            <option value="">Select phase</option>
            <option value="strip">Strip</option>
            <option value="spirit">Spirit</option>
            <option value="low_wines">Low Wines</option>
            <option value="processing">Processing</option>
          </FormSelect>
        </FormField>

        <FormField label="Run Date" htmlFor="run_date" error={state.errors?.run_date}>
          <FormInput id="run_date" name="run_date" type="date" defaultValue={record?.run_date ?? today} required />
        </FormField>

        <FormField label="Proof Gallons" htmlFor="proof_gal" error={state.errors?.proof_gal}>
          <FormInput id="proof_gal" name="proof_gal" type="number" step="0.01" defaultValue={record?.proof_gal} required />
        </FormField>

        <FormField label="Lot Name" htmlFor="lot_name" error={state.errors?.lot_name}>
          <FormInput id="lot_name" name="lot_name" type="text" placeholder="Optional" defaultValue={record?.lot_name ?? ''} />
        </FormField>

        <FormField label="Mash Bill" htmlFor="mash_bill" error={state.errors?.mash_bill}>
          <FormInput id="mash_bill" name="mash_bill" type="text" placeholder="Optional" defaultValue={record?.mash_bill ?? ''} />
        </FormField>
      </div>

      <FormField label="Notes" htmlFor="notes" error={state.errors?.notes}>
        <FormTextarea id="notes" name="notes" placeholder="Optional notes..." defaultValue={record?.notes ?? ''} />
      </FormField>

      <FormSubmitButton
        label={isEdit ? 'Save Changes' : 'Create Run'}
        pendingLabel={isEdit ? 'Saving...' : 'Creating...'}
      />
    </form>
  )
}
