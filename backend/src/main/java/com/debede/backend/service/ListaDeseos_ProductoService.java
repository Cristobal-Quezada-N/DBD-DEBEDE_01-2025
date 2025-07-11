package com.debede.backend.service;

import com.debede.backend.entity.ListaDeseos_Producto;
import com.debede.backend.repository.ListaDeseos_ProductoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ListaDeseos_ProductoService {
    @Autowired
    private ListaDeseos_ProductoRepository listaDeseos_productoRepository;

    public List<ListaDeseos_Producto> getAll() {
        return  listaDeseos_productoRepository.findAll();
    }

    public Optional<ListaDeseos_Producto> getById(Integer id) {
        return listaDeseos_productoRepository.findById(id);
    }

    public ListaDeseos_Producto save(ListaDeseos_Producto listaDeseos_Producto) {
        return listaDeseos_productoRepository.save(listaDeseos_Producto);
    }

    public void delete(Integer id) {
        listaDeseos_productoRepository.deleteById(id);
    }
}