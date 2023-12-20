'use client'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { EProductTag } from '@prisma/client'

const FilterTag = () => {
  return (
    <div>
      <Select>
        <SelectTrigger className=''>
          <SelectValue placeholder='Select a Tags' />
        </SelectTrigger>
        <SelectContent className='w-full'>
          <SelectItem value={EProductTag.HOT_SALES}>Hot Sales</SelectItem>
          <SelectItem value={EProductTag.NEW}>New</SelectItem>
          <SelectItem value={EProductTag.NEW_OPEN}>New Open</SelectItem>
        </SelectContent>
      </Select>
    </div>
  )
}

export default FilterTag
