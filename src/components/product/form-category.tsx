'use client'
import { zodResolver } from '@hookform/resolvers/zod'
import { Product } from '@prisma/client'
import { useForm } from 'react-hook-form'
import { toast } from 'react-hot-toast'
import * as z from 'zod'
import { Card, CardContent, CardFooter, CardHeader } from '../ui/card'
import { Button } from '../ui/button'
import FormFieldSelect from '../form-field-select'
import { Form } from '../ui/form'

interface Props {
  product: Product
}

const formSchema = z.object({
  categoryId: z.string()
})

const FormCategory = ({ product }: Props) => {
  console.log(product)
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {}
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
          <CardHeader>
            <h3 className='text-gray-600 font-medium'>Update Category</h3>
          </CardHeader>
          <CardContent>
            <FormFieldSelect selects={[]} form={form} name='categoryId' label='Choice Category' />
          </CardContent>
          <CardFooter className='flex justify-end'>
            <Button>Save Changes</Button>
          </CardFooter>
        </Card>
      </form>
    </Form>
  )
}

export default FormCategory
