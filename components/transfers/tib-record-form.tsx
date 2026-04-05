'use client'

import { useActionState } from 'react'
import { createTibRecord } from '@/lib/actions/tib'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'

const SPIRIT_TYPES = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other'] as const

const initial: FormActionResult = { success: false }

export function TibRecordForm() {
  const [state, formAction] = useActionState(createTibRecord, initial)
  const today = new Date().toISOString().split('T')[0]

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <FormField label="Direction" htmlFor="direction" error={state.errors?.direction}>
          <FormSelect id="direction" name="direction" required>
            <option value="inbound">Inbound</option>
            <option value="outbound">Outbound</option>
          </FormSelect>
        </FormField>

        <FormField label="Transfer Date" htmlFor="transfer_date" error={state.errors?.transfer_date}>
          <FormInput id="transfer_date" name="transfer_date" type="date" defaultValue={today} required />
        </FormField>

        <FormField label="Spirit Type" htmlFor="spirit_type" error={state.errors?.spirit_type}>
          <FormSelect id="spirit_type" name="spirit_type" required>
            {SPIRIT_TYPES.map((s) => (
              <option key={s} value={s}>{s.charAt(0).toUpperCase() + s.slice(1)}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="TIB Number" htmlFor="tib_number" error={state.errors?.tib_number}>
          <FormInput id="tib_number" name="tib_number" type="number" placeholder="Optional" />
        </FormField>

        <FormField label="TIB Type" htmlFor="tib_type" error={state.errors?.tib_type}>
          <FormInput id="tib_type" name="tib_type" type="text" placeholder="Optional" />
        </FormField>

        <FormField label="Lot Name" htmlFor="lot_name" error={state.errors?.lot_name}>
          <FormInput id="lot_name" name="lot_name" type="text" placeholder="Optional" />
        </FormField>

        <FormField label="Total PG" htmlFor="total_pg" error={state.errors?.total_pg}>
          <FormInput id="total_pg" name="total_pg" type="number" step="0.01" />
        </FormField>

        <FormField label="Total WG" htmlFor="total_wg" error={state.errors?.total_wg}>
          <FormInput id="total_wg" name="total_wg" type="number" step="0.01" />
        </FormField>

        <FormField label="Proof" htmlFor="pf" error={state.errors?.pf}>
          <FormInput id="pf" name="pf" type="number" step="0.1" />
        </FormField>

        <FormField label="Container Count" htmlFor="container_ct" error={state.errors?.container_ct}>
          <FormInput id="container_ct" name="container_ct" type="number" />
        </FormField>

        <FormField label="DSP Name" htmlFor="dsp_name" error={state.errors?.dsp_name}>
          <FormInput id="dsp_name" name="dsp_name" type="text" placeholder="Optional" />
        </FormField>

        <FormField label="DSP Number" htmlFor="dsp_number" error={state.errors?.dsp_number}>
          <FormInput id="dsp_number" name="dsp_number" type="text" placeholder="Optional" />
        </FormField>
      </div>

      <FormField label="Notes" htmlFor="notes" error={state.errors?.notes}>
        <FormTextarea id="notes" name="notes" placeholder="Optional notes..." />
      </FormField>

      <FormSubmitButton label="Create Transfer" pendingLabel="Creating..." />
    </form>
  )
}
