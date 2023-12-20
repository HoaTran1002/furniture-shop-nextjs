'use client'
import { buttonVariants } from '@/components/ui/button'
import { Checkbox } from '@/components/ui/checkbox'
import { Brand } from '@prisma/client'
import { ColumnDef } from '@tanstack/react-table'
import { ArrowRight } from 'lucide-react'
import Image from 'next/image'
import Link from 'next/link'

export const columns: ColumnDef<Brand>[] = [
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
    header: 'Name',
    enableSorting: false,
    enableHiding: false,
    cell: ({ row }) => {
      return (
        <div className='max-w-[200px]'>
          <h6 className='font-medium text-gray-700'>{row.original.name}</h6>
          <p className='text-sm text-gray-500 truncate'>{row.original.desc}</p>
        </div>
      )
    }
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
