package com.debede.backend.service;

import com.debede.backend.entity.ListaDeseos;
import com.debede.backend.repository.ListaDeseosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ListaDeseosService {
    @Autowired
    private ListaDeseosRepository listaDeseosRepository;

    public List<ListaDeseos> getAll() {
        return listaDeseosRepository.findAll();
    }

    public Optional<ListaDeseos> getById(Integer id) {
        return listaDeseosRepository.findById(id);
    }

    public ListaDeseos save(ListaDeseos listaDeseos){
        return listaDeseosRepository.save(listaDeseos);
    }

    public void delete(Integer id){
        listaDeseosRepository.deleteById(id);
    }
}