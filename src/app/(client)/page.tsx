import badroom from '@/assets/badroom.png'
import beauty from '@/assets/beauty-your-stay.png'
import dining from '@/assets/dining.png'
import is1 from '@/assets/inspiration1.png'
import is2 from '@/assets/inspiration2.png'
import is3 from '@/assets/inspiration3.png'
import living from '@/assets/living.png'
import purchase from '@/assets/purchase.png'
import warehouse from '@/assets/warehouse.png'
import yourRoom from '@/assets/your-room.png'
import { Button } from '@/components/ui/button'
import Image from 'next/image'
import Banner from './banner'

const Shop = () => {
  return (
    <div className=''>
      <Banner />
      <div className='container mt-8'>
        <h3 className='text-xl font-medium text-[2rem] text-center'>Inspiration Collection</h3>
        <p className='font-light text-gray-600 text-sm text-center mt-2'>
          Lorem ipsum dolor sit amet consectetur adipisicing elit.
        </p>
        <div className='flex gap-4 mt-8 items-center flex-wrap justify-center'>
          <Image src={is1} alt='' className='w-[300px] rounded-tl-[30px] mt-16' />
          <Image src={is2} alt='' className='w-[300px]' />
          <Image src={is3} alt='' className='w-[300px] rounded-br-[30px] mt-16' />
        </div>
      </div>

      <div className='bg-blue-200/30 py-8 mt-16'>
        <div className='container flex flex-wrap items-center justify-center gap-8'>
          <div className='max-w-[400px] mb-8'>
            <h5 className='text-[2rem] font-semibold'>Beautify Your Space</h5>
            <p className='mt-4 font-light text-gray-600 text-sm'>
              Do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
              exercitation ullamco laboris.
            </p>
          </div>
          <div>
            <Image src={beauty} alt='' className=' max-w-[300px] rounded-tl-[30px] rounded-br-[30px]' />
          </div>
        </div>
      </div>

      <div className='container mt-8'>
        <h3 className='text-xl font-medium text-[2rem] text-center'>Browse The Range</h3>
        <p className='font-light text-gray-600 text-sm text-center mt-2'>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        </p>
        <div className='flex gap-4 mt-8 items-center justify-center flex-wrap'>
          <div className='text-center'>
            <Image src={dining} alt='' className='w-[300px] rounded-lg' />
            <p className='font-medium mt-2 text-lg text-gray-700'>Dining</p>
          </div>
          <div className='text-center mt-16'>
            <Image src={living} alt='' className='w-[300px] rounded-lg' />
            <p className='font-medium mt-2 text-lg text-gray-700'>Living</p>
          </div>
          <div className='text-center'>
            <Image src={badroom} alt='' className='w-[300px] rounded-lg' />
            <p className='font-medium mt-2 text-lg text-gray-700'>Bedroom</p>
          </div>
        </div>
      </div>

      <div className='container mt-8'>
        <h3 className='text-xl font-medium text-[2rem] text-center'>How It Works</h3>
        <p className='font-light text-gray-600 text-sm text-center mt-2'>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        </p>

        <div className=' flex gap-4 mt-8  flex-wrap items-center justify-center'>
          <div className='text-center w-[300px] mt-4'>
            <div className=' relative'>
              <div className=' p-2 left-1/2 translate-y-1/2 -translate-x-1/2 bg-white rounded-full absolute bottom-0'>
                <div className='w-8 h-8 flex rounded-full items-center justify-center text-white font-bold text-lg bg-black '>
                  1.
                </div>
              </div>
              <Image src={purchase} alt='' className='w-full rounded-lg' />
            </div>
            <h6 className='mt-8 font-medium text-lg text-gray-700'>Purchase Securely</h6>
            <p className='text-sm font-light text-gray-600'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>

          <div className='text-center w-[300px] mt-4'>
            <div className=' relative'>
              <div className=' p-2 left-1/2 translate-y-1/2 -translate-x-1/2 bg-white rounded-full absolute bottom-0'>
                <div className='w-8 h-8 flex rounded-full items-center justify-center text-white font-bold text-lg bg-black '>
                  2.
                </div>
              </div>
              <Image src={warehouse} alt='' className='w-full rounded-lg' />
            </div>
            <h6 className='mt-8 font-medium text-lg text-gray-700'>Ships From Warehouse</h6>
            <p className='text-sm font-light text-gray-600'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>

          <div className='text-center w-[300px] mt-4'>
            <div className=' relative'>
              <div className=' p-2 left-1/2 translate-y-1/2 -translate-x-1/2 bg-white rounded-full absolute bottom-0'>
                <div className='w-8 h-8 flex rounded-full items-center justify-center text-white font-bold text-lg bg-black '>
                  3.
                </div>
              </div>
              <Image src={yourRoom} alt='' className='w-full rounded-lg' />
            </div>
            <h6 className='mt-8 font-medium text-lg text-gray-700'>Style Your Room</h6>
            <p className='text-sm font-light text-gray-600'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>

      <div className='bg-blue-200/30 py-8 mt-20'>
        <h3 className='text-xl font-medium text-[2rem] mt-8 text-center'>Join Our Mailing List</h3>
        <p className='font-light text-gray-600 text-sm text-center mt-2'>
          Sign up to receive inspiration, product updates, and special offers from our team.
        </p>
        <div className='flex items-center justify-center m-8 '>
          <form action='' className='flex border h-12 border-primary overflow-hidden rounded-lg'>
            <input
              type='text'
              className='px-4 py-4 w-[250px] border-none outline-none text-sm'
              placeholder='example@gmail.com'
            />
            <Button className='h-full rounded-none block'>Submit</Button>
          </form>
        </div>
      </div>
    </div>
  )
}

export default Shop
