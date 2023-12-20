import { PrismaClient } from '@prisma/client'

export const { product, user, category, brand } = new PrismaClient()
