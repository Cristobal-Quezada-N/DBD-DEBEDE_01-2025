package com.debede.backend.service;

import com.debede.backend.entity.Boleta;
import com.debede.backend.repository.BoletaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BoletaService {
    @Autowired
    private BoletaRepository boletaRepository;

    public List<Boleta> getAll() {
        return boletaRepository.findAll();
    }

    public Optional<Boleta> getById(Long id) {
        return boletaRepository.findById(id);
    }

    public Boleta save(Boleta boleta) {
        return boletaRepository.save(boleta);
    }

    public void delete(Long id) {
        boletaRepository.deleteById(id);
    }
}