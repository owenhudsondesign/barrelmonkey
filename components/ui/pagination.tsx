import Link from 'next/link'

interface PaginationProps {
  readonly currentPage: number
  readonly totalPages: number
  readonly searchParams: Record<string, string | undefined>
  readonly basePath: string
}

export function Pagination({ currentPage, totalPages, searchParams, basePath }: PaginationProps) {
  function pageUrl(page: number) {
    const params = new URLSearchParams()
    Object.entries(searchParams).forEach(([k, v]) => {
      if (v && k !== 'page') params.set(k, v)
    })
    if (page > 1) params.set('page', String(page))
    const qs = params.toString()
    return qs ? `${basePath}?${qs}` : basePath
  }

  const hasPrev = currentPage > 1
  const hasNext = currentPage < totalPages

  const windowSize = 5
  const halfWindow = Math.floor(windowSize / 2)
  let startPage = Math.max(1, currentPage - halfWindow)
  const endPage = Math.min(totalPages, startPage + windowSize - 1)
  startPage = Math.max(1, endPage - windowSize + 1)

  const pages: number[] = []
  for (let i = startPage; i <= endPage; i++) {
    pages.push(i)
  }

  const btnBase = 'min-h-[36px] min-w-[36px] flex items-center justify-center rounded text-xs transition-colors'

  return (
    <div className="flex flex-col sm:flex-row items-center justify-between gap-3 mt-4 text-sm">
      <div className="text-white/30 text-xs">
        Page {currentPage} of {totalPages}
      </div>
      <div className="flex items-center gap-1">
        {hasPrev && (
          <Link
            href={pageUrl(currentPage - 1)}
            className={`${btnBase} px-3 border border-white/10 text-white/50 hover:text-white hover:border-white/20`}
          >
            Prev
          </Link>
        )}
        {startPage > 1 && (
          <>
            <Link href={pageUrl(1)} className={`${btnBase} text-white/40 hover:text-white`}>1</Link>
            {startPage > 2 && <span className="text-white/20 px-1">...</span>}
          </>
        )}
        {pages.map((p) => (
          <Link
            key={p}
            href={pageUrl(p)}
            className={`${btnBase} ${
              p === currentPage
                ? 'bg-accent/10 text-accent border border-accent/30'
                : 'text-white/40 hover:text-white'
            }`}
          >
            {p}
          </Link>
        ))}
        {endPage < totalPages && (
          <>
            {endPage < totalPages - 1 && <span className="text-white/20 px-1">...</span>}
            <Link href={pageUrl(totalPages)} className={`${btnBase} text-white/40 hover:text-white`}>{totalPages}</Link>
          </>
        )}
        {hasNext && (
          <Link
            href={pageUrl(currentPage + 1)}
            className={`${btnBase} px-3 border border-white/10 text-white/50 hover:text-white hover:border-white/20`}
          >
            Next
          </Link>
        )}
      </div>
    </div>
  )
}
