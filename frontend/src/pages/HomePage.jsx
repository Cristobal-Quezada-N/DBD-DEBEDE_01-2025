import React from 'react'
import ProductBrowser from '../components/ProductBrowser'

function HomePage() {
    return (
        <div className='d-flex flex-column flex-grow-1 min-h-0'>
            <h1>Home</h1>
            <ProductBrowser/>
        </div>
    )
}

export default HomePage
