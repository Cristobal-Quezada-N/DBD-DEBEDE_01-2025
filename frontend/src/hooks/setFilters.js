import { React, useState } from 'react'

function setFilters() {
    const [filters, setFilters] = useState({
        category: '',
        cartState: [],
        priceMax: '',
        priceMin: '',
    })

    const toggleFilter = (key, value) => {
        setFilters(prev => {
            if (Array.isArray(prev[key])) {
                const exist = prev[key].includes(value)
                return {
                    ...prev,
                    [key]: exist ? prev[key].filter(v => v !== value) : [...prev[key], value]
                }
            }
            return {
                ...prev,
                [key]: prev[key] === value ? '' : value
            }
        })
    }

    const updateValue = (key, value) => {
        setFilters(prev => ({
            ...prev,
            [key]: value
        }))
    }

    return { filters, toggleFilter, updateValue }
}

export default setFilters
