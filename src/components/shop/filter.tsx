import { Button } from '@/components/ui/button'
import { Sheet, SheetContent, SheetFooter, SheetTrigger } from '@/components/ui/sheet'
import { SlidersHorizontal } from 'lucide-react'

const Filter = () => {
  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button variant={'outline'} className='flex gap-2'>
          Filter <SlidersHorizontal className='w-5' />
        </Button>
      </SheetTrigger>
      <SheetContent>
        <SheetFooter></SheetFooter>
      </SheetContent>
    </Sheet>
  )
}

export default Filter
