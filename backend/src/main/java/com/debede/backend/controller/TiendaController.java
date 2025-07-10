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

import com.debede.backend.entity.Tienda;
import com.debede.backend.service.TiendaService;

@RestController
@RequestMapping("/api/tienda")
public class TiendaController {
    @Autowired
    private TiendaService tiendaService;

    @GetMapping
    public List<Tienda> getAll() {
        return tiendaService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Tienda> getById(@PathVariable Long id) {
        return tiendaService.getById(id);
    }

    @PostMapping
    public Tienda create(@RequestBody Tienda tienda) {
        return tiendaService.save(tienda);
    }

    @PutMapping("/{id}")
    public Tienda update(@PathVariable Long id, @RequestBody Tienda tienda) {
        tienda.setId_tienda(id);;
        return tiendaService.save(tienda);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        tiendaService.delete(id);
    }

}