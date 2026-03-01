import type { Metadata } from 'next'
import './globals.css'

export const metadata: Metadata = {
  title: 'BarrelMonkey — Distillery Management for Triple Eight',
  description: 'Production tracking. Barrel inventory. TTB reporting. One system, no bloat.',
  icons: {
    icon: '/logo/barrelmonkey-favicon.svg',
  },
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <head>
        <link
          rel="stylesheet"
          href="https://reinhart1010.github.io/aileron/aileron.lite.min.css"
        />
      </head>
      <body className="font-sans">{children}</body>
    </html>
  )
}
