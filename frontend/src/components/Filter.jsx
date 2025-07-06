import React from 'react'
import Form from 'react-bootstrap/Form'

import FilterPrice from './FilterPrice'
import FilterCategory from './FilterCategory'
import FilterCarts from './FilterCarts'

import setFilters from '../hooks/setFilters'

function Filter() {
    const { filters, toggleFilter, updateValue } = setFilters()
    return (
        <div>
            <h3>Filtro</h3>
            <br/>
            <Form>
                <FilterPrice
                    priceMin={filters.PriceMin}
                    priceMax={filters.PriceMax}
                    onPriceChange={updateValue}
                />
                <br/>
                <FilterCategory
                    category={filters.category}
                    onCategoryChange={toggleFilter}/>
                <h5>Cartas</h5>
                <FilterCarts
                    cartState={filters.cartState}
                    onCartStateChange={toggleFilter}/>
            </Form>
        </div>
    )
}

export default Filter
