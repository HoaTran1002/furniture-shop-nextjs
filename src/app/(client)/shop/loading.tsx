import Breadcrumbs from '@/components/breadcrumbs'
import Sort from '@/components/shop/sort'
import { badgeVariants } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { cn } from '@/lib/utils'
import { ListChecks } from 'lucide-react'
import Link from 'next/link'
import Filter from '../../../components/shop/filter'

const Loading = () => {
  return (
    <div className='container py-20'>
      <div className='text-center'>
        <Breadcrumbs
          className='p-2'
          items={[
            {
              label: 'Home',
              href: '/'
            },
            {
              label: 'Shop',
              href: '/shop'
            }
          ]}
        />
        <h3 className='text-[2rem] font-semibold mt-8'>New In This Weed</h3>
        <div className='flex gap-2 items-center justify-center mt-4'>
          <Link href='/shop' className={cn(badgeVariants({ className: 'px-4' }))}>
            All
          </Link>

          <Link href='/shop' className={cn(badgeVariants({ className: 'px-4', variant: 'outline' }))}>
            Hot Sales
          </Link>

          <Link href='/shop' className={cn(badgeVariants({ className: 'px-4', variant: 'outline' }))}>
            New Open
          </Link>
        </div>
      </div>

      <div className='mt-8 flex justify-between items-center p-4 rounded-lg'>
        <h3 className='text-lg font-semibold flex items-center gap-1'>
          <ListChecks />
          List Products
        </h3>
        <div className='flex justify-end gap-2'>
          <Sort />
          <Filter />
        </div>
      </div>

      <div className=' grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4'>
        {Array.from({ length: 30 }).map((_, index) => (
          <div key={index} className='flex items-center space-x-4'>
            <Skeleton className='h-20 w-full rounded-xl' />
            <div className='space-y-2'>
              <Skeleton className='h-4 w-full' />
              <Skeleton className='h-4 w-full' />
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Loading
