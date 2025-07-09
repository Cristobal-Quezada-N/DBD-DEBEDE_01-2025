package com.debede.backend.service;

import com.debede.backend.entity.Boleta_Producto;
import com.debede.backend.repository.Boleta_ProductoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Boleta_ProductoService {
    @Autowired
    private Boleta_ProductoRepository boletaRepository;

    public List<Boleta_Producto> getAll(){
        return boletaRepository.findAll();
    }

    public Optional<Boleta_Producto> getById(Long id){
        return boletaRepository.findById(id);
    }

    public Boleta_Producto save(Boleta_Producto boleta_producto){
        return boletaRepository.save(boleta_producto);
    }

    public void delete(Long id){
        boletaRepository.deleteById(id);
    }
}