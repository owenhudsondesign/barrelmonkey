'use client'

import { type ReactNode } from 'react'

interface ResultCardProps {
  label: string
  value: string
  accent?: boolean
}

export function ResultCard({ label, value, accent = false }: ResultCardProps) {
  return (
    <div
      className={`rounded-lg p-4 text-center ${
        accent
          ? 'bg-accent/10 border border-accent/30'
          : 'bg-white/[0.04] border border-white/10'
      }`}
    >
      <div className={`text-2xl font-bold ${accent ? 'text-accent' : 'text-white'}`}>
        {value}
      </div>
      <div className="text-xs text-white/40 mt-1">{label}</div>
    </div>
  )
}

interface CalculatorInputProps {
  id: string
  label: string
  value: string
  onChange: (value: string) => void
  unit?: string
  placeholder?: string
  min?: number
  max?: number
  step?: number
}

export function CalculatorInput({
  id,
  label,
  value,
  onChange,
  unit,
  placeholder,
  min,
  max,
  step = 0.1,
}: CalculatorInputProps) {
  return (
    <div>
      <label htmlFor={id} className="block text-xs text-white/50 mb-1.5">
        {label}
      </label>
      <div className="relative">
        <input
          id={id}
          type="number"
          value={value}
          onChange={(e) => onChange(e.target.value)}
          placeholder={placeholder}
          min={min}
          max={max}
          step={step}
          className="w-full bg-white/[0.06] border border-white/10 rounded-md px-3 py-2.5 text-white text-sm placeholder:text-white/20 focus:outline-none focus:border-accent/50 focus:ring-1 focus:ring-accent/30 [appearance:textfield] [&::-webkit-outer-spin-button]:appearance-none [&::-webkit-inner-spin-button]:appearance-none"
        />
        {unit && (
          <span className="absolute right-3 top-1/2 -translate-y-1/2 text-xs text-white/30">
            {unit}
          </span>
        )}
      </div>
    </div>
  )
}

interface CalculatorSectionProps {
  title: string
  description: string
  children: ReactNode
}

export function CalculatorSection({ title, description, children }: CalculatorSectionProps) {
  return (
    <div className="bg-white/[0.02] border border-white/[0.08] rounded-xl p-6">
      <h2 className="text-lg font-semibold text-white mb-1">{title}</h2>
      <p className="text-sm text-white/40 mb-6">{description}</p>
      {children}
    </div>
  )
}
