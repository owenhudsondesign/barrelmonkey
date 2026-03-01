import type { Metadata, Viewport } from 'next'
import './globals.css'

export const viewport: Viewport = {
  themeColor: '#000000',
  width: 'device-width',
  initialScale: 1,
}

export const metadata: Metadata = {
  title: 'BarrelMonkey — Distillery Management for Triple Eight',
  description: 'Production tracking. Barrel inventory. TTB reporting. One system, no bloat.',
  metadataBase: new URL('https://barrelmonkey.app'),
  icons: {
    icon: '/logo/barrelmonkey-favicon.svg',
  },
  openGraph: {
    title: 'BarrelMonkey — Distillery Management for Triple Eight',
    description: 'Production tracking. Barrel inventory. TTB reporting. One system, no bloat.',
    url: 'https://barrelmonkey.app',
    siteName: 'BarrelMonkey',
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'BarrelMonkey — Distillery Management for Triple Eight',
    description: 'Production tracking. Barrel inventory. TTB reporting. One system, no bloat.',
  },
  robots: {
    index: true,
    follow: true,
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
          rel="preload"
          href="https://reinhart1010.github.io/aileron/aileron.lite.min.css"
          as="style"
          crossOrigin="anonymous"
        />
        <link
          rel="stylesheet"
          href="https://reinhart1010.github.io/aileron/aileron.lite.min.css"
          media="print"
          id="aileron-font"
        />
        <script dangerouslySetInnerHTML={{ __html: `document.getElementById('aileron-font').addEventListener('load',function(){this.media='all'})` }} />
        <noscript>
          <link
            rel="stylesheet"
            href="https://reinhart1010.github.io/aileron/aileron.lite.min.css"
          />
        </noscript>
      </head>
      <body className="font-sans">{children}</body>
    </html>
  )
}
