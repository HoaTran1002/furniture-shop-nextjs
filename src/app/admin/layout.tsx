import SideBar from '@/components/admin/sidebar'
import { ScrollArea } from '@/components/ui/scroll-area'
import { ReactNode } from 'react'

interface Props {
  children: ReactNode
}

const Layout = ({ children }: Props) => {
  return (
    <div>
      <header className='h-16 border-b fixed z-30  left-0 top-0 right-0 bg-white'></header>

      <div className='grid lg:grid-cols-5 mt-16 h-screen'>
        <SideBar />
        <div className='col-span-4 lg:border-l h-full'>
          <ScrollArea className='h-full overflow-auto'>{children}</ScrollArea>
        </div>
      </div>
    </div>
  )
}

export default Layout
