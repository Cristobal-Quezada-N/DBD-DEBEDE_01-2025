package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Carrito;
import com.debede.backend.service.CarritoService;
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
@RequestMapping("/api/carrito")
public class CarritoController {
    @Autowired
    private CarritoService carritoService;

    @GetMapping
    public List<Carrito> getAll() {
        return carritoService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Carrito> getById(@PathVariable Long id) {
        return carritoService.getById(id);
    }

    @PostMapping
    public Carrito create(@RequestBody Carrito carrito) {
        return carritoService.save(carrito);
    }

    @PutMapping("/{id}")
    public Carrito update(@PathVariable Long id, @RequestBody Carrito carrito) {
        carrito.setId_carrito(id);
        return carritoService.save(carrito);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        carritoService.delete(id);
    }
}
