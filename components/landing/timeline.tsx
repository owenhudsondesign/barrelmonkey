import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel } from './shared'

const phases = [
  {
    title: 'Foundation',
    weeks: 'Weeks 1\u20133',
    desc: 'Core data model, production logging, batch entry, barrel inventory. The bones of the system.',
  },
  {
    title: 'TTB Reporting',
    weeks: 'Weeks 3\u20135',
    desc: 'Monthly report generation for Forms 5110.40, 5110.11, and 5110.28. Spreadsheet import. Review-and-submit workflow.',
  },
  {
    title: 'Intelligence',
    weeks: 'Weeks 5\u20137',
    desc: 'AI validation layer, voice input for producers, report drafting, anomaly detection. The stuff that makes this better.',
  },
  {
    title: 'Migrate & Launch',
    weeks: 'Weeks 7\u20138',
    desc: 'Import historical data from Whiskey Systems. Parallel run with current process. Full cutover.',
  },
]

export function Timeline() {
  return (
    <section className="py-20 md:py-28 px-6 md:px-12 lg:px-16">
      <div className="max-w-5xl mx-auto">
        <ScrollReveal>
          <SectionLabel>How We Get There</SectionLabel>
        </ScrollReveal>

        <div className="mt-12 relative">
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
  )
}
