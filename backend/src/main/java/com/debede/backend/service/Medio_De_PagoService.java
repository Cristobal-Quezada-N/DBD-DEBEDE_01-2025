package com.debede.backend.service;

import com.debede.backend.entity.Medio_De_Pago;
import com.debede.backend.repository.Medio_De_PagoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Medio_De_PagoService {
    @Autowired
    private Medio_De_PagoRepository medio_de_pagoRepository;

    public List<Medio_De_Pago> getAll() {
        return medio_de_pagoRepository.findAll();
    }

    public Optional<Medio_De_Pago> getById(Integer id) {
        return medio_de_pagoRepository.findById(id);
    }

    public Medio_De_Pago save(Medio_De_Pago medio_de_pago) {
        return medio_de_pagoRepository.save(medio_de_pago);
    }

    public void delete(Integer id) {
        medio_de_pagoRepository.deleteById(id);
    }
}