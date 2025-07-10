package com.debede.backend.service;

import com.debede.backend.entity.Juego_De_Mesa;
import com.debede.backend.repository.Juego_De_MesaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Juego_De_MesaService {
    @Autowired
    private Juego_De_MesaRepository juego_De_MesaRepository;

    public List<Juego_De_Mesa> getAll(){
        return juego_De_MesaRepository.findAll();
    }

    public Optional<Juego_De_Mesa> getById(Long id){
        return juego_De_MesaRepository.findById(id);
    }

    public Juego_De_Mesa save(Juego_De_Mesa juego_De_Mesa){
        return juego_De_MesaRepository.save(juego_De_Mesa);
    }

    public void delete(Long id){
        juego_De_MesaRepository.deleteById(id);
    }
}