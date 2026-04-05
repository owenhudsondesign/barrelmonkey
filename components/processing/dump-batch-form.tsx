'use client'

import { useActionState } from 'react'
import { createDumpBatch } from '@/lib/actions/dump-batches'
import { FormField, FormInput, FormSelect, FormTextarea, FormSubmitButton, FormErrorBanner } from '@/components/ui/form'
import type { FormActionResult } from '@/lib/types/form'

interface DumpBatchFormProps {
  readonly tanks: readonly { id: string; name: string }[]
}

const SPIRIT_TYPES = ['whiskey', 'bourbon', 'vodka', 'gin', 'rum', 'brandy', 'extract', 'other'] as const

const initial: FormActionResult = { success: false }

export function DumpBatchForm({ tanks }: DumpBatchFormProps) {
  const [state, formAction] = useActionState(createDumpBatch, initial)
  const today = new Date().toISOString().split('T')[0]

  return (
    <form action={formAction} className="space-y-4">
      <FormErrorBanner message={state.message} />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <FormField label="Dump Date" htmlFor="dump_date" error={state.errors?.dump_date}>
          <FormInput id="dump_date" name="dump_date" type="date" defaultValue={today} required />
        </FormField>

        <FormField label="Spirit Type" htmlFor="spirit_type" error={state.errors?.spirit_type}>
          <FormSelect id="spirit_type" name="spirit_type" required>
            {SPIRIT_TYPES.map((s) => (
              <option key={s} value={s}>{s.charAt(0).toUpperCase() + s.slice(1)}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Barrel Count" htmlFor="barrel_count" error={state.errors?.barrel_count}>
          <FormInput id="barrel_count" name="barrel_count" type="number" required />
        </FormField>

        <FormField label="Target Tank" htmlFor="target_tank_id" error={state.errors?.target_tank_id}>
          <FormSelect id="target_tank_id" name="target_tank_id">
            <option value="">Select tank</option>
            {tanks.map((t) => (
              <option key={t.id} value={t.id}>{t.name}</option>
            ))}
          </FormSelect>
        </FormField>

        <FormField label="Original PG" htmlFor="total_opg" error={state.errors?.total_opg}>
          <FormInput id="total_opg" name="total_opg" type="number" step="0.01" />
        </FormField>

        <FormField label="Regauge PG" htmlFor="total_rpg" error={state.errors?.total_rpg}>
          <FormInput id="total_rpg" name="total_rpg" type="number" step="0.01" />
        </FormField>

        <FormField label="Loss PG" htmlFor="total_loss_pg" error={state.errors?.total_loss_pg}>
          <FormInput id="total_loss_pg" name="total_loss_pg" type="number" step="0.01" />
        </FormField>

        <FormField label="Blend/Lot Name" htmlFor="blend_lot_name" error={state.errors?.blend_lot_name}>
          <FormInput id="blend_lot_name" name="blend_lot_name" type="text" placeholder="Optional" />
        </FormField>

        <FormField label="Dump Type" htmlFor="dump_type" error={state.errors?.dump_type}>
          <FormInput id="dump_type" name="dump_type" type="text" placeholder="e.g. Regular, Blend" />
        </FormField>

        <FormField label="To Account" htmlFor="to_account" error={state.errors?.to_account}>
          <FormInput id="to_account" name="to_account" type="text" placeholder="Optional" />
        </FormField>
      </div>

      <FormField label="Notes" htmlFor="notes" error={state.errors?.notes}>
        <FormTextarea id="notes" name="notes" placeholder="Optional notes..." />
      </FormField>

      <FormSubmitButton label="Create Dump Batch" pendingLabel="Creating..." />
    </form>
  )
}
