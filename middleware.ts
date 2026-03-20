import { updateSession } from '@/lib/supabase/middleware'
import { NextResponse, type NextRequest } from 'next/server'

const PUBLIC_ROUTES = ['/', '/login']

const ADMIN_ONLY_PREFIXES: string[] = []

export async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl

  // Public routes — still refresh session cookies
  if (PUBLIC_ROUTES.includes(pathname) || pathname.startsWith('/auth/')) {
    const { supabaseResponse } = await updateSession(request)
    return supabaseResponse
  }

  const { user, supabase, supabaseResponse } = await updateSession(request)

  // Not authenticated → login
  if (!user) {
    const url = request.nextUrl.clone()
    url.pathname = '/login'
    return NextResponse.redirect(url)
  }

  // Check role for admin-only routes
  const isAdminRoute = ADMIN_ONLY_PREFIXES.some((prefix) => pathname.startsWith(prefix))

  if (isAdminRoute) {
    const { data: profile } = await supabase
      .from('users')
      .select('role')
      .eq('id', user.id)
      .single<{ role: string }>()

    if (profile?.role !== 'admin') {
      const url = request.nextUrl.clone()
      url.pathname = '/barrels'
      return NextResponse.redirect(url)
    }
  }

  return supabaseResponse
}

export const config = {
  matcher: [
    '/((?!_next/static|_next/image|favicon.ico|images|logo|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
}
