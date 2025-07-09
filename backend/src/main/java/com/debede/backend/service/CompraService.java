package com.debede.backend.service;

import com.debede.backend.entity.Compra;
import com.debede.backend.repository.CompraRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CompraService {
    @Autowired
    private CompraRepository compraRepository;

    public List<Compra> getAll(){
        return compraRepository.findAll();
    }

    public Optional<Compra> getById(Long id){
        return compraRepository.findById(id);
    }

    public Compra save(Compra compra){
        return compraRepository.save(compra);
    }

    public void delete(Long id){
        compraRepository.deleteById(id);
    }
}