package com.debede.backend.repository;

import com.debede.backend.entity.Valoracion_Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Valoracion_ProductoRepository extends JpaRepository<Valoracion_Producto, Long> {

}