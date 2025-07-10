package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Compra;
import com.debede.backend.service.CompraService;
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
@RequestMapping("/api/compra")
public class CompraController {
    @Autowired
    private CompraService compraService;

    @GetMapping
    public List<Compra> getAll() {
        return compraService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Compra> getById(@PathVariable Long id) {
        return compraService.getById(id);
    }

    @PostMapping
    public Compra create(@RequestBody Compra compra) {
        return compraService.save(compra);
    }

    @PutMapping("/{id}")
    public Compra update(@PathVariable Long id, @RequestBody Compra compra) {
        compra.setId_compra(id);
        return compraService.save(compra);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        compraService.delete(id);
    }
}
