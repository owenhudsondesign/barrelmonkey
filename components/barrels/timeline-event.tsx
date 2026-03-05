import { formatDateTime, formatProof, formatGallons, formatProofGallons } from '@/lib/utils/format'
import type { BarrelEventType } from '@/lib/types/database'

interface TimelineEventProps {
  event: {
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
    logged_by_user: { full_name: string } | null
    event_rackhouse: { name: string } | null
    from_rackhouse: { name: string } | null
    to_rackhouse: { name: string } | null
    to_tank: { name: string } | null
    distillation_run: { run_number: number } | null
  }
  isFirst: boolean
  isLast: boolean
}

const EVENT_CONFIG: Record<
  BarrelEventType,
  { label: string; color: string; dotColor: string }
> = {
  fill: { label: 'Barrel Filled', color: 'text-accent', dotColor: 'bg-accent' },
  dump: { label: 'Barrel Dumped', color: 'text-error', dotColor: 'bg-error' },
  move: { label: 'Location Changed', color: 'text-transferred', dotColor: 'bg-transferred' },
  proof_reading: { label: 'Proof Reading', color: 'text-white/70', dotColor: 'bg-white/40' },
  tib_out: { label: 'TIB Outbound', color: 'text-transferred', dotColor: 'bg-transferred' },
  tib_in: { label: 'TIB Inbound', color: 'text-transferred', dotColor: 'bg-transferred' },
  adjustment: { label: 'Adjustment', color: 'text-warning', dotColor: 'bg-warning' },
  inspection: { label: 'Inspection', color: 'text-white/50', dotColor: 'bg-white/30' },
}

function formatLocation(rack: string | null, row: string | null, position: string | null): string | null {
  const parts = [rack, row, position].filter(Boolean)
  return parts.length > 0 ? parts.join('-') : null
}

export function TimelineEvent({ event }: TimelineEventProps) {
  const config = EVENT_CONFIG[event.event_type as BarrelEventType] ?? {
    label: event.event_type,
    color: 'text-white/50',
    dotColor: 'bg-white/30',
  }

  const loggedByUser = event.logged_by_user
  const eventRackhouse = event.event_rackhouse
  const fromRackhouse = event.from_rackhouse
  const toRackhouse = event.to_rackhouse
  const toTank = event.to_tank
  const distRun = event.distillation_run
  const location = formatLocation(event.rack, event.row, event.position)

  return (
    <div className="relative flex gap-4 pb-6">
      {/* Dot */}
      <div className="relative z-10 mt-1.5">
        <div className={`w-[9px] h-[9px] rounded-full ring-2 ring-[#0a0a0a] ${config.dotColor}`} />
      </div>

      {/* Content */}
      <div className="flex-1 min-w-0">
        <div className="flex items-center gap-2 mb-1">
          <span className={`text-sm font-medium ${config.color}`}>{config.label}</span>
          <span className="text-[11px] text-white/20">{formatDateTime(event.event_date)}</span>
        </div>

        {/* Event-specific details */}
        <div className="text-sm text-white/50 space-y-0.5">
          {renderEventDetails(event, { eventRackhouse, fromRackhouse, toRackhouse, toTank, distRun, location })}
        </div>

        {/* Measurements row */}
        {(event.proof != null || event.proof_gal != null || event.wine_gal != null) && (
          <div className="flex flex-wrap gap-x-4 gap-y-1 mt-1.5 text-xs text-white/40">
            {event.proof != null && <span>Proof: {formatProof(event.proof)}</span>}
            {event.proof_gal != null && <span>PG: {formatProofGallons(event.proof_gal)}</span>}
            {event.wine_gal != null && <span>WG: {formatGallons(event.wine_gal)}</span>}
            {event.temp_f != null && <span>Temp: {event.temp_f}°F</span>}
            {event.net_weight_lb != null && <span>Weight: {event.net_weight_lb} lb</span>}
            {event.gain_loss_pg != null && (
              <span className={event.gain_loss_pg < 0 ? 'text-error/60' : 'text-green-500/60'}>
                {event.gain_loss_pg > 0 ? '+' : ''}{event.gain_loss_pg} PG
              </span>
            )}
          </div>
        )}

        {/* Notes */}
        {event.notes && (
          <p className="mt-1.5 text-xs text-white/30 italic">{event.notes}</p>
        )}

        {/* Logged by */}
        {loggedByUser?.full_name && (
          <div className="mt-1 text-[11px] text-white/20">
            by {loggedByUser.full_name}
          </div>
        )}
      </div>
    </div>
  )
}

function renderEventDetails(
  event: TimelineEventProps['event'],
  refs: {
    eventRackhouse: { name: string } | null
    fromRackhouse: { name: string } | null
    toRackhouse: { name: string } | null
    toTank: { name: string } | null
    distRun: { run_number: number } | null
    location: string | null
  }
) {
  switch (event.event_type) {
    case 'fill':
      return (
        <>
          {refs.eventRackhouse && (
            <div>
              Location: {refs.eventRackhouse.name}
              {refs.location && ` / ${refs.location}`}
            </div>
          )}
          {refs.distRun && <div>Source: Distillation Run #{refs.distRun.run_number}</div>}
          {event.barrel_stock && <div>Stock: {event.barrel_stock}</div>}
          {event.cooperage && <div>Cooperage: {event.cooperage}</div>}
          {event.previous_spirit && <div>Previous spirit: {event.previous_spirit}</div>}
          {event.fill_proof != null && <div>Fill proof: {formatProof(event.fill_proof)}</div>}
        </>
      )

    case 'move':
      return (
        <div>
          {refs.fromRackhouse?.name ?? '?'}
          {' → '}
          {refs.toRackhouse?.name ?? '?'}
          {refs.location && ` / ${refs.location}`}
        </div>
      )

    case 'dump':
      return (
        <>
          {refs.toTank && <div>Destination tank: {refs.toTank.name}</div>}
        </>
      )

    case 'tib_out':
      return <div>Transferred outbound</div>

    case 'tib_in':
      return <div>Received inbound</div>

    case 'adjustment':
      return null

    case 'inspection':
      return null

    case 'proof_reading':
      return null

    default:
      return null
  }
}
