package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Boleta;
import com.debede.backend.service.BoletaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/boleta")
public class BoletaController {
    @Autowired
    private BoletaService boletaService;

    @GetMapping
    public List<Boleta> getAll() {
        return boletaService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Boleta> getById(@PathVariable Integer id) {
        return boletaService.getById(id);
    }

    @PostMapping
    public Boleta create(@RequestBody Boleta boleta) {
        return boletaService.save(boleta);
    }

    @PutMapping("/{id}")
    public Boleta update(@PathVariable Integer id, @RequestBody Boleta boleta) {
        boleta.setId_boleta(id);
        return boletaService.save(boleta);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        boletaService.delete(id);
    }
}