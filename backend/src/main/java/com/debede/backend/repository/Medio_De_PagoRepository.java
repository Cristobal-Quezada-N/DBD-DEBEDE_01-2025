package com.debede.backend.repository;

import com.debede.backend.entity.Medio_De_Pago;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Medio_De_PagoRepository extends JpaRepository<Medio_De_Pago, Integer> {

}