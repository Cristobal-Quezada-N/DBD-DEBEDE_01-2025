import React from 'react'
import PropTypes from 'prop-types'
import { Link } from 'react-router-dom'
import { Card } from 'react-bootstrap'

import '../styles/ProductCard.css'

function Product() {
    return (
        <Link to='/product' style={{ textDecoration: 'none' }}>
            <Card className='border-2 card card-hover'>
                <Card.Img variant='top' src='https://pngimg.com/d/cards_PNG8490.png'/>
                <Card.Body>
                </Card.Body>
                <Card.Footer className='d-flex justify-content-between align-items-center'>
                    <span>Product Name</span>
                    <div className='bg-primary px-3 py-1 rounded'>
                        <span className='text-white'>$9.99</span>
                    </div>
                </Card.Footer>
            </Card>
        </Link>
    )
}

export default Product
