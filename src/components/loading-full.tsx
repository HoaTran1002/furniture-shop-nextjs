'use client'
import React from 'react'
import { Skeleton } from './ui/skeleton'
import { Router } from 'next/router'

Router.events.on('routeChangeStart', (url) => {
  console.log(`Loading: ${url}`)
})
const LoadingFull = () => {
  return (
    <div className='container mt-16 h-screen'>
      {Array.from({ length: 20 }).map((_, index) => (
        <div key={index} className='space-y-2'>
          <Skeleton className='h-4 w-full' />
          <Skeleton className='h-4 w-full' />
        </div>
      ))}
    </div>
  )
}

export default LoadingFull
