import React from 'react'
import { Form, Row, Col } from 'react-bootstrap'

import Filter from './Filter'
import ProductsView from './ProductsView'

function ProductBrowser() {
    return (
        <div className='d-flex flex-grow-1 min-h-0'>
            <div className='bg-primary p-2 w-25'>
                <Filter/>
            </div>
            <div className='bg-light p-2 w-75 d-flex flex-column flex-grow-1 min-h-0'>
                <h3 className='text-dark'>Productos</h3>
                <br/>
                <div className='flex-grow-1 min-h-0 overflow-auto'>
                    <ProductsView/>
                </div>
            </div>
        </div>
    )
}

export default ProductBrowser
