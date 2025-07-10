package com.debede.backend.service;

import com.debede.backend.entity.Boleta_Producto;
import com.debede.backend.entity.Boleta_Producto.Boleta_ProductoId;
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

    public Optional<Boleta_Producto> getById(Boleta_ProductoId id){
        return boletaRepository.findById(id);
    }

    public Boleta_Producto save(Boleta_Producto boleta_producto){
        return boletaRepository.save(boleta_producto);
    }

    public void delete(Boleta_ProductoId id){
        boletaRepository.deleteById(id);
    }
}