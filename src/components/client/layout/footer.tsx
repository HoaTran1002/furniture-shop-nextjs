import React from 'react'
import ft1 from '@/assets/image-ft-1.png'
import ft2 from '@/assets/image-ft-2.png'
import ft3 from '@/assets/image-ft-3.png'
import ft4 from '@/assets/image-ft-4.png'
import Image from 'next/image'

const Footer = () => {
  return (
    <div className='px-8  flex flex-wrap gap-8 py-16 bg-primary text-white'>
      <div className='max-w-[400px] mt-4'>
        <h6 className='text-xl  flex-wrap font-semibold'>Beauty Care</h6>
        <p className='font-light  my-8 '>
          Do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris.
        </p>
        <h6 className='text-lg font-semibold'>Follow Us</h6>
      </div>

      <div>
        <h3 className='text-xl flex-wrap font-semibold mb-8'>Instagram Shop</h3>
        <div className='flex gap-2 flex-wrap items-center'>
          <Image src={ft1} alt='' className='w-[180px] rounded-md' />
          <Image src={ft2} alt='' className='w-[180px] rounded-md' />
          <Image src={ft3} alt='' className='w-[180px] rounded-md' />
          <Image src={ft4} alt='' className='w-[180px] rounded-md' />
        </div>
      </div>
    </div>
  )
}

export default Footer
