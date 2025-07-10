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

import com.debede.backend.entity.Valoracion;
import com.debede.backend.service.ValoracionService;

@RestController
@RequestMapping("/api/valoracion")
public class ValoracionController {
    @Autowired
    private ValoracionService valoracionService;

    @GetMapping
    public List<Valoracion> getAll() {
        return valoracionService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Valoracion> getById(@PathVariable Long id) {
        return valoracionService.getById(id);
    }

    @PostMapping
    public Valoracion create(@RequestBody Valoracion valoracion) {
        return valoracionService.save(valoracion);
    }

    @PutMapping("/{id}")
    public Valoracion update(@PathVariable Long id, @RequestBody Valoracion valoracion) {
        valoracion.setId_valoracion(id);;
        return valoracionService.save(valoracion);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        valoracionService.delete(id);
    }

}