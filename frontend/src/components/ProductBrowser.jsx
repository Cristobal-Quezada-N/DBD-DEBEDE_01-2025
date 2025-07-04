import React from 'react'
import { Form, Row, Col } from 'react-bootstrap'

function ProductBrowser() {
    return (
        <div className='d-flex w-100 h-100 min-h-0'>
            <div className='bg-primary p-2 w-25 h-100'>
                <h3>Filtro</h3>
            </div>
            <div className='bg-danger p-2 w-75'>
                <h3>Productos</h3>
            </div>
        </div>
    )
}

export default ProductBrowser
