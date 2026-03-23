import Image from 'next/image'
import { ClipboardList, Layers } from 'lucide-react'
import { ScrollReveal } from '@/app/scroll-reveal'
import { SectionLabel, Hl } from './shared'

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

export function Roles() {
  return (
    <section className="relative bg-black py-20 md:py-28 px-6 md:px-12 lg:px-16 overflow-hidden">
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
          <ScrollReveal delay={0}>
            <div className="bg-black text-white rounded-xl p-8 md:p-10 h-full">
              <div className="inline-flex items-center gap-2.5 mb-7">
                <div className="w-9 h-9 rounded-lg bg-accent/15 flex items-center justify-center">
                  <ClipboardList size={18} className="text-accent" />
                </div>
                <div>
                  <div className="text-lg font-bold">Admin</div>
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

          <ScrollReveal delay={120}>
            <div className="bg-white/[0.08] border border-white/[0.1] rounded-xl p-8 md:p-10 h-full">
              <div className="inline-flex items-center gap-2.5 mb-7">
                <div className="w-9 h-9 rounded-lg bg-white/[0.08] flex items-center justify-center">
                  <Layers size={18} className="text-white" />
                </div>
                <div>
                  <div className="text-lg font-bold text-white">Production Team</div>
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

        <ScrollReveal delay={250}>
          <p className="text-lg md:text-xl max-w-2xl mx-auto leading-relaxed tracking-tight text-center mt-14 text-white/80">
            Admin manages compliance. The crew manages production.
            <br className="hidden md:block" />
            <strong><Hl solid>BarrelMonkey keeps them in sync.</Hl></strong>
          </p>
        </ScrollReveal>
      </div>
    </section>
  )
}
