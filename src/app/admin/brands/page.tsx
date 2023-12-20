import React from 'react'
import CreateBrand from './create-brand'
import { getBrands } from '@/service/brand.service'
import { Input } from '@/components/ui/input'
import { DataTable } from '@/components/product/data-table'
import { Brand } from '@prisma/client'
import { columns } from './colum-table'

const Page = async () => {
  const brands = await getBrands()
  return (
    <div>
      <div className='px-8 py-4 border-b'>
        <div className='flex justify-between items-center'>
          <div>
            <h6 className='text-xl font-semibold'>Brands</h6>
            <p className='font-medium text-gray-500 text-sm mt-2'>
              Let grow to your business! Create your Brands and upload here
            </p>
          </div>
          <CreateBrand />
        </div>
      </div>
      <div className='m-4'>
        <div className='flex justify-between my-4 gap-2 items-center'>
          <div>
            <Input placeholder='search product...' className='min-w-[300px]' />
          </div>
        </div>
        <DataTable<Brand, Brand> columns={columns} data={brands} />
      </div>
    </div>
  )
}

export default Page
