import { cn } from '@/lib/utils'
import { ChevronRight } from 'lucide-react'
import Link from 'next/link'
import { ReactNode } from 'react'

interface Props extends React.OlHTMLAttributes<HTMLOListElement> {
  items: { href: string; label: ReactNode }[]
}

const Breadcrumbs = ({ items, ...props }: Props) => {
  return (
    <ol
      {...props}
      className={cn('inline-flex items-center space-x-1 md:space-x-2 rtl:space-x-reverse', props.className)}
    >
      {items.map((item, index) => (
        <li key={index}>
          <div className='flex items-center'>
            {!(index === 0) && <ChevronRight className='text-gray-400' />}
            <Link
              href={item.href}
              className='ms-1 text-sm font-medium text-gray-700 hover:text-blue-600 md:ms-2 dark:text-gray-400 dark:hover:text-white'
            >
              {item.label}
            </Link>
          </div>
        </li>
      ))}
    </ol>
  )
}

export default Breadcrumbs
