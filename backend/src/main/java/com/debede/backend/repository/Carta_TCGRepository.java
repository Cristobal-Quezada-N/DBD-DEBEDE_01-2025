package com.debede.backend.repository;

import com.debede.backend.entity.Carta_TCG;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Carta_TCGRepository extends JpaRepository<Carta_TCG, Long> {

}
