'use client'

import { useState } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { signOut } from '@/app/(auth)/actions'

export interface NavItem {
  label: string
  href: string
  icon: React.ReactNode
  disabled?: boolean
}

interface SidebarProps {
  navItems: NavItem[]
  userEmail: string
  userRole: string
}

export function Sidebar({ navItems, userEmail, userRole }: SidebarProps) {
  const pathname = usePathname()
  const [mobileOpen, setMobileOpen] = useState(false)

  return (
    <>
      {/* Mobile header */}
      <div className="lg:hidden fixed top-0 left-0 right-0 z-40 bg-black border-b border-white/10 px-4 h-14 flex items-center justify-between">
        <button
          onClick={() => setMobileOpen(!mobileOpen)}
          className="text-white/60 hover:text-white p-1"
          aria-label="Toggle menu"
        >
          <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            {mobileOpen ? (
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M6 18L18 6M6 6l12 12" />
            ) : (
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 6h16M4 12h16M4 18h16" />
            )}
          </svg>
        </button>
        <span className="text-white font-bold text-sm tracking-tight">BarrelMonkey</span>
        <div className="w-6" />
      </div>

      {/* Mobile overlay */}
      {mobileOpen && (
        <div
          className="lg:hidden fixed inset-0 z-40 bg-black/60"
          onClick={() => setMobileOpen(false)}
        />
      )}

      {/* Sidebar */}
      <aside
        className={`fixed top-0 left-0 z-50 h-full w-56 bg-black border-r border-white/10 flex flex-col transition-transform duration-200 ${
          mobileOpen ? 'translate-x-0' : '-translate-x-full'
        } lg:translate-x-0`}
      >
        {/* Logo */}
        <div className="px-4 h-14 flex items-center border-b border-white/10">
          <Link href="/barrels" className="flex items-center gap-2">
            <span className="text-white font-bold text-sm tracking-tight">BarrelMonkey</span>
          </Link>
        </div>

        {/* Nav */}
        <nav className="flex-1 px-2 py-3 space-y-0.5 overflow-y-auto">
          {navItems.map((item) => {
            const isActive = pathname === item.href || pathname.startsWith(item.href + '/')

            if (item.disabled) {
              return (
                <div
                  key={item.href}
                  className="flex items-center gap-3 px-3 py-2 rounded-md text-white/20 cursor-not-allowed text-sm"
                >
                  <span className="w-5 h-5 flex items-center justify-center opacity-40">{item.icon}</span>
                  {item.label}
                </div>
              )
            }

            return (
              <Link
                key={item.href}
                href={item.href}
                onClick={() => setMobileOpen(false)}
                className={`flex items-center gap-3 px-3 py-2 rounded-md text-sm transition-colors ${
                  isActive
                    ? 'bg-accent/10 text-accent font-medium'
                    : 'text-white/60 hover:text-white hover:bg-white/[0.04]'
                }`}
              >
                <span className="w-5 h-5 flex items-center justify-center">{item.icon}</span>
                {item.label}
              </Link>
            )
          })}
        </nav>

        {/* User */}
        <div className="border-t border-white/10 px-3 py-3">
          <div className="text-xs text-white/40 truncate">{userEmail}</div>
          <div className="flex items-center justify-between mt-1">
            <span className="text-[10px] uppercase tracking-wider text-white/20">{userRole}</span>
            <form action={signOut}>
              <button
                type="submit"
                className="text-xs text-white/30 hover:text-white/60 transition-colors"
              >
                Sign out
              </button>
            </form>
          </div>
        </div>
      </aside>
    </>
  )
}
