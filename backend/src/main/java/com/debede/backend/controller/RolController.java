package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.debede.backend.entity.Rol;
import com.debede.backend.service.RolService;

@RestController
@RequestMapping("/api/roles")
public class RolController {
    @Autowired
    private RolService rolService;

    @GetMapping
    public List<Rol> getAll() {
        return rolService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Rol> getById(@PathVariable Integer id) {
        return rolService.getById(id);
    }

    @PostMapping
    public Rol create(@RequestBody Rol rol) {
        return rolService.save(rol);
    }

    @PutMapping("/{id}")
    public Rol update(@PathVariable Integer id, @RequestBody Rol rol) {
        rol.setId_rol(id);;
        return rolService.save(rol);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        rolService.delete(id);
    }

}