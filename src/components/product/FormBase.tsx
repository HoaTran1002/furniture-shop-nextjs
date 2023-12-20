'use client'
import { zodResolver } from '@hookform/resolvers/zod'
import { Product } from '@prisma/client'
import { useForm } from 'react-hook-form'
import { toast } from 'react-hot-toast'
import * as z from 'zod'
import FormFieldInput from '../form-field-input'
import FormFieldText from '../form-field-text'
import { Form } from '../ui/form'
import { Card, CardContent, CardFooter, CardHeader } from '../ui/card'
import { Button } from '../ui/button'

const formSchema = z.object({
  name: z.string().min(1, { message: 'product name is required' }),
  desc: z.string().optional()
})

interface Props {
  product: Product
}

const FormBase = ({ product }: Props) => {
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      name: product.name,
      desc: product.desc || ''
    }
  })

  const onSubmit = (values: z.infer<typeof formSchema>) => {
    try {
      console.log(values)
      form.reset()
      toast.success('create new product success')
    } catch (error) {
      toast.error('create new product fails')
    }
  }
  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)}>
        <Card>
          <CardHeader className='font-medium'>Edit product Information</CardHeader>
          <CardContent>
            <div className='flex flex-col gap-4 text-gray-600'>
              <FormFieldInput name='name' label='Name' form={form} />
              <FormFieldText name='desc' label='Description' form={form} />
            </div>
          </CardContent>
          <CardFooter className='flex justify-end'>
            <Button>Save Changes</Button>
          </CardFooter>
        </Card>
      </form>
    </Form>
  )
}

export default FormBase
