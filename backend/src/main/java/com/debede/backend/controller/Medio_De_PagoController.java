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

import com.debede.backend.entity.Medio_De_Pago;
import com.debede.backend.service.Medio_De_PagoService;

@RestController
@RequestMapping("/api/medios_de_pago")
public class Medio_De_PagoController {

    @Autowired
    private Medio_De_PagoService medio_De_PagoService;

    @GetMapping
    public List<Medio_De_Pago> getAll() {
        return medio_De_PagoService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Medio_De_Pago> getById(@PathVariable Integer id) {
        return medio_De_PagoService.getById(id);
    }

    @PostMapping
    public Medio_De_Pago create(@RequestBody Medio_De_Pago medioDePago) {
        return medio_De_PagoService.save(medioDePago);
    }

    @PutMapping("/{id}")
    public Medio_De_Pago update(@PathVariable Integer id, @RequestBody Medio_De_Pago medioDePago) {
        medioDePago.setId_medio(id);
        return medio_De_PagoService.save(medioDePago);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        medio_De_PagoService.delete(id);
    }
}