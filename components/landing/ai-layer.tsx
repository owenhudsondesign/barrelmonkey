import { CircleCheck, Check } from 'lucide-react'
import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel, Hl } from './shared'

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

export function AiLayer() {
  return (
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

        <ScrollReveal delay={250}>
          <div className="inline-flex items-center gap-2.5 bg-black text-white text-sm font-semibold px-5 py-3 rounded-full mb-16">
            <CircleCheck size={16} className="text-accent" />
            Every AI output requires human review before it touches anything
          </div>
        </ScrollReveal>

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
  )
}
