import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel, Hl } from './shared'

const flowSteps = [
  { icon: '\u229e', label: 'Spreadsheet', sub: 'Your existing workflow' },
  { icon: '\u2193', label: '', sub: '' },
  { icon: '\u2913', label: 'CSV Export', sub: 'Same format, same columns' },
  { icon: '\u2193', label: '', sub: '' },
  { icon: '\u25c9', label: 'BarrelMonkey Import', sub: 'Auto-maps columns, flags issues' },
  { icon: '\u2193', label: '', sub: '' },
  { icon: '\u2713', label: 'TTB Reports', sub: 'Auto-generated, ready to review' },
]

const numberedSteps = [
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
]

export function CsvImportWorkflow() {
  return (
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
          <ScrollReveal className="flex-1">
            <div className="space-y-0">
              {flowSteps.map((step, i) =>
                step.label === '' ? (
                  <div key={i} className="flex justify-center py-1">
                    <div className="w-px h-6 bg-black/10" />
                  </div>
                ) : (
                  <div key={i} className="flex items-center gap-4">
                    <div className={`w-11 h-11 rounded-lg flex items-center justify-center text-sm font-bold flex-shrink-0 ${
                      step.icon === '\u2713'
                        ? 'bg-accent text-black'
                        : step.icon === '\u25c9'
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

          <div className="flex-1">
            <ScrollReveal>
              <p className="text-text-muted text-[0.95rem] leading-relaxed mb-10">
                The spreadsheets already work. BarrelMonkey doesn&apos;t replace them; it plugs into them.
                Export monthly production data as a CSV, same format, same columns. BarrelMonkey ingests it,
                maps it to the right fields, and generates TTB-ready reports for review and filing.
              </p>
            </ScrollReveal>

            <div className="space-y-6">
              {numberedSteps.map((step, i) => (
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
  )
}
