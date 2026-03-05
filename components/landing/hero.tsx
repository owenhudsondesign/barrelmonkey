import Image from 'next/image'
import { ChevronDown } from 'lucide-react'
import { Hl } from './shared'

export function Hero() {
  return (
    <section className="relative min-h-screen flex flex-col overflow-hidden">
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
  )
}
