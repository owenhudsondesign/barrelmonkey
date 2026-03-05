import Image from 'next/image'
import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel } from './shared'

const comparisonRows = [
  { label: 'Cost', ws: '$8,000/year', bm: 'One-time build, ~$0/yr hosting' },
  { label: 'Status', ws: 'Being phased out', bm: 'Built for the long haul' },
  { label: 'Customization', ws: 'Designed for 1,000 distilleries', bm: 'Designed for 888' },
  { label: 'Workflow fit', ws: 'Team built workarounds in spreadsheets', bm: 'Built around how the team actually works' },
  { label: 'Voice input', ws: 'None', bm: 'STT for producer logging' },
  { label: 'AI assistance', ws: 'None', bm: 'Validation, report drafting, anomaly detection' },
  { label: 'Data ownership', ws: 'Their servers, their rules', bm: 'Our database, our data' },
]

export function Comparison() {
  return (
    <section className="relative bg-black py-20 md:py-28 px-6 md:px-12 lg:px-16 overflow-hidden">
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
  )
}
