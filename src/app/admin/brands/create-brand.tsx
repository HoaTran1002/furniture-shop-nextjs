'use client'
import FormFieldInput from '@/components/form-field-input'
import FormFieldText from '@/components/form-field-text'
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger
} from '@/components/ui/alert-dialog'
import { Button } from '@/components/ui/button'
import { Form } from '@/components/ui/form'
import { zodResolver } from '@hookform/resolvers/zod'
import { PlusCircleIcon } from 'lucide-react'
import { useState } from 'react'
import { useForm } from 'react-hook-form'
import { toast } from 'react-hot-toast'
import * as z from 'zod'

const formSchema = z.object({
  name: z.string().min(1).max(50),
  desc: z.string()
})

const CreateBrand = () => {
  const [open, setOpen] = useState(false)
  const toggleForm = () => setOpen(!open)
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      name: ''
    }
  })

  const onSubmit = (values: z.infer<typeof formSchema>) => {
    try {
      toggleForm()
      console.log(values)
      form.reset()
      toast.success('create new product success')
    } catch (error) {
      toast.error('create new product fails')
    }
  }

  return (
    <AlertDialog onOpenChange={setOpen} open={open}>
      <AlertDialogTrigger asChild>
        <Button className='gap-2'>
          <PlusCircleIcon className='w-4' />
          New Brand
        </Button>
      </AlertDialogTrigger>
      <AlertDialogContent>
        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)}>
            <AlertDialogHeader>
              <AlertDialogTitle>Form Add New Brand</AlertDialogTitle>
              <AlertDialogDescription>
                This action cannot be undone. This will permanently delete your account and remove your data from our
                servers.
              </AlertDialogDescription>
              <div className='my-4'>
                <FormFieldInput name='name' label='Name' form={form} />
              </div>
              <div className='my-4'>
                <FormFieldText name='desc' label='Description' form={form} />
              </div>
            </AlertDialogHeader>
            <AlertDialogFooter>
              <AlertDialogCancel>Cancel</AlertDialogCancel>
              <Button type='submit'>Continue</Button>
            </AlertDialogFooter>
          </form>
        </Form>
      </AlertDialogContent>
    </AlertDialog>
  )
}

export default CreateBrand
