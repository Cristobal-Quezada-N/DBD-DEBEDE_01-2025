package com.debede.backend.service;

import com.debede.backend.entity.ListaDeseos_Usuarios;
import com.debede.backend.repository.ListaDeseos_UsuariosRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ListaDeseos_UsuariosService {
    @Autowired
    private ListaDeseos_UsuariosRepository listaDeseos_UsuariosRepository;

    public List<ListaDeseos_Usuarios> getall() {
        return listaDeseos_UsuariosRepository.findAll();
    }

    public Optional<ListaDeseos_Usuarios> getById(Long id) {
        return listaDeseos_UsuariosRepository.findById(id);
    }

    public ListaDeseos_Usuarios save(ListaDeseos_Usuarios listaDeseos_Usuarios) {
        return listaDeseos_UsuariosRepository.save(listaDeseos_Usuarios);
    }

    public void delete(Long id) {
        listaDeseos_UsuariosRepository.deleteById(id);
    }
}