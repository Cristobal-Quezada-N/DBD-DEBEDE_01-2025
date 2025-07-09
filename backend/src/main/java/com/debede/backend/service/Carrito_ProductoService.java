package com.debede.backend.service;

import com.debede.backend.entity.Carrito_Producto;
import com.debede.backend.repository.Carrito_ProductoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Carrito_ProductoService {
    @Autowired
    private Carrito_ProductoRepository carrito_productoRepository;

    public List<Carrito_Producto> getAll() {
        return carrito_productoRepository.findAll();
    }

    public Optional<Carrito_Producto> getById(Long id){
        return carrito_productoRepository.findById(id);
    }

    public void save(Carrito_Producto carrito_producto){
        carrito_productoRepository.save(carrito_producto);
    }

    public void delete(Long id){
        carrito_productoRepository.deleteById(id);
    }
}