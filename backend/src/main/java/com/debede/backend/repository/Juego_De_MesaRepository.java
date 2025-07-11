package com.debede.backend.repository;

import com.debede.backend.entity.Juego_De_Mesa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Juego_De_MesaRepository extends JpaRepository<Juego_De_Mesa, Integer> {

}

