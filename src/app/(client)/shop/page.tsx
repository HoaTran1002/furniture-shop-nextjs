import image from '@/assets/inspiration1.png'
import Breadcrumbs from '@/components/breadcrumbs'
import CardProduct from '@/components/shop/card-product'
import Sort from '@/components/shop/sort'
import { badgeVariants } from '@/components/ui/badge'
import { cn } from '@/lib/utils'
import { ListChecks } from 'lucide-react'
import Link from 'next/link'
import Filter from '../../../components/shop/filter'

const Shop = () => {
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
        <CardProduct
          product={{
            id: 1,
            title:
              'Veritatis velit nihil corporis vero, nesciunt similique necessitatibus, dicta ipsam voluptate laborum consequuntur. Voluptatem repudiandae est sunt a neque pariatur animi s',
            description:
              'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Veritatis velit nihil corporis vero, nesciunt similique necessitatibus, dicta ipsam voluptate laborum consequuntur. Voluptatem repudiandae est sunt a neque pariatur animi sint?',
            price: 989,
            discountPercentage: 10,
            rating: 3,
            stock: 190,
            brand: 'Future ',
            category: 'Nick',
            thumbnail: image.src,
            images: ''
          }}
        />
      </div>
    </div>
  )
}

export default Shop
