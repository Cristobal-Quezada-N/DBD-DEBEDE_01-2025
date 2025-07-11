package com.debede.backend.repository;


import com.debede.backend.entity.ListaDeseos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ListaDeseosRepository extends JpaRepository<ListaDeseos, Integer> {

}

