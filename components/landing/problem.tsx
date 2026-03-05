import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel } from './shared'

const problemCards = [
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
]

export function Problem() {
  return (
    <section className="bg-black py-20 md:py-28 px-6 md:px-12 lg:px-16">
      <div className="max-w-5xl mx-auto">
        <ScrollReveal>
          <SectionLabel>The Situation</SectionLabel>
        </ScrollReveal>

        <div className="grid md:grid-cols-3 gap-5 mt-10">
          {problemCards.map((card, i) => (
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
  )
}
