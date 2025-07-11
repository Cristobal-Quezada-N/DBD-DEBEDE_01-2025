package com.debede.backend.service;

import com.debede.backend.entity.Rol;
import com.debede.backend.repository.RolRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RolService {
    @Autowired
    private RolRepository rolRepository;

    public List<Rol> getAll() {
        return rolRepository.findAll();
    }

    public Optional<Rol> getById(Integer id) {
        return rolRepository.findById(id);
    }

    public Rol save(Rol rol) {
        return rolRepository.save(rol);
    }

    public void delete(Integer id) {
        rolRepository.deleteById(id);
    }
}