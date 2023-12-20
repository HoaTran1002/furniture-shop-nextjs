import { brand } from '@/config/db'

export const getBrands = () => {
  return brand.findMany()
}
