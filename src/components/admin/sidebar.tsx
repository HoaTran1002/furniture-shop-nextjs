import { cn } from '@/lib/utils'
import { Armchair, BarChart3Icon, BarcodeIcon, PhoneCall, Stars } from 'lucide-react'
import { ScrollArea } from '../ui/scroll-area'
import SidebarItem from './sidebar-item'

const SideBar = () => {
  const list = [
    {
      Icon: <BarChart3Icon className='w-4' />,
      label: 'Report',
      href: '/admin'
    },
    {
      Icon: <Armchair className='w-4' />,
      label: 'Product',
      href: '/admin/product'
    },
    {
      Icon: <BarcodeIcon className='w-4' />,
      label: 'Category',
      href: '/admin/category'
    },
    {
      Icon: <Stars className='w-4' />,
      label: 'brands',
      href: '/admin/brands'
    },
    {
      Icon: <PhoneCall className='w-4' />,
      label: 'Contact',
      href: '/admin/contact'
    }
  ]

  return (
    <ScrollArea className={cn('pb-20 h-full fixed')}>
      <div className='space-y-4 py-4'>
        <div className='px-3 py-2'>
          <h2 className='mb-2 px-4 text-lg font-semibold tracking-tight'>DashBoard</h2>
          <div className='space-y-1'>
            {list.map((item) => (
              <SidebarItem key={item.href} {...item} />
            ))}
          </div>
        </div>
      </div>
    </ScrollArea>
  )
}

export default SideBar
