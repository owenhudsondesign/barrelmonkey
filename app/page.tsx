import { ScrollReveal } from './scroll-reveal'
import Image from 'next/image'
import { ChevronDown, ClipboardList, Layers, CircleCheck, Check } from 'lucide-react'

/* ─────────────────────────────────────────────
   Mock UI Components
   ───────────────────────────────────────────── */

function MockWindow({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div className="mock-window">
      <div className="mock-window-chrome">
        <div className="mock-dot" />
        <div className="mock-dot" />
        <div className="mock-dot" />
        <span className="ml-3 text-[11px] text-white/30 tracking-wide">{title}</span>
      </div>
      <div className="p-5">{children}</div>
    </div>
  )
}

function MockInput({ label, value, accent }: { label: string; value: string; accent?: boolean }) {
  return (
    <div>
      <div className="text-[10px] text-white/30 uppercase tracking-wider mb-1">{label}</div>
      <div className={`text-sm px-3 py-2 rounded-md border ${accent ? 'border-accent/40 text-accent bg-accent/5' : 'border-white/10 text-white/80 bg-white/[0.03]'}`}>
        {value}
      </div>
    </div>
  )
}

function MockBatchEntry() {
  return (
    <MockWindow title="barrelmonkey /new batch">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-white/90 font-semibold text-sm">New Batch Entry</span>
          <span className="text-[10px] text-white/20">Feb 28, 2026</span>
        </div>

        <div className="flex gap-2">
          {['Bourbon', 'Rye', 'Vodka', 'Gin', 'Rum'].map((s, i) => (
            <div
              key={s}
              className={`text-[11px] px-3 py-1.5 rounded ${i === 0 ? 'bg-accent text-black font-semibold' : 'bg-white/[0.04] text-white/40'}`}
            >
              {s}
            </div>
          ))}
        </div>

        <div>
          <div className="text-[10px] text-white/30 uppercase tracking-wider mb-2">Grain Bill</div>
          <div className="flex gap-2">
            {[
              { grain: 'Corn', pct: 70 },
              { grain: 'Rye', pct: 20 },
              { grain: 'Malt', pct: 10 },
            ].map(({ grain, pct }) => (
              <div key={grain} className="flex-1 bg-white/[0.03] rounded-md p-2.5 border border-white/[0.06]">
                <div className="text-[10px] text-white/30 mb-1">{grain}</div>
                <div className="text-white/80 text-sm font-semibold">{pct}%</div>
                <div className="mt-1.5 h-1 rounded-full bg-white/10 overflow-hidden">
                  <div className="h-full bg-accent/70 rounded-full" style={{ width: `${pct}%` }} />
                </div>
              </div>
            ))}
          </div>
        </div>

        <div className="grid grid-cols-2 gap-3">
          <MockInput label="Mash Volume" value="350 gal" />
          <MockInput label="Original Proof" value="128.5" />
        </div>

        <button className="w-full bg-accent text-black text-sm font-semibold py-2.5 rounded-md">
          Log Batch
        </button>
      </div>
    </MockWindow>
  )
}

