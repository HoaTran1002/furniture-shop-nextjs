import Footer from '@/components/client/layout/footer'
import Header from '@/components/client/layout/header'

export default function Layout({ children }: { children: React.ReactNode }) {
  return (
    <>
      <Header />
      <div className='mt-16'>{children}</div>
      <Footer />
    </>
  )
}
