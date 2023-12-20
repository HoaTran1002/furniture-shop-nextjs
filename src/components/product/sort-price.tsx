'use client'
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger
} from '@/components/ui/dropdown-menu'
import { ChevronDown, SortAsc, SortDesc } from 'lucide-react'
import { Button } from '../ui/button'
import { DropdownMenuShortcut } from '../ui/dropdown-menu'

const SortPrice = () => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant={'outline'}>
          Price <ChevronDown className='w-5' />
        </Button>
      </DropdownMenuTrigger>
      <DropdownMenuContent className='w-56 mr-4'>
        <DropdownMenuLabel>Tăng hoặc giảm</DropdownMenuLabel>
        <DropdownMenuSeparator />
        <DropdownMenuGroup>
          <DropdownMenuItem>
            <SortAsc className='mr-2 h-4 w-4' />
            <span>0 - 9</span>
            <DropdownMenuShortcut>⇧⌘P</DropdownMenuShortcut>
          </DropdownMenuItem>
          <DropdownMenuItem>
            <SortDesc className='mr-2 h-4 w-4' />
            <span>9 - 0</span>
            <DropdownMenuShortcut>⌘B</DropdownMenuShortcut>
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  )
}

export default SortPrice
