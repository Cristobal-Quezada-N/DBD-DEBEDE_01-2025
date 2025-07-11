package com.debede.backend.service;

import com.debede.backend.entity.TiendaProducto;
import com.debede.backend.repository.TiendaProductoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TiendaProductoService {
    @Autowired
    private TiendaProductoRepository tiendaProductoRepository;

    public List<TiendaProducto> getAll() {
        return tiendaProductoRepository.findAll();
    }

    public Optional<TiendaProducto> getById(Integer id) {
        return tiendaProductoRepository.findById(id);
    }

    public TiendaProducto save(TiendaProducto tiendaProducto) {
        return tiendaProductoRepository.save(tiendaProducto);
    }

    public void delete(Integer id) {
        tiendaProductoRepository.deleteById(id);
    }
}