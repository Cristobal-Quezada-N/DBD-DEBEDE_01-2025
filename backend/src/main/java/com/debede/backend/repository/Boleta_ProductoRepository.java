package com.debede.backend.repository;


import com.debede.backend.entity.Boleta_Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Boleta_ProductoRepository extends JpaRepository<Boleta_Producto, Long> {

}
