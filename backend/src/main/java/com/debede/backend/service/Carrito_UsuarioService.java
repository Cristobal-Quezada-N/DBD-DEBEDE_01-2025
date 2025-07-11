package com.debede.backend.service;

import com.debede.backend.entity.Carrito_Usuario;
import com.debede.backend.repository.Carrito_UsuarioRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Carrito_UsuarioService {
    @Autowired
    private Carrito_UsuarioRepository carrito_UsuarioRepository;

    public List<Carrito_Usuario> getAll(){
        return carrito_UsuarioRepository.findAll();
    }

    public Optional<Carrito_Usuario> getById(Integer id){
        return carrito_UsuarioRepository.findById(id);
    }

    public Carrito_Usuario save(Carrito_Usuario carrito_Usuario){
        return carrito_UsuarioRepository.save(carrito_Usuario);
    }

    public void delete(Integer id){
        carrito_UsuarioRepository.deleteById(id);
    }
}