import type { Config } from 'tailwindcss'

const config: Config = {
  content: ['./app/**/*.{ts,tsx}'],
  theme: {
    extend: {
      colors: {
        accent: '#FFCC33',
        surface: '#F5F5F0',
        'text-muted': '#6B6B6B',
        success: '#2D6A4F',
        error: '#D62828',
      },
      fontFamily: {
        sans: ['Aileron', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
}

export default config
