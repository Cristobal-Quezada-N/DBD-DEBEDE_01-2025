package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Boleta_Producto;
import com.debede.backend.service.Boleta_ProductoService;
import jakarta.persistence.Id;
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
@RequestMapping("/api/boleta_producto")
public class Boleta_ProductoController {
    @Autowired
    private Boleta_ProductoService boleta_ProductoService;

    @GetMapping
    public List<Boleta_Producto> getAll() {
        return boleta_ProductoService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Boleta_Producto> getById(@PathVariable Long id) {
        return boleta_ProductoService.getById(id);
    }

    @PostMapping
    public Boleta_Producto create(@RequestBody Boleta_Producto boleta_Producto) {
        return boleta_ProductoService.save(boleta_Producto);
    }

    @PutMapping("/{id}")
    public Boleta_Producto update(@RequestBody Boleta_Producto boleta_Producto, @PathVariable Long id) {
        boleta_Producto.setId()
        return boleta_ProductoService.save(boleta_Producto);
    }
}