function MockBarrelInventory() {
  const barrels = [
    { id: 'B-0142', type: 'Bourbon', loc: 'Rick 3A', age: '3.8 yr', status: 'aging' },
    { id: 'B-0267', type: 'Rye', loc: 'Rick 1B', age: '5.4 yr', status: 'ready' },
    { id: 'B-0389', type: 'Rum', loc: 'Rick 2C', age: '1.3 yr', status: 'aging' },
    { id: 'B-0401', type: 'Bourbon', loc: 'Rick 4D', age: '6.7 yr', status: 'check' },
    { id: 'B-0415', type: 'Gin', loc: 'Rick 1A', age: '0.8 yr', status: 'aging' },
    { id: 'B-0422', type: 'Bourbon', loc: 'Rick 2A', age: '4.1 yr', status: 'ready' },
  ]

  const statusColor: Record<string, string> = {
    aging: 'bg-emerald-400',
    ready: 'bg-accent',
    check: 'bg-red-400',
  }

  return (
    <MockWindow title="barrelmonkey /inventory">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-white/90 font-semibold text-sm">Barrel Inventory</span>
          <div className="flex items-center gap-3 text-[11px] text-white/30">
            <span>527 total</span>
            <span className="text-accent">12 ready</span>
          </div>
        </div>

        <div className="bg-white/[0.03] rounded-md px-3 py-2 border border-white/[0.06] text-white/20 text-xs">
          Search barrels...
        </div>

        <div className="grid grid-cols-2 gap-2">
          {barrels.map((b) => (
            <div key={b.id} className="bg-white/[0.03] rounded-lg p-3 border border-white/[0.06]">
              <div className="flex items-center justify-between mb-2">
                <span className="text-white/80 text-xs font-semibold">{b.id}</span>
                <div className={`w-2 h-2 rounded-full ${statusColor[b.status]}`} />
              </div>
              <div className="text-[10px] text-white/30 space-y-0.5">
                <div>{b.type}</div>
                <div>{b.loc}</div>
                <div className="text-white/50">{b.age}</div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </MockWindow>
  )
}

function MockTTBReport() {
  const forms = [
    { id: '5110.40', name: 'Production Report', status: 'ready', icon: '✓' },
    { id: '5110.11', name: 'Storage Report', status: 'ready', icon: '✓' },
    { id: '5110.28', name: 'Processing Report', status: 'attention', icon: '!' },
  ]

  return (
    <MockWindow title="barrelmonkey /TTB reports">
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-white/90 font-semibold text-sm">February 2026</span>
          <span className="text-[10px] text-white/20">Due Mar 15</span>
        </div>

        <div className="space-y-2">
          {forms.map((f) => (
            <div
              key={f.id}
              className="flex items-center gap-3 bg-white/[0.03] rounded-lg p-3.5 border border-white/[0.06]"
            >
              <div
                className={`w-6 h-6 rounded-full flex items-center justify-center text-[11px] font-bold ${
                  f.status === 'ready'
                    ? 'bg-emerald-500/20 text-emerald-400'
                    : 'bg-amber-500/20 text-amber-400'
                }`}
              >
                {f.icon}
              </div>
              <div className="flex-1">
                <div className="text-white/80 text-xs font-semibold">Form {f.id}</div>
                <div className="text-[10px] text-white/30">{f.name}</div>
              </div>
              <div
                className={`text-[10px] px-2 py-0.5 rounded ${
                  f.status === 'ready'
                    ? 'bg-emerald-500/10 text-emerald-400'
                    : 'bg-amber-500/10 text-amber-400'
                }`}
              >
                {f.status === 'ready' ? 'Ready' : '2 entries'}
              </div>
            </div>
          ))}
        </div>

        <div className="flex items-center gap-2 text-[10px] text-white/20 pt-1">
          <div className="w-full h-1.5 rounded-full bg-white/[0.06] overflow-hidden">
            <div className="h-full w-[85%] rounded-full bg-emerald-500/50" />
          </div>
          <span className="whitespace-nowrap">85% complete</span>
        </div>

        <button className="w-full bg-accent text-black text-sm font-semibold py-2.5 rounded-md">
          Review &amp; Submit
        </button>
      </div>
    </MockWindow>
  )
}

function MockCalculator() {
  return (
    <MockWindow title="barrelmonkey /calculators">
      <div className="space-y-4">
        <div className="flex gap-2">
          {['Proof Correction', 'Temp Adjust', 'Gallons', 'Cut-to-Proof'].map((tab, i) => (
            <div
              key={tab}
              className={`text-[11px] px-3 py-1.5 rounded ${i === 0 ? 'bg-accent text-black font-semibold' : 'bg-white/[0.04] text-white/30'}`}
            >
              {tab}
            </div>
          ))}
        </div>

        <div className="grid grid-cols-2 gap-3">
          <MockInput label="Observed Proof" value="128.5" />
          <MockInput label="Temperature" value="68°F" />
        </div>

        <div className="border-t border-white/[0.06] pt-4 space-y-3">
          <div className="text-[10px] text-white/30 uppercase tracking-wider">Results</div>
          <div className="grid grid-cols-3 gap-3">
            {[
              { label: 'Corrected Proof', value: '129.2' },
              { label: 'Wine Gallons', value: '350.0' },
              { label: 'Proof Gallons', value: '451.9' },
            ].map(({ label, value }) => (
              <div key={label} className="bg-accent/5 border border-accent/20 rounded-md p-2.5 text-center">
                <div className="text-accent text-lg font-bold">{value}</div>
                <div className="text-[9px] text-white/30 mt-0.5">{label}</div>
              </div>
            ))}
          </div>
          <div className="text-[10px] text-white/20 flex items-center gap-1.5">
            <div className="w-1 h-1 rounded-full bg-emerald-400" />
            TTB Table 1 reference applied at 68°F
          </div>
        </div>
      </div>
    </MockWindow>
  )
}

/* ─────────────────────────────────────────────
   Page Sections
   ───────────────────────────────────────────── */

function SectionLabel({ children }: { children: React.ReactNode }) {
  return <p className="section-label mb-4">{children}</p>
}

function Hl({ children, solid }: { children: React.ReactNode; solid?: boolean }) {
  return <span className={solid ? 'hl-solid' : 'hl'}>{children}</span>
}

const features = [
  {
    title: 'Production Logging',
    desc: <>Track every batch <Hl>from grain to glass</Hl>. Mashing, fermentation, distillation runs, cuts, all in one place. Covers whiskey, vodka, gin, and rum workflows.</>,
    mock: <MockBatchEntry />,
  },
  {
    title: 'Barrel Management',
    desc: <>500+ barrels tracked with <Hl>location, fill date, spirit type, and aging status</Hl>. See what&apos;s where, what&apos;s ready, and what needs attention.</>,
    mock: <MockBarrelInventory />,
  },
  {
    title: 'TTB Reporting',
    desc: <>Auto-generates monthly reports from production data. Forms 5110.40, 5110.11, and 5110.28, <Hl>ready to review and submit</Hl> by the 15th.</>,
    mock: <MockTTBReport />,
  },
  {
    title: 'Distilling Calculators',
    desc: <>Proof correction, temperature adjustment, gallon conversions, cut-to-proof calculations. <Hl>Hardcoded from TTB gauging tables</Hl>. No rounding errors, no guesswork.</>,
    mock: <MockCalculator />,
  },
]

const adminFeatures = [
  'Review and file TTB reports with AI-drafted summaries',
  'Import existing spreadsheets and bring your current data with you',
  'Inventory reconciliation and audit trail',
  'Monthly compliance dashboard: what\'s filed, what\'s pending, what needs attention',
]

const producerFeatures = [
  'Log runs, dumps, and fills, by voice or by hand',
  'Speech-to-text input: say it, BarrelMonkey structures it',
  'Proof readings, volumes, grain bills, all captured per batch',
  'Works on phone, tablet, or laptop, wherever the work happens',
]

const aiPoints = [
  {
    title: 'Data Validation',
    desc: <>Flags entries that look off: volumes that don&apos;t add up, proof readings outside expected ranges. Plain-English alerts, not cryptic error codes. <Hl>Every flag requires a human to review</Hl> and dismiss or correct before proceeding.</>,
  },
  {
    title: 'Report Drafting',
    desc: <>Generates monthly TTB report drafts from production data with plain-language summaries of unusual entries. <Hl>Nothing is filed until a human explicitly approves.</Hl> The AI never touches Pay.gov.</>,
  },
  {
    title: 'Voice Input Parsing',
    desc: <>Producers speak batch data naturally. AI transcribes and structures it into the right fields. <Hl>Every parsed entry requires confirmation</Hl> before anything is saved.</>,
  },
]

const comparisonRows = [
  { label: 'Cost', ws: '$8,000/year', bm: 'One-time build, ~$0/yr hosting' },
  { label: 'Status', ws: 'Being phased out', bm: 'Built for the long haul' },
  { label: 'Customization', ws: 'Designed for 1,000 distilleries', bm: 'Designed for 888' },
  { label: 'Workflow fit', ws: 'Team built workarounds in spreadsheets', bm: 'Built around how the team actually works' },
  { label: 'Voice input', ws: 'None', bm: 'STT for producer logging' },
  { label: 'AI assistance', ws: 'None', bm: 'Validation, report drafting, anomaly detection' },
  { label: 'Data ownership', ws: 'Their servers, their rules', bm: 'Our database, our data' },
]

const phases = [
  {
    title: 'Foundation',
    weeks: 'Weeks 1–3',
    desc: 'Core data model, production logging, batch entry, barrel inventory. The bones of the system.',
  },
  {
    title: 'TTB Reporting',
    weeks: 'Weeks 3–5',
    desc: 'Monthly report generation for Forms 5110.40, 5110.11, and 5110.28. Spreadsheet import. Review-and-submit workflow.',
  },
  {
    title: 'Intelligence',
    weeks: 'Weeks 5–7',
    desc: 'AI validation layer, voice input for producers, report drafting, anomaly detection. The stuff that makes this better.',
  },
  {
    title: 'Migrate & Launch',
    weeks: 'Weeks 7–8',
    desc: 'Import historical data from Whiskey Systems. Parallel run with current process. Full cutover.',
  },
]

/* ─────────────────────────────────────────────
   Main Page
   ───────────────────────────────────────────── */

export default function Home() {
  return (
    <main>
      {/* ── Section 1: Hero ─────────────────────── */}
      <section className="relative min-h-screen flex flex-col overflow-hidden">
        {/* Background image */}
        <div className="absolute inset-0">
          <Image
            src="/images/distillery/webp/hero-rickhouse.webp"
            alt="Triple Eight rickhouse barrel storage"
            fill
            priority
            quality={80}
            sizes="100vw"
            className="object-cover"
          />
          <div className="absolute inset-0 bg-black/40" />
        </div>

        <nav className="relative z-10 flex items-center justify-between px-6 md:px-12 lg:px-16 py-6">
          <img
            src="/logo/barrelmonkey-logo-lockup.svg"
            alt="BarrelMonkey"
            className="h-7 md:h-9 brightness-0 invert"
          />
        </nav>

        <div className="relative z-10 flex-1 flex flex-col items-center justify-center px-6 text-center">
          <div className="max-w-3xl">
            <h1 className="text-[clamp(2.25rem,6vw,4.5rem)] font-bold leading-[0.95] tracking-tight text-white">
              <span className="relative z-[1]">Distillery management,</span>
              <br />
              built for <Hl solid>Triple Eight.</Hl>
            </h1>
            <p className="mt-6 text-lg md:text-xl text-white max-w-xl mx-auto leading-relaxed">
              Production tracking. Barrel inventory. TTB reporting.
              <br className="hidden sm:block" />
              One system, no bloat.
            </p>
            <p className="mt-5 text-sm text-white">
              Replacing Whiskey Systems with something better.
            </p>
          </div>
        </div>

        {/* Subtle banana watermark */}
        <div className="absolute bottom-32 right-8 md:right-16 opacity-[0.06] pointer-events-none z-10">
          <img
            src="/logo/barrelmonkey-logomark-banana.svg"
            alt=""
            className="w-48 md:w-72 brightness-0 invert"
          />
        </div>

        <div className="relative z-10 pb-10 flex justify-center">
          <div className="scroll-chevron text-white/40">
            <ChevronDown size={24} />
          </div>
        </div>
      </section>

      {/* ── Section 2: The Problem ──────────────── */}
      <section className="bg-black py-20 md:py-28 px-6 md:px-12 lg:px-16">
        <div className="max-w-5xl mx-auto">
          <ScrollReveal>
            <SectionLabel>The Situation</SectionLabel>
          </ScrollReveal>

          <div className="grid md:grid-cols-3 gap-5 mt-10">
            {[
              {
                title: 'Whiskey Systems is sunsetting',
                desc: 'We need to move to a new system anyway. That\'s an opportunity to build something purpose-fit rather than migrate to another off-the-shelf tool.',
              },
              {
                title: '$8K/year we can reinvest',
                desc: 'That budget currently goes to a platform built for a thousand distilleries. Redirecting it toward a custom tool means we get exactly what we need, and own it.',
              },
              {
                title: 'Our real workflow lives in spreadsheets',
                desc: 'The team has already built processes that work. The right tool connects those workflows to compliance reporting, not the other way around.',
              },
            ].map((card, i) => (
              <ScrollReveal key={i} delay={i * 100}>
                <div className="bg-white/[0.06] border border-white/[0.08] p-7 md:p-8 rounded-lg h-full">
                  <h3 className="text-accent text-lg font-bold leading-tight mb-3">{card.title}</h3>
                  <p className="text-white/50 text-[0.9rem] leading-relaxed">{card.desc}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* ── Section 3: What BarrelMonkey Does ───── */}
      <section className="relative py-20 md:py-28 px-6 md:px-12 lg:px-16">
        <div className="max-w-5xl mx-auto">
          <ScrollReveal>
            <SectionLabel>What We&apos;re Building</SectionLabel>
          </ScrollReveal>
          <ScrollReveal delay={100}>
            <h2 className="text-3xl md:text-[2.75rem] font-bold leading-tight tracking-tight mt-2 mb-16 md:mb-20">
              Everything 888 needs.
              <br />
              Nothing it doesn&apos;t.
            </h2>
          </ScrollReveal>

          <div className="space-y-20 md:space-y-28">
            {features.map((feature, i) => (
              <div
                key={i}
                className={`flex flex-col ${i % 2 === 0 ? 'md:flex-row' : 'md:flex-row-reverse'} gap-10 md:gap-14 items-center`}
              >
                <ScrollReveal className="flex-1" delay={0}>
                  <div>
                    <div className="inline-block text-[10px] font-semibold tracking-widest uppercase text-text-muted/40 mb-3">
                      0{i + 1}
                    </div>
                    <h3 className="text-2xl md:text-3xl font-bold mb-4 tracking-tight">{feature.title}</h3>
                    <p className="text-text-muted text-[0.95rem] leading-relaxed max-w-md">{feature.desc}</p>
                  </div>
                </ScrollReveal>
                <ScrollReveal className="flex-1 w-full" delay={150}>
                  {feature.mock}
                </ScrollReveal>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── Section 4: Two Roles ────────────────── */}
      <section className="relative bg-black py-20 md:py-28 px-6 md:px-12 lg:px-16 overflow-hidden">
        {/* Barrel texture */}
        <div className="absolute inset-0 opacity-[0.12]">
          <Image
            src="/images/distillery/webp/barrel-numbers.webp"
            alt="Numbered barrel ends at Triple Eight Distillery"
            fill
            quality={75}
            sizes="100vw"
            className="object-cover"
          />
        </div>
        <div className="max-w-5xl mx-auto relative z-10">
          <ScrollReveal>
            <SectionLabel>Who It&apos;s For</SectionLabel>
          </ScrollReveal>
          <ScrollReveal delay={100}>
            <h2 className="text-3xl md:text-[2.75rem] font-bold leading-tight tracking-tight mt-2 mb-14 text-white">
              Two roles. <Hl solid>One system.</Hl>
            </h2>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-6">
            {/* Admin.Nicole */}
            <ScrollReveal delay={0}>
              <div className="bg-black text-white rounded-xl p-8 md:p-10 h-full">
                <div className="inline-flex items-center gap-2.5 mb-7">
                  <div className="w-9 h-9 rounded-lg bg-accent/15 flex items-center justify-center">
                    <ClipboardList size={18} className="text-accent" />
                  </div>
                  <div>
                    <div className="text-lg font-bold">Nicole</div>
                    <div className="text-[11px] text-white/40 uppercase tracking-wider">Admin &amp; Compliance</div>
                  </div>
                </div>
                <ul className="space-y-4">
                  {adminFeatures.map((f, i) => (
                    <li key={i} className="flex items-start gap-3 text-white/60 text-[0.9rem] leading-relaxed">
                      <span className="mt-1.5 w-1.5 h-1.5 rounded-full bg-accent flex-shrink-0" />
                      {f}
                    </li>
                  ))}
                </ul>
              </div>
            </ScrollReveal>

            {/* Producer.Randy + Team */}
            <ScrollReveal delay={120}>
              <div className="bg-white/[0.08] border border-white/[0.1] rounded-xl p-8 md:p-10 h-full">
                <div className="inline-flex items-center gap-2.5 mb-7">
                  <div className="w-9 h-9 rounded-lg bg-white/[0.08] flex items-center justify-center">
                    <Layers size={18} className="text-white" />
                  </div>
                  <div>
                    <div className="text-lg font-bold text-white">Randy + Team</div>
                    <div className="text-[11px] text-white/40 uppercase tracking-wider">Production</div>
                  </div>
                </div>
                <ul className="space-y-4">
                  {producerFeatures.map((f, i) => (
                    <li key={i} className="flex items-start gap-3 text-white/60 text-[0.9rem] leading-relaxed">
                      <span className="mt-1.5 w-1.5 h-1.5 rounded-full bg-white flex-shrink-0" />
                      {f}
                    </li>
                  ))}
                </ul>
              </div>
            </ScrollReveal>
          </div>

          {/* Tagline */}
          <ScrollReveal delay={250}>
            <p className="text-lg md:text-xl max-w-2xl mx-auto leading-relaxed tracking-tight text-center mt-14 text-white/80">
              Nicole manages compliance. The crew manages production.
              <br className="hidden md:block" />
              <strong><Hl solid>BarrelMonkey keeps them in sync.</Hl></strong>
            </p>
          </ScrollReveal>
        </div>
      </section>

      {/* ── Section 4b: Nicole's Workflow ────────── */}
      <section className="py-20 md:py-28 px-6 md:px-12 lg:px-16 bg-white">
        <div className="max-w-5xl mx-auto">
          <ScrollReveal>
            <SectionLabel>Meet You Where You Are</SectionLabel>
          </ScrollReveal>
          <ScrollReveal delay={100}>
            <h2 className="text-3xl md:text-[2.75rem] font-bold leading-tight tracking-tight mt-2 mb-6">
              Upload a CSV. <Hl>That&apos;s it.</Hl>
            </h2>
          </ScrollReveal>

          <div className="flex flex-col md:flex-row gap-12 md:gap-16 mt-12">
            {/* Left.Flow diagram */}
            <ScrollReveal className="flex-1">
              <div className="space-y-0">
                {[
                  { icon: '⊞', label: 'Spreadsheet', sub: 'Your existing workflow' },
                  { icon: '↓', label: '', sub: '' },
                  { icon: '⤓', label: 'CSV Export', sub: 'Same format, same columns' },
                  { icon: '↓', label: '', sub: '' },
                  { icon: '◉', label: 'BarrelMonkey Import', sub: 'Auto-maps columns, flags issues' },
                  { icon: '↓', label: '', sub: '' },
                  { icon: '✓', label: 'TTB Reports', sub: 'Auto-generated, ready to review' },
                ].map((step, i) =>
                  step.label === '' ? (
                    <div key={i} className="flex justify-center py-1">
                      <div className="w-px h-6 bg-black/10" />
                    </div>
                  ) : (
                    <div key={i} className="flex items-center gap-4">
                      <div className={`w-11 h-11 rounded-lg flex items-center justify-center text-sm font-bold flex-shrink-0 ${
                        step.icon === '✓'
                          ? 'bg-accent text-black'
                          : step.icon === '◉'
                          ? 'bg-black text-white'
                          : 'bg-surface text-black/60'
                      }`}>
                        {step.icon}
                      </div>
                      <div>
                        <div className="font-semibold text-sm">{step.label}</div>
                        <div className="text-text-muted text-xs">{step.sub}</div>
                      </div>
                    </div>
                  )
                )}
              </div>
            </ScrollReveal>

            {/* Right.Copy + steps */}
            <div className="flex-1">
              <ScrollReveal>
                <p className="text-text-muted text-[0.95rem] leading-relaxed mb-10">
                  The spreadsheets already work. BarrelMonkey doesn&apos;t replace them; it plugs into them.
                  Export monthly production data as a CSV, same format, same columns. BarrelMonkey ingests it,
                  maps it to the right fields, and generates TTB-ready reports for review and filing.
                </p>
              </ScrollReveal>

              <div className="space-y-6">
                {[
                  {
                    num: '1',
                    title: 'Export',
                    desc: 'Same monthly sheet, same format. Save as CSV.',
                  },
                  {
                    num: '2',
                    title: 'Import',
                    desc: 'BarrelMonkey reads the file, maps columns automatically, and flags anything that looks off before committing.',
                  },
                  {
                    num: '3',
                    title: 'Review',
                    desc: 'TTB reports are drafted from the imported data. Adjust if needed, submit.',
                  },
                ].map((step, i) => (
                  <ScrollReveal key={i} delay={i * 100 + 150}>
                    <div className="flex gap-4">
                      <div className="w-7 h-7 rounded-full bg-black text-white flex items-center justify-center text-xs font-bold flex-shrink-0 mt-0.5">
                        {step.num}
                      </div>
                      <div>
                        <div className="font-bold text-sm mb-0.5">{step.title}</div>
                        <div className="text-text-muted text-[0.85rem] leading-relaxed">{step.desc}</div>
                      </div>
                    </div>
                  </ScrollReveal>
                ))}
              </div>

              {/* Callout box */}
              <ScrollReveal delay={500}>
                <div className="mt-10 border-l-[3px] border-accent bg-surface rounded-r-lg px-5 py-4">
                  <p className="text-[0.85rem] leading-relaxed text-black/70">
                    No new data entry. No retraining. No learning a new interface for the same job.
                    If the spreadsheet works, the spreadsheet stays. <strong className="text-black">BarrelMonkey just
                    turns it into compliance.</strong>
                  </p>
                </div>
              </ScrollReveal>
            </div>
          </div>
        </div>
      </section>

      {/* ── Section 5: The AI Layer ─────────────── */}
      <section className="py-20 md:py-28 px-6 md:px-12 lg:px-16">
        <div className="max-w-4xl mx-auto text-center">
          <ScrollReveal>
            <SectionLabel>Smarter, Not Riskier</SectionLabel>
          </ScrollReveal>
          <ScrollReveal delay={100}>
            <h2 className="text-3xl md:text-[2.75rem] font-bold leading-tight tracking-tight mt-2 mb-5">
              AI that assists.
              <br />
              <Hl>Humans that decide.</Hl>
            </h2>
          </ScrollReveal>
          <ScrollReveal delay={200}>
            <p className="text-text-muted text-[0.95rem] md:text-lg max-w-2xl mx-auto leading-relaxed mb-6">
              The core of BarrelMonkey is deterministic code: math and database queries that
              can&apos;t hallucinate. AI sits on top as a review layer, never in the critical path.
            </p>
          </ScrollReveal>

          {/* Human-in-the-loop guarantee */}
          <ScrollReveal delay={250}>
            <div className="inline-flex items-center gap-2.5 bg-black text-white text-sm font-semibold px-5 py-3 rounded-full mb-16">
              <CircleCheck size={16} className="text-accent" />
              Every AI output requires human review before it touches anything
            </div>
          </ScrollReveal>

          {/* Architecture hint */}
          <ScrollReveal delay={300}>
            <div className="max-w-lg mx-auto mb-16">
              <div className="border border-dashed border-accent/30 rounded-lg p-4 text-[11px] text-text-muted/50 uppercase tracking-wider">
                AI Layer.suggests, drafts, flags
              </div>
              <div className="flex flex-col items-center py-1">
                <div className="w-px h-4 bg-black/10" />
                <div className="text-[9px] text-accent font-bold tracking-widest uppercase py-1">Human approval required</div>
                <div className="w-px h-4 bg-black/10" />
              </div>
              <div className="border-2 border-black rounded-lg p-4 text-[11px] font-semibold uppercase tracking-wider">
                Core Engine.database, calculations, TTB math
              </div>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-3 gap-8 text-left">
            {aiPoints.map((point, i) => (
              <ScrollReveal key={i} delay={i * 100 + 350}>
                <div>
                  <div className="w-8 h-8 rounded-full bg-black flex items-center justify-center text-white text-xs font-bold mb-4">
                    {i + 1}
                  </div>
                  <h3 className="text-lg font-bold mb-2">{point.title}</h3>
                  <p className="text-text-muted text-[0.9rem] leading-relaxed">{point.desc}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          {/* Explicit guarantee callout */}
          <ScrollReveal delay={700}>
            <div className="mt-14 border-2 border-black rounded-lg px-6 py-5 max-w-2xl mx-auto text-left">
              <div className="flex items-start gap-3">
                <div className="w-6 h-6 rounded-full bg-accent flex items-center justify-center flex-shrink-0 mt-0.5">
                  <Check size={12} className="text-black" strokeWidth={3} />
                </div>
                <div>
                  <div className="font-bold text-sm mb-1">The guarantee</div>
                  <p className="text-text-muted text-[0.85rem] leading-relaxed">
                    AI never auto-submits reports, never modifies data without confirmation, and never
                    touches Pay.gov. Every AI-generated draft, validation flag, and parsed voice entry
                    is presented for human review before anything is saved or filed.
                    <strong className="text-black"> The human always has the final say.</strong>
                  </p>
                </div>
              </div>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* ── Section 6: Why Build, Not Buy ──────── */}
      <section className="relative bg-black py-20 md:py-28 px-6 md:px-12 lg:px-16 overflow-hidden">
        {/* Production floor texture */}
        <div className="absolute inset-0 opacity-[0.1]">
          <Image
            src="/images/distillery/webp/production-floor.webp"
            alt="Triple Eight Distillery production floor"
            fill
            quality={75}
            sizes="100vw"
            className="object-cover"
          />
        </div>
        <div className="max-w-4xl mx-auto relative z-10">
          <ScrollReveal>
            <SectionLabel>The Case</SectionLabel>
          </ScrollReveal>

          <ScrollReveal delay={150}>
            <div className="bg-white/[0.06] backdrop-blur-sm rounded-xl overflow-hidden mt-8 border border-white/[0.08]">
              <div className="overflow-x-auto">
                <table className="comparison-table w-full min-w-[540px]">
                  <thead>
                    <tr>
                      <th className="w-[30%]"></th>
                      <th className="text-white/30 w-[35%]">Whiskey Systems</th>
                      <th className="text-white w-[35%]">
                        <span className="inline-flex items-center gap-2">
                          <span className="w-2 h-2 rounded-full bg-accent" />
                          BarrelMonkey
                        </span>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    {comparisonRows.map((row, i) => (
                      <tr key={i}>
                        <td className="font-semibold text-sm text-white">{row.label}</td>
                        <td className="text-white/50">{row.ws}</td>
                        <td className="font-medium text-accent">{row.bm}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* ── Section 7: Timeline ─────────────────── */}
      <section className="py-20 md:py-28 px-6 md:px-12 lg:px-16">
        <div className="max-w-5xl mx-auto">
          <ScrollReveal>
            <SectionLabel>How We Get There</SectionLabel>
          </ScrollReveal>

          <div className="mt-12 relative">
            {/* Horizontal connector line (desktop only) */}
            <div className="hidden md:block timeline-line" />

            <div className="grid md:grid-cols-4 gap-10 md:gap-6">
              {phases.map((phase, i) => (
                <ScrollReveal key={i} delay={i * 120}>
                  <div className="relative">
                    <div className="w-10 h-10 rounded-full bg-black text-white flex items-center justify-center text-sm font-bold mb-5 relative z-10">
                      {i + 1}
                    </div>
                    <h3 className="font-bold text-lg mb-1">{phase.title}</h3>
                    <p className="text-accent text-xs font-semibold mb-3">{phase.weeks}</p>
                    <p className="text-text-muted text-[0.85rem] leading-relaxed">{phase.desc}</p>
                  </div>
                </ScrollReveal>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* ── Section 8: Footer ──────────────────── */}
      <footer className="relative text-white py-20 md:py-28 px-6 text-center overflow-hidden">
        <div className="absolute inset-0">
          <Image
            src="/images/distillery/webp/distillery-exterior.webp"
            alt="Triple Eight Distillery exterior with garden"
            fill
            quality={75}
            sizes="100vw"
            className="object-cover"
          />
          <div className="absolute inset-0 bg-black/75" />
        </div>
        <ScrollReveal>
          <div className="relative z-10">
            <img
              src="/logo/barrelmonkey-logomark.svg"
              alt="BarrelMonkey"
              className="h-10 md:h-12 mx-auto mb-8 brightness-0 invert"
            />
            <p className="text-xl font-semibold mb-2">Built for Triple Eight Distillery</p>
<p className="text-accent text-sm font-semibold">barrelmonkey.app</p>
          </div>
        </ScrollReveal>
      </footer>
    </main>
  )
}
