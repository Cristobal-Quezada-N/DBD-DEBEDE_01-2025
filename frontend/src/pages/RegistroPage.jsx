import React from 'react'
import { Container, Card, Form, Row, Col, Button } from 'react-bootstrap'

function RegistroPage() {
    return (
        <Container className='d-flex flex-grow-1 justify-content-center align-items-start mt-5 pt-5'>
            <Card className='flex-grow-1 px-5 border-3' border='primary'>
                <Card.Header>Crear Cuenta</Card.Header>
                <Card.Body>
                    <Form>
                        <Row md={2}>
                            <Form.Group controlId='formName' className='mb-3'>
                                <Form.Label>Nombre</Form.Label>
                                <Form.Control type='text' placeholder='...' required/>
                                <Form.Control.Feedback type='invalid'>
                                                                        Ingresa
                                </Form.Control.Feedback>
                            </Form.Group>
                            <Form.Group controlId='formLastname' className='mb-3'>
                                <Form.Label>Apellido</Form.Label>
                                <Form.Control type='text' placeholder='...' required/>
                            </Form.Group>
                        </Row>
                        <Row md={2}>
                            <Form.Group controlId='formEmail' className='mb-3'>
                                <Form.Label>Correo</Form.Label>
                                <Form.Control type='email' placeholder='...' required/>
                            </Form.Group>
                            <Form.Group controlId='formLocation' className='mb-3'>
                                <Form.Label>Dirección</Form.Label>
                                <Form.Control type='text' placeholder='...' required/>
                            </Form.Group>
                        </Row>
                        <Col>
                            <Form.Group controlId='formPassword' className='mb-3'>
                                <Form.Label>Contraseña</Form.Label>
                                <Form.Control type='password' placeholder='...' required minLength={8}/>
                            </Form.Group>
                            <Form.Group controlId='formCheckPassword' className='mb-3'>
                                <Form.Label>Verifica tu Contraseña</Form.Label>
                                <Form.Control type='password' placeholder='...' required minLength={8}/>
                            </Form.Group>
                        </Col>
                        <Button type='submit'>Crear</Button>
                    </Form>
                </Card.Body>
            </Card>
        </Container>
    )
}

export default RegistroPage
