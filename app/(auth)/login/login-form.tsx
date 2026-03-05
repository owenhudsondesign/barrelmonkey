'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'

export function LoginForm() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [status, setStatus] = useState<'idle' | 'loading' | 'error'>('idle')
  const [errorMsg, setErrorMsg] = useState('')
  const router = useRouter()

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()

    if (!email || !email.includes('@')) {
      setErrorMsg('Enter a valid email address.')
      setStatus('error')
      return
    }

    if (!password) {
      setErrorMsg('Enter your password.')
      setStatus('error')
      return
    }

    setStatus('loading')
    setErrorMsg('')

    const supabase = createClient()
    const { error } = await supabase.auth.signInWithPassword({
      email,
      password,
    })

    if (error) {
      setErrorMsg(error.message)
      setStatus('error')
    } else {
      router.push('/auth/callback')
      router.refresh()
    }
  }

  return (
    <form onSubmit={handleSubmit} className="bg-white/[0.04] border border-white/10 rounded-lg p-6">
      <label htmlFor="email" className="block text-xs text-white/40 uppercase tracking-wider mb-2">
        Email address
      </label>
      <input
        id="email"
        type="email"
        value={email}
        onChange={(e) => setEmail(e.target.value)}
        placeholder="nicole@tripleeight.com"
        autoComplete="email"
        autoFocus
        className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2.5 text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25 text-sm"
      />

      <label htmlFor="password" className="block text-xs text-white/40 uppercase tracking-wider mb-2 mt-4">
        Password
      </label>
      <input
        id="password"
        type="password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
        placeholder="••••••••"
        autoComplete="current-password"
        className="w-full bg-white/[0.03] border border-white/10 rounded-md px-3 py-2.5 text-white placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/25 text-sm"
      />

      {status === 'error' && (
        <p className="text-error text-xs mt-2">{errorMsg}</p>
      )}

      <button
        type="submit"
        disabled={status === 'loading'}
        className="w-full mt-4 bg-accent text-black font-semibold text-sm py-2.5 rounded-md hover:bg-accent/90 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
      >
        {status === 'loading' ? 'Signing in...' : 'Sign In'}
      </button>
    </form>
  )
}
