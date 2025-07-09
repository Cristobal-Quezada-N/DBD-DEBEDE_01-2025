package com.debede.backend.service;

import com.debede.backend.entity.Valoracion;
import com.debede.backend.repository.ValoracionRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ValoracionService {
    @Autowired
    private ValoracionRepository valoracion_ProductoRepository;

    public List<Valoracion> getAll(){
        return valoracion_ProductoRepository.findAll();
    }

    public Optional<Valoracion> getById(Long id){
        return valoracion_ProductoRepository.findById(id);
    }

    public Valoracion save(Valoracion valoracion_Producto){
        return valoracion_ProductoRepository.save(valoracion_Producto);
    }

    public void delete(Long id){
        valoracion_ProductoRepository.deleteById(id);
    }
}