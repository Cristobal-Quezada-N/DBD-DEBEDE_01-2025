import React from 'react'
import PropTypes from 'prop-types'
import { Form } from 'react-bootstrap'

const cartStates = [
    { label: 'Near Mint', value: 'NM' },
    { label: 'Lightly Played', value: 'LP' },
    { label: 'Moderately Played', value: 'MP' },
    { label: 'Heavely Played', value: 'HP' },
    { label: 'Damaged', value: 'DD' }
]

function FilterCarts({ cartState, onCartStateChange }) {
    return (
        <div>
            <h6>Estado</h6>
            {cartStates.map((elem) => (
                <Form.Check
                    type='checkbox'
                    key={elem.value}
                    label={elem.label}
                    name='cart-state'
                    value={elem.value}
                    checked={cartState.includes(elem.value)}
                    onChange={() => onCartStateChange('cartState', elem.value)}
                />
            ))}
            <p className='mt-3'>{cartState.join(', ')}</p>
        </div>
    )

}

FilterCarts.propTypes = {
    cartState: PropTypes.string,
    onCartStateChange: PropTypes.func,
}

export default FilterCarts
