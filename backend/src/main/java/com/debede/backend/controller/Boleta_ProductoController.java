package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Boleta_Producto;
import com.debede.backend.entity.Boleta_Producto.Boleta_ProductoId;
import com.debede.backend.service.Boleta_ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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

    @GetMapping("/{id_boleta}/{id_producto}")
    public ResponseEntity<Boleta_Producto> getById(@PathVariable Long id_boleta, @PathVariable Long id_producto) {
        Boleta_ProductoId id_boleta_producto = new Boleta_ProductoId(id_boleta, id_producto);
        Optional<Boleta_Producto> boletaProducto = boleta_ProductoService.getById(id_boleta_producto);
        return boletaProducto.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Boleta_Producto create(@RequestBody Boleta_Producto boletaProducto) {
        return boleta_ProductoService.save(boletaProducto);
    }

    @PutMapping("/{id_boleta}/{id_producto}")
    public ResponseEntity<Boleta_Producto> update(@PathVariable Long id_boleta, @PathVariable Long id_producto, @RequestBody Boleta_Producto newBoleta_Producto) {
        Boleta_ProductoId id_boleta_producto = new Boleta_ProductoId(id_boleta, id_producto);
        return boleta_ProductoService.getById(id_boleta_producto)
            .map(existing -> {
                newBoleta_Producto.setId(id_boleta_producto);
                newBoleta_Producto.setBoleta(existing.getBoleta());
                newBoleta_Producto.setProducto(existing.getProducto());
                Boleta_Producto saved = boleta_ProductoService.save(newBoleta_Producto);
                return ResponseEntity.ok(saved);
            }).orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id_boleta}/{id_producto}")
    public ResponseEntity<Void> delete(@PathVariable Long id_boleta, @PathVariable Long id_producto) {
        Boleta_ProductoId id_boleta_producto = new Boleta_ProductoId(id_boleta, id_producto);
        return boleta_ProductoService.getById(id_boleta_producto)
            .map(boletaProducto -> ResponseEntity.ok().<Void>build())
            .orElse(ResponseEntity.notFound().build());
    }
}