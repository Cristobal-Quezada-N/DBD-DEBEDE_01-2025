import React from 'react'
import PropTypes from 'prop-types'
import { Form, Button } from 'react-bootstrap'

function Login({ className = '' }) {
    return (
        <Form className={className}>
            <Form.Group className='mb-3' controlId='formEmail'>
                <Form.Label>Email</Form.Label>
                <Form.Control type='email' placeholder='Ingresa tu Email'/>
            </Form.Group>
            <Form.Group className='mb-3' controlId='formPassword'>
                <Form.Label>Contraseña</Form.Label>
                <Form.Control type='password' placeholder='Ingresa tu Contraseña'/>
            </Form.Group>
            <Button type='submit'>Ingresar</Button>
        </Form>
    )
}

Login.propTypes = {
    className: String
}

export default Login
