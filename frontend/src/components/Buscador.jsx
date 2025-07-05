import React from 'react'
import PropTypes from 'prop-types'
import Form from 'react-bootstrap/Form'
import FormControl from 'react-bootstrap/FormControl'

function Buscador({ className = '' }) {
    return (
        <Form className={className}>
            <FormControl type='search' placeholder='Buscar...'/>
        </Form>
    )
}

Buscador.propTypes = {
    className: PropTypes.String
}

export default Buscador
