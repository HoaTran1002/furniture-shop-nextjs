import { category } from '@/config/db'

export const getCategories = () => {
  return category.findMany()
}
