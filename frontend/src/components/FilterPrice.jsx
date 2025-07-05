import React from 'react'
import PropTypes from 'prop-types'
import { Form, Row, Col } from 'react-bootstrap'

function FilterPrice({ priceMin, priceMax, onPriceChange }) {
    return (
        <Form.Group controlId='formPrice'>
            <Form.Label><h5>Precio <span>(eg. $9.99)</span></h5></Form.Label>
            <Row md={2}>
                <Col>
                    <Form.Control
                        type='number'
                        placeholder='Min. '
                        value={priceMin}
                        onChange={elem => onPriceChange('priceMin', elem.target.value)}
                    />
                </Col>
                <Col>
                    <Form.Control
                        type='number'
                        placeholder='Max. '
                        value={priceMax}
                        onChange={elem => onPriceChange('priceMax', elem.target.value)}
                    />
                </Col>
            </Row>
        </Form.Group>
    )
}

FilterPrice.propTypes = {
    priceMin: PropTypes.number,
    priceMax: PropTypes.number,
    onPriceChange: PropTypes.func,
}

export default FilterPrice
