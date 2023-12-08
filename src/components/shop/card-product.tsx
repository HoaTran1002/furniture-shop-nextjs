import { ShoppingBagIcon, Tag } from 'lucide-react'
import { Card, CardHeader, CardContent, CardFooter } from '../ui/card'
import Image from 'next/image'
import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from '@/components/ui/tooltip'

export interface Product {
  id: number
  title: string
  description: string
  price: number
  discountPercentage: number
  rating: number
  stock: number
  brand: string
  category: string
  thumbnail: string
  images: string
}

interface Props {
  product: Product
}

const CardProduct = ({ product }: Props) => {
  return (
    <Card
      key={product.id}
      className='flex flex-col border-gray-100 justify-between  hover:bg-gray-50 cursor-pointer transition-all'
    >
      <CardHeader className='p-2'>
        <Image src={product.thumbnail} alt='' width={250} height={400} className='w-full h-[300px]  rounded-lg' />
      </CardHeader>
      <CardContent className=''>
        <span className='text-red-500 text-sm font-  flex items-center gap-1'>
          <Tag className='w-4' />
          New In
        </span>
        <h6 className=' font-semibold my-2 truncate'>{product.title}</h6>
        <p className='truncate text-sm text-gray-600'>{product.description}</p>
      </CardContent>

      <CardFooter>
        <div className='flex w-full justify-between items-center text-sm font-bold'>
          <span> $ {product.price}</span>
          <TooltipProvider>
            <Tooltip>
              <TooltipTrigger asChild>
                <div className='w-10 cursor-pointer hover:bg-primary/80 transition-all h-10 flex items-center justify-center p-1 bg-primary rounded-full text-white'>
                  <ShoppingBagIcon className='w-5' />
                </div>
              </TooltipTrigger>
              <TooltipContent>
                <p className='font-normal flex gap-2  items-center'>
                  <ShoppingBagIcon className='w-5' />
                  Add to Cart
                </p>
              </TooltipContent>
            </Tooltip>
          </TooltipProvider>
        </div>
      </CardFooter>
    </Card>
  )
}

export default CardProduct
