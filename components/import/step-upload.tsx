'use client'

import { useCallback, useRef, useState } from 'react'
import Papa from 'papaparse'
import type { ImportType } from '@/lib/import/parsers'
import { IMPORT_TYPES } from '@/lib/import/parsers'

interface StepUploadProps {
  importType: ImportType
  onParsed: (rows: Record<string, string>[], filename: string) => void
  onBack: () => void
}

export function StepUpload({ importType, onParsed, onBack }: StepUploadProps) {
  const [dragOver, setDragOver] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [parsing, setParsing] = useState(false)
  const fileRef = useRef<HTMLInputElement>(null)

  const config = IMPORT_TYPES.find((t) => t.id === importType)!

  const handleFile = useCallback((file: File) => {
    if (!file.name.endsWith('.csv')) {
      setError('Please upload a CSV file.')
      return
    }

    setParsing(true)
    setError(null)

    Papa.parse<Record<string, string>>(file, {
      header: true,
      skipEmptyLines: true,
      transformHeader: (h) => h.trim(),
      complete: (results) => {
        setParsing(false)
        if (results.errors.length > 0 && results.data.length === 0) {
          setError(`CSV parse error: ${results.errors[0].message}`)
          return
        }
        if (results.data.length === 0) {
          setError('CSV file is empty.')
          return
        }
        onParsed(results.data, file.name)
      },
      error: (err) => {
        setParsing(false)
        setError(`Failed to parse CSV: ${err.message}`)
      },
    })
  }, [onParsed])

  function handleDrop(e: React.DragEvent) {
    e.preventDefault()
    setDragOver(false)
    const file = e.dataTransfer.files[0]
    if (file) handleFile(file)
  }

  function handleFileChange(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0]
    if (file) handleFile(file)
  }

  return (
    <div>
      <div className="flex items-center gap-3 mb-6">
        <button onClick={onBack} className="text-white/40 hover:text-white/60 transition-colors">
          <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M15.75 19.5L8.25 12l7.5-7.5" />
          </svg>
        </button>
        <div>
          <h2 className="text-lg font-semibold text-white">{config.label}</h2>
          <p className="text-xs text-white/40">Upload your Whiskey Systems CSV export</p>
        </div>
      </div>

      {/* Drop zone */}
      <div
        onDragOver={(e) => { e.preventDefault(); setDragOver(true) }}
        onDragLeave={() => setDragOver(false)}
        onDrop={handleDrop}
        onClick={() => fileRef.current?.click()}
        className={`border-2 border-dashed rounded-lg p-12 text-center cursor-pointer transition-colors ${
          dragOver
            ? 'border-accent/50 bg-accent/[0.04]'
            : 'border-white/10 hover:border-white/20 bg-white/[0.01]'
        }`}
      >
        {parsing ? (
          <div className="text-white/40 text-sm">Parsing CSV...</div>
        ) : (
          <>
            <svg className="w-10 h-10 mx-auto mb-3 text-white/20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M3 16.5v2.25A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75V16.5m-13.5-9L12 3m0 0l4.5 4.5M12 3v13.5" />
            </svg>
            <p className="text-white/40 text-sm">Drop your CSV file here, or click to browse</p>
            <p className="text-white/20 text-xs mt-1">Accepts .csv files from Whiskey Systems</p>
          </>
        )}
      </div>

      <input
        ref={fileRef}
        type="file"
        accept=".csv"
        onChange={handleFileChange}
        className="hidden"
      />

      {error && (
        <div className="mt-4 p-3 rounded-md bg-error/10 border border-error/20 text-error text-sm">
          {error}
        </div>
      )}
    </div>
  )
}
