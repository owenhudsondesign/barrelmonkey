import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel, Hl } from './shared'
import { MockBatchEntry } from './mock-batch-entry'
import { MockBarrelInventory } from './mock-barrel-inventory'
import { MockTTBReport } from './mock-ttb-report'
import { MockCalculator } from './mock-calculator'

const features = [
  {
    title: 'Production Logging',
    desc: <>Track every batch from <Hl>mash to barrel</Hl>. Fermentation, distillation runs, cuts, all in one place. Covers whiskey, vodka, gin, and rum workflows.</>,
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

export function Features() {
  return (
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
  )
}
