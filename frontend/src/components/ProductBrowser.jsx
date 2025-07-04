import React from 'react'
import { Form, Row, Col } from 'react-bootstrap'

import Filter from './Filter'

function ProductBrowser() {
    return (
        <div className='d-flex flex-grow-1 min-h-0'>
            <div className='bg-primary p-2 w-25'>
                <Filter/>
            </div>
            <div className='bg-danger p-2 w-75'>
                <h3>Productos</h3>
            </div>
        </div>
    )
}

export default ProductBrowser
