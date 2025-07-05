import React from 'react'
import { Card, Row, Col } from 'react-bootstrap'

function ProductsView(){
    return (
        <div className='d-flex flex-column flex-grow-1 min-h-0'>
            <div className='product-grid flex-grow-1 min-h-0'>
                {Array(100).fill().map((_,i)=> (
                    <span className='text-dark p-3' key={i}>Producto {i}</span>
                ))}
            </div>
        </div>
    )
}

export default ProductsView
