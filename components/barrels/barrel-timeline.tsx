import { TimelineEvent } from './timeline-event'
import { ProvenanceTimelineEvent } from './provenance-timeline-event'
import type { BarrelProvenance } from '@/lib/types/database'

interface BarrelTimelineProps {
  events: Array<{
    id: string
    event_type: string
    event_date: string
    proof: number | null
    proof_gal: number | null
    wine_gal: number | null
    net_weight_lb: number | null
    temp_f: number | null
    rack: string | null
    row: string | null
    position: string | null
    fill_proof: number | null
    barrel_stock: string | null
    cooperage: string | null
    previous_spirit: string | null
    barrel_condition: string | null
    gain_loss_pg: number | null
    notes: string | null
    logged_by: string
    created_at: string
    logged_by_user: { full_name: string } | null
    event_rackhouse: { name: string } | null
    from_rackhouse: { name: string } | null
    to_rackhouse: { name: string } | null
    to_tank: { name: string } | null
    distillation_run: { run_number: number } | null
  }>
  provenance?: BarrelProvenance | null
}

export function BarrelTimeline({ events, provenance }: BarrelTimelineProps) {
  const hasProvenance = provenance && provenance.batchingRuns.length > 0

  return (
    <div className="relative">
      {/* Vertical line */}
      <div className="absolute left-[11px] top-3 bottom-3 w-px bg-white/10" />

      <div className="space-y-0">
        {events.map((event, index) => (
          <TimelineEvent
            key={event.id}
            event={event}
            isFirst={index === 0}
            isLast={index === events.length - 1 && !hasProvenance}
          />
        ))}

        {/* Provenance events after dump */}
        {hasProvenance && provenance.batchingRuns.map((br) => (
          <div key={br.id}>
            <ProvenanceTimelineEvent
              type="batching"
              title={`Batched — ${br.product_name}`}
              subtitle={`Batch #${br.batch_number}`}
              date={br.batch_date}
              isLast={br.bottling_runs.length === 0}
            />
            {br.bottling_runs.map((btl, btlIdx) => {
              const totalBottles = (btl.cases_filled * (btl.bottles_per_case ?? 0)) + btl.loose_bottles
              const bottleStr = totalBottles > 0
                ? `${totalBottles.toLocaleString()} bottles`
                : `${btl.cases_filled} cases`
              return (
                <ProvenanceTimelineEvent
                  key={btl.id}
                  type="bottling"
                  title={`Bottled — ${btl.product_name}`}
                  subtitle={[
                    btl.lot_name && `Lot: ${btl.lot_name}`,
                    bottleStr,
                  ].filter(Boolean).join(' · ')}
                  date={btl.bottle_date}
                  isLast={btlIdx === br.bottling_runs.length - 1}
                />
              )
            })}
          </div>
        ))}
      </div>
    </div>
  )
}
