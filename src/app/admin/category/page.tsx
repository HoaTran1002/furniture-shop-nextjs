import React from 'react'
import CreateCategory from './create-category'
import { Input } from '@/components/ui/input'
import { DataTable } from '@/components/product/data-table'
import { Category } from '@prisma/client'
import { columns } from './colum-table'
import { getCategories } from '@/service/category.service'

const Page = async () => {
  const categories = await getCategories()
  return (
    <div>
      <div className='px-8 py-4 border-b'>
        <div className='flex justify-between items-center'>
          <div>
            <h6 className='text-xl font-semibold'>Category</h6>
            <p className='font-medium text-gray-500 text-sm mt-2'>
              Let grow to your business! Create your category and upload here
            </p>
          </div>
          <CreateCategory />
        </div>
      </div>

      <div className='m-4'>
        <div className='flex justify-between my-4 gap-2 items-center'>
          <div>
            <Input placeholder='search product...' className='min-w-[300px]' />
          </div>
        </div>
        <DataTable<Category, Category> columns={columns} data={categories} />
      </div>
    </div>
  )
}

export default Page
