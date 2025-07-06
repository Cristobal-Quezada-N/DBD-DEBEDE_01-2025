import React from 'react'
import PropTypes from 'prop-types'
import { Form } from 'react-bootstrap'

const games = [
    { label: 'Cartas', value: 'tcg' },
    { label: 'Juegos de Mesa', value: 'table' }
]

function FilterCategory({ category, onCategoryChange }) {
    return (
        <div>
            <h5>Categoria</h5>
            {games.map((elem) => (
                <Form.Check
                    type='radio'
                    key={elem.value}
                    label={elem.label}
                    name='games'
                    checked={category === elem.value}
                    onClick={() => onCategoryChange('category', elem.value)}
                    readOnly
                />
            ))}
            <p className='mt-3'>{category}</p>
        </div>
    )
}

FilterCategory.propTypes = {
    category: PropTypes.string,
    onCategoryChange: PropTypes.func,
}

export default FilterCategory
