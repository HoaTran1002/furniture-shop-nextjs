import { columns } from '@/components/product/column-table'
import { DataTable } from '@/components/product/data-table'
import DialogNewProduct from '@/components/product/dialog-new-product'
import FilterTag from '@/components/product/filter-tag'
import SortName from '@/components/product/sort-name'
import SortPrice from '@/components/product/sort-price'
import { Input } from '@/components/ui/input'
import { getProducts } from '@/service/product.service'
import { Product } from '@prisma/client'

const Page = async () => {
  const products = await getProducts()

  return (
    <div className=''>
      <div className='px-8 py-4 border-b'>
        <div className='flex justify-between items-center'>
          <div>
            <h6 className='text-xl font-semibold'>Product</h6>
            <p className='font-medium text-gray-500 text-sm mt-2'>
              Let grow to your business! Create your product and upload here
            </p>
          </div>
          <DialogNewProduct />
        </div>
      </div>
      <div className='m-4'>
        <div className='flex justify-between my-4 gap-2 items-center'>
          <div>
            <Input placeholder='search product...' className='min-w-[300px]' />
          </div>
          <div className='flex items-center gap-2'>
            <SortName />
            <SortPrice />
            <FilterTag />
          </div>
        </div>
        <DataTable<Product, Product> columns={columns} data={products} />
      </div>
    </div>
  )
}

export default Page
