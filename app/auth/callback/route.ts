import { NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  const { searchParams, origin } = new URL(request.url)
  const code = searchParams.get('code')

  const supabase = await createClient()

  // Exchange code if present (magic link / OAuth flow)
  if (code) {
    const { error } = await supabase.auth.exchangeCodeForSession(code)
    if (error) {
      return NextResponse.redirect(`${origin}/login?error=auth`)
    }
  }

  // Redirect based on role
  const { data: { user } } = await supabase.auth.getUser()

  if (user) {
    const { data: profile } = await supabase
      .from('users')
      .select('role')
      .eq('id', user.id)
      .single<{ role: string }>()

    const redirectPath = profile?.role === 'admin' ? '/dashboard' : '/barrels'
    return NextResponse.redirect(`${origin}${redirectPath}`)
  }

  return NextResponse.redirect(`${origin}/login?error=auth`)
}
