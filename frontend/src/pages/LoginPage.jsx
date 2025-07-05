import React from 'react'
import Card from 'react-bootstrap/Card'
import Container from 'react-bootstrap/Container'

import Login from '../components/Login'

function LoginPage() {
    return (
        <Container className='d-flex flex-grow-1 justify-content-center align-items-start mt-5 pt-5'>
            <Card className='flex-grow-1 px-5 border-3' border='primary'>
                <Card.Header>Inicio de Sesion</Card.Header>
                <Card.Body>
                    <Login className='flex-grow-1 px-5'/>
                </Card.Body>
            </Card>
        </Container>
    )
}

export default LoginPage
