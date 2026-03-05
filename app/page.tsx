import { Hero } from '@/components/landing/hero'
import { Problem } from '@/components/landing/problem'
import { Features } from '@/components/landing/features'
import { Roles } from '@/components/landing/roles'
import { CsvImportWorkflow } from '@/components/landing/csv-import-workflow'
import { AiLayer } from '@/components/landing/ai-layer'
import { Comparison } from '@/components/landing/comparison'
import { Timeline } from '@/components/landing/timeline'
import { Footer } from '@/components/landing/footer'

export default function Home() {
  return (
    <main>
      <Hero />
      <Problem />
      <Features />
      <Roles />
      <CsvImportWorkflow />
      <AiLayer />
      <Comparison />
      <Timeline />
      <Footer />
    </main>
  )
}
