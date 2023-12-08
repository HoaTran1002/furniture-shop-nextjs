'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'

import { cn } from '@/lib/utils'

export function MainNav({ className, ...props }: React.HTMLAttributes<HTMLElement>) {
  const pathname = usePathname()

  const routes = [
    {
      href: `/`,
      label: 'Trang chủ'
    },
    {
      href: `/shop`,
      label: 'Sản phẩm'
    },
    {
      href: `/contact`,
      label: 'Liên hệ'
    }
  ]

  return (
    <nav className={cn('flex h-full items-center space-x-4 lg:space-x-6', className)} {...props}>
      {routes.map((route) => (
        <Link
          key={route.href}
          href={route.href}
          className={cn(
            'font-medium transition-colors hover:text-primary',
            pathname === route.href ? 'text-primary dark:text-white font-[700]' : 'text-muted-foreground'
          )}
        >
          {route.label}
        </Link>
      ))}
    </nav>
  )
}
