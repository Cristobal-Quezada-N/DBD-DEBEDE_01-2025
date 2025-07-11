package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.ListaDeseos;
import com.debede.backend.service.ListaDeseosService;
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
@RequestMapping("/api/listaDeseos")
public class ListaDeseosController {
    @Autowired
    private ListaDeseosService listaDeseosService;

    @GetMapping
    public List<ListaDeseos> getAll() {
        return listaDeseosService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<ListaDeseos> getById(@PathVariable Integer id) {
        return listaDeseosService.getById(id);
    }

    @PostMapping
    public ListaDeseos create(@RequestBody ListaDeseos listaDeseos) {
        return listaDeseosService.save(listaDeseos);
    }

    @PutMapping("/{id}")
    public ListaDeseos update(@PathVariable Integer id, @RequestBody ListaDeseos listaDeseos) {
        listaDeseos.setId_lista_deseos(id);
        return listaDeseosService.save(listaDeseos);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        listaDeseosService.delete(id);
    }
}
