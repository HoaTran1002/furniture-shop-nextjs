'use client'
import { cn } from '@/lib/utils'
import Link from 'next/link'
import React, { ReactNode } from 'react'
import { buttonVariants } from '../ui/button'
import { usePathname } from 'next/navigation'

interface Props {
  href: string
  Icon: ReactNode
  label: string
}

const SidebarItem = ({ href, Icon, label }: Props) => {
  const pathName = usePathname()

  const isActive = pathName === href

  return (
    <Link
      href={href}
      className={cn(
        buttonVariants({ className: 'w-full justify-start gap-2', variant: isActive ? 'secondary' : 'ghost' })
      )}
    >
      {Icon}
      {label}
    </Link>
  )
}

export default SidebarItem
