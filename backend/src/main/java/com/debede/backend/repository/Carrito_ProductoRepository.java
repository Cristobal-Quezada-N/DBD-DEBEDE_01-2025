package com.debede.backend.repository;


import com.debede.backend.entity.Carrito_Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Carrito_ProductoRepository extends JpaRepository<Carrito_Producto, Long> {

}
