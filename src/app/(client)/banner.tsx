import { Button } from '@/components/ui/button'
import { ShieldCheck, TruckIcon, UserCog } from 'lucide-react'

const Banner = () => {
  return (
    <>
      <div className='banner h-[1000px] relative flex justify-end items-center flex-wrap'>
        <div className=' bg-blue-300/50 left-[50%] top-[50%] p-6 rounded-lg shadow w-[400px] m-8'>
          <p className='text-gray-600'>New Arrival</p>
          <h2 className='text-primary font-[600] text-[2.5rem]'>Discover Our New Collection</h2>
          <p className='text-gray-700'>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.
          </p>
          <Button className='mt-4 rounded-[10px]'>Buy Now</Button>
        </div>
        <div className='p-6 bg-blue-100/50 mt-20 lg:mt-8 xl:mt-0 flex items-center justify-around w-full flex-wrap'>
          <div className='flex mt-2 items-center gap-2'>
            <TruckIcon className='w-8 h-8 ' />
            <div>
              <h6 className=' font-medium text-xl text-gray-800'>Free Delivery</h6>
              <p className='text-gray-600 text-sm'>Lorem ipsum dolor sit amet.</p>
            </div>
          </div>

          <div className='flex mt-2 items-center gap-2'>
            <UserCog className='w-8 h-8 ' />
            <div>
              <h6 className=' font-medium text-xl text-gray-800'>Support 24/7</h6>
              <p className='text-gray-600 text-sm'>Lorem ipsum dolor sit amet.</p>
            </div>
          </div>

          <div className='flex mt-2 items-center gap-2'>
            <ShieldCheck className='w-8 h-8 ' />
            <div>
              <h6 className=' font-medium text-xl text-gray-800'>100% Authentic</h6>
              <p className='text-gray-600 text-sm'>Lorem ipsum dolor sit amet.</p>
            </div>
          </div>
        </div>
      </div>
    </>
  )
}

export default Banner
