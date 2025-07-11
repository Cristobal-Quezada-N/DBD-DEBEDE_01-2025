package com.debede.backend.service;

import com.debede.backend.entity.Carta_TCG;
import com.debede.backend.repository.Carta_TCGRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Carta_TCGService {
    @Autowired
    private Carta_TCGRepository carta_TCGRepository;

    public List<Carta_TCG> getAll() {
        return carta_TCGRepository.findAll();
    }

    public Optional<Carta_TCG> getById(Integer id) {
        return carta_TCGRepository.findById(id);
    }

    public Carta_TCG save(Carta_TCG carta_TCG) {
        return carta_TCGRepository.save(carta_TCG);
    }

    public void delete(Integer id) {
        carta_TCGRepository.deleteById(id);
    }
}