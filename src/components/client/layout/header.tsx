import Link from 'next/link'
import { MainNav } from './main-nav'
// import { UserNav } from './user-nav'

const Header = () => {
  return (
    <header className={`fixed left-0 top-0 right-0 border-b border-gray-300 bg-white z-30 `}>
      <nav className='h-16 container flex justify-between items-center gap-5 w-full'>
        <Link href={'/'} className='text-lg font-bold text-primary'>
          Furniture
        </Link>
        <MainNav />
      </nav>
    </header>
  )
}

export default Header
