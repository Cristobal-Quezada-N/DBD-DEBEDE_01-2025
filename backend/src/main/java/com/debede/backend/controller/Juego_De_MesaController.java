package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Juego_De_Mesa;
import com.debede.backend.service.Juego_De_MesaService;
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
@RequestMapping("/api/juego_de_mesa")
public class Juego_De_MesaController {
    @Autowired
    private Juego_De_MesaService juegoDeMesaService;

    @GetMapping
    public List<Juego_De_Mesa> getAll() {
        return juegoDeMesaService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Juego_De_Mesa> getById(@PathVariable Integer id) {
        return juegoDeMesaService.getById(id);
    }

    @PostMapping
    public Juego_De_Mesa create(@RequestBody Juego_De_Mesa juego_de_mesa) {
        return juegoDeMesaService.save(juego_de_mesa);
    }

    @PutMapping("/{id}")
    public Juego_De_Mesa update(@PathVariable Integer id, @RequestBody Juego_De_Mesa juego_de_mesa) {
        juego_de_mesa.setId_juego_de_mesa(id);
        return juegoDeMesaService.save(juego_de_mesa);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        juegoDeMesaService.delete(id);
    }
}
