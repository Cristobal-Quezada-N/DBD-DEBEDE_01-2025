import React from 'react'
import { Card, Row, Col } from 'react-bootstrap'

import Product from './Product'

import '../styles/ProductsView.css'

function ProductsView(){
    return (
        <div className='d-flex flex-column flex-grow-1 min-h-0'>
            <div className='product-grid flex-grow-1 min-h-0'>
                {Array(100).fill().map((_,i)=> (
                    <Product key={i} />
                ))}
            </div>
        </div>
    )
}

export default ProductsView
