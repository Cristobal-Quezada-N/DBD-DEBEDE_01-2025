import React, { useEffect } from 'react'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import Container from 'react-bootstrap/Container'

import NavBar from './components/NavBar'
import HomePage from './pages/HomePage'
import CarritoPage from './pages/CarritoPage'
import CartasPage from './pages/CartasPage'
import MesaPage from './pages/MesaPage'
import RegistroPage from './pages/RegistroPage'
import LoginPage from './pages/LoginPage'
import CuentaPage from './pages/CuentaPage'
import ProductPage from './pages/ProductPage'

function App() {
    useEffect(() => {
        fetch('http://localhost:8080/api/test')
            .then(res => res.text())
            .then(data => console.log(data))
            .catch(err => console.error('Error:', err));
    }, []);
    return (
        <>
            <Container className='bg-dark text-white d-flex flex-column min-vh-100 m-0 p-0' fluid>
                <Router>
                    <NavBar/>
                    <div className='d-flex flex-grow-1 flex-column min-h-0 m-0 p-3'>
                        <Routes>
                            <Route path='/' element={<HomePage/>} />
                            <Route path='/carrito' element={<CarritoPage/>} />
                            <Route path='/cartas' element={<CartasPage/>} />
                            <Route path='/mesa' element={<MesaPage/>} />
                            <Route path='/login' element={<LoginPage/>} />
                            <Route path='/registro' element={<RegistroPage/>} />
                            <Route path='/cuenta' element={<CuentaPage/>} />
                            <Route path='/product' element={<ProductPage/>} />
                        </Routes>
                    </div>
                </Router>
            </Container>
        </>
    )
}

export default App
