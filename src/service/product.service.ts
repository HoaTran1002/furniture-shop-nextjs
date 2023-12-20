import { product } from '@/config/db'

export const getProducts = () => {
  return product.findMany()
}

export const getProductById = (id: number) => {
  return product.findFirst({ where: { id } })
}
