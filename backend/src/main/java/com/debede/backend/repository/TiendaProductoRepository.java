package com.debede.backend.repository;


import com.debede.backend.entity.TiendaProducto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TiendaProductoRepository extends JpaRepository<TiendaProducto, Long> {

}