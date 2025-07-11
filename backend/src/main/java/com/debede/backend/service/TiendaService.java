package com.debede.backend.service;

import com.debede.backend.entity.Tienda;
import com.debede.backend.repository.TiendaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TiendaService {
    @Autowired
    private TiendaRepository tiendaRepository;

    public List<Tienda> getAll(){
        return tiendaRepository.findAll();
    }

    public Optional<Tienda> getById(Integer id){
        return tiendaRepository.findById(id);
    }

    public Tienda save(Tienda tienda){
        return tiendaRepository.save(tienda);
    }

    public void delete(Integer id){
        tiendaRepository.deleteById(id);
    }
}