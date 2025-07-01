import React from 'react'
import { Link } from 'react-router-dom'
import { Navbar, Nav, Container, NavDropdown } from 'react-bootstrap'

function NavBar() {
    return (
        <Navbar bg='dark' variant='dark' expand='lg'>
            <Navbar.Brand as={Link} to='/'>TCG & Board Games</Navbar.Brand>
            <Navbar.Toggle aria-controls='basic-navbar-nav' />
            <Navbar.Collapse id='basic-navbar-nav'>
                <Nav className='me-auto'>
                    <NavDropdown title='Categorías' id='basic-nav-dropdown'>
                        <NavDropdown.Item as={Link} to='/cartas'>TCG</NavDropdown.Item>
                        <NavDropdown.Item as={Link} to='/mesa'>Board Games</NavDropdown.Item>
                    </NavDropdown>
                </Nav>
                <Nav>
                    <Nav.Link as={Link} to='/login'>Login</Nav.Link>
                    <Nav.Link as={Link} to='/registro'>Registro</Nav.Link>
                </Nav>
            </Navbar.Collapse>
        </Navbar>
    );
}

export default NavBar;
