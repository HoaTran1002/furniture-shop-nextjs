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

const SortName = () => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant={'outline'}>
          Product Name <ChevronDown className='w-5' />
        </Button>
      </DropdownMenuTrigger>
      <DropdownMenuContent className='w-56 mr-4'>
        <DropdownMenuLabel>Tăng hoặc giảm</DropdownMenuLabel>
        <DropdownMenuSeparator />
        <DropdownMenuGroup>
          <DropdownMenuItem>
            <SortAsc className='mr-2 h-4 w-4' />
            <span>A to Z</span>
            <DropdownMenuShortcut>⇧⌘P</DropdownMenuShortcut>
          </DropdownMenuItem>
          <DropdownMenuItem>
            <SortDesc className='mr-2 h-4 w-4' />
            <span>Z to A</span>
            <DropdownMenuShortcut>⌘B</DropdownMenuShortcut>
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  )
}

export default SortName
