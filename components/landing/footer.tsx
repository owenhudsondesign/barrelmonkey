import Image from 'next/image'
import { ScrollReveal } from '@/app/scroll-reveal'

export function Footer() {
  return (
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
          <p className="text-accent text-sm font-semibold">barrelmonkey.vercel.app</p>
        </div>
      </ScrollReveal>
    </footer>
  )
}
