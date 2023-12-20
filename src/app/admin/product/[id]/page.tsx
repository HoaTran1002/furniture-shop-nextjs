import FormBase from '@/components/product/FormBase'
import DialogNewProduct from '@/components/product/dialog-new-product'
import FormCategory from '@/components/product/form-category'
import FormImage from '@/components/product/form-image'
import { getProductById } from '@/service/product.service'
import { redirect } from 'next/navigation'

interface Props {
  params: { id: string }
}

const Page = async ({ params }: Props) => {
  const id = Number(params.id)

  const product = await getProductById(id)

  if (!product) redirect('/404')

  return (
    <div>
      <div className='px-8 py-4 border-b'>
        <div className='flex justify-between items-center'>
          <div className=' max-w-[400px]'>
            <h6 className='text-xl font-medium truncate'>{product.name}</h6>
            <p className='font-medium text-gray-500 text-sm mt-2 truncate '>{product.desc}</p>
          </div>
          <DialogNewProduct />
        </div>
      </div>
      <div className='p-8 grid lg:grid-cols-2 gap-4'>
        <FormBase product={product} />
        <FormImage product={product} />
        <FormCategory product={product} />
      </div>
    </div>
  )
}

export default Page
