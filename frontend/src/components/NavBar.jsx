import React from 'react'
import { Link } from 'react-router-dom'
import { Navbar, Nav, Container, NavDropdown, Offcanvas } from 'react-bootstrap'

function NavBar() {
    return (
        <Navbar variant='dark' expand='lg' className='bg-dark'>
            <Navbar.Brand as={Link} to='/'>TCG & Board Games</Navbar.Brand>
            <Nav className='d-none d-lg-flex me-auto'>
                <NavDropdown title='Categorías' id='basic-nav-dropdown'>
                    <NavDropdown.Item as={Link} to='/cartas'>TCG</NavDropdown.Item>
                    <NavDropdown.Item as={Link} to='/mesa'>Board Games</NavDropdown.Item>
                </NavDropdown>
            </Nav>

            <Nav className='d-none d-md-flex mx-auto text-white'>
                <p className='my-auto'>Buscador</p>
            </Nav>

            <Nav className='ms-auto align-items-center flex-row'>
                <Nav.Link as={Link} to='/carrito' className='px-3'>
                    <i className='bi-cart-fill'></i>
                </Nav.Link>
                <Navbar.Toggle aria-controls='offcanvasNavbar'/>
                <Navbar.Offcanvas
                    id='offcanvasNavbar'
                    aria-labelledby='offcanvasNavbarLabel'
                    placement='end'
                    className='bg-dark text-white'
                >
                    <Offcanvas.Header closeButton closeVariant='white'>
                        <Offcanvas.Title id='offcanvasNavbarLabel'>Tienda</Offcanvas.Title>
                    </Offcanvas.Header>
                    <Offcanvas.Body>
                        <div className='d-lg-none'>
                            <p>Buscador</p>
                        </div>

                        <Nav className='d-lg-none'>
                            <NavDropdown title='Categorías' id='dropdown-categorias'>
                                <NavDropdown.Item as={Link} to='/cartas'>TCG</NavDropdown.Item>
                                <NavDropdown.Item as={Link} to='/mesa'>Board Games</NavDropdown.Item>
                            </NavDropdown>
                        </Nav>

                        <div className='d-lg-none'>
                            <Nav.Link as={Link} to='/login'>Login</Nav.Link>
                            <Nav.Link as={Link} to='/registro'>Registro</Nav.Link>
                        </div>
                    </Offcanvas.Body>
                </Navbar.Offcanvas>

                <div className='d-none d-lg-flex'>
                    <Nav.Link as={Link} to='/login'>Login</Nav.Link>
                    <Nav.Link as={Link} to='/registro'>Registro</Nav.Link>
                </div>

            </Nav>
        </Navbar>
    );
}

export default NavBar
