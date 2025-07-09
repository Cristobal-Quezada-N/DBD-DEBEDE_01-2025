package com.debede.backend.service;

import com.debede.backend.entity.Valoracion_Producto;
import com.debede.backend.repository.Valoracion_ProductoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Valoracion_ProductoService {
    @Autowired
    private Valoracion_ProductoRepository valoracion_ProductoRepository;

    public List<Valoracion_Producto> getAll(){
        return valoracion_ProductoRepository.findAll();
    }

    public Optional<Valoracion_Producto> getById(Long id){
        return valoracion_ProductoRepository.findById(id);
    }

    public Valoracion_Producto save(Valoracion_Producto valoracion_Producto){
        return valoracion_ProductoRepository.save(valoracion_Producto);
    }

    public void delete(Long id){
        valoracion_ProductoRepository.deleteById(id);
    }
}