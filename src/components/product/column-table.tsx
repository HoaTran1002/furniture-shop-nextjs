'use client'
import { cn } from '@/lib/utils'
import { convertToVnd } from '@/utils'
import { Product } from '@prisma/client'
import { ColumnDef } from '@tanstack/react-table'
import { ArrowRight } from 'lucide-react'
import Image from 'next/image'
import Link from 'next/link'
import { Badge } from '../ui/badge'
import { buttonVariants } from '../ui/button'
import { Checkbox } from '../ui/checkbox'

export const columns: ColumnDef<Product>[] = [
  {
    id: 'select',
    header: ({ table }) => (
      <Checkbox
        checked={table.getIsAllPageRowsSelected() || (table.getIsSomePageRowsSelected() && 'indeterminate')}
        onCheckedChange={(value) => table.toggleAllPageRowsSelected(!!value)}
        aria-label='Select all'
      />
    ),
    cell: ({ row }) => (
      <Checkbox
        checked={row.getIsSelected()}
        onCheckedChange={(value) => row.toggleSelected(!!value)}
        aria-label='Select row'
      />
    ),
    enableSorting: false,
    enableHiding: false
  },
  {
    id: 'image',
    header: 'Image',
    enableSorting: false,
    enableHiding: false,
    cell: ({ row }) => {
      return (
        <Image src={row.original.image || ''} alt='' width={150} height={100} className='h-auto rounded-sm shadow' />
      )
    }
  },
  {
    id: 'name',
    header: 'Product Name',
    enableSorting: false,
    enableHiding: false,
    cell: ({ row }) => {
      return (
        <div className='max-w-[200px]'>
          <h6 className='font-medium text-gray-700'>{row.original.name}</h6>
          <p className='text-sm text-gray-500 truncate'>
            {row.original.desc}
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi, vitae cumque! Sit, suscipit corrupti velit
            sequi rem facilis sunt laborum minima incidunt sint temporibus cumque odit veritatis aut! Culpa, enim?
          </p>
        </div>
      )
    }
  },
  {
    id: 'price',
    header: 'Price',
    cell: ({ row }) => {
      return <div className='font-medium text-gray-700'>{convertToVnd(Number(row.original.price || 0))}</div>
    },
    enableSorting: false,
    enableHiding: false
  },
  {
    id: 'Tag',
    header: 'Tag',
    cell: ({ row }) => {
      const tag = row.original.tag
      return (
        <Badge className={cn('bg-none', tag === 'NEW' && 'bg-red-500', tag === 'NEW_OPEN' && 'bg-green-500')}>
          {row.original.tag || 'no update'}
        </Badge>
      )
    },
    enableSorting: false,
    enableHiding: false
  },
  {
    id: 'Action',
    header: 'Actions',
    cell: ({ row }) => {
      return (
        <Link
          href={`/admin/product/${row.original.id}`}
          className={buttonVariants({ variant: 'outline', className: 'gap-2' })}
        >
          Views <ArrowRight className='w-4' />
        </Link>
      )
    },
    enableSorting: false,
    enableHiding: false
  }
]
