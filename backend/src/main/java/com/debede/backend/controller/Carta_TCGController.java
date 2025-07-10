package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;

import com.debede.backend.entity.Carta_TCG;
import com.debede.backend.service.Carta_TCGService;
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
@RequestMapping("/api/carta_tcg")
public class Carta_TCGController {
    @Autowired
    private Carta_TCGService carta_tcgService;

    @GetMapping
    public List<Carta_TCG> getAll() {
        return carta_tcgService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Carta_TCG> getById(@PathVariable Long id) {
        return carta_tcgService.getById(id);
    }

    @PostMapping
    public Carta_TCG create(@RequestBody Carta_TCG carta_tcg) {
        return carta_tcgService.save(carta_tcg);
    }

    @PutMapping("/{id}")
    public Carta_TCG update(@PathVariable Long id, @RequestBody Carta_TCG carta_tcg) {
        carta_tcg.setId_carta(id);
        return carta_tcgService.save(carta_tcg);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        carta_tcgService.delete(id);
    }
}
