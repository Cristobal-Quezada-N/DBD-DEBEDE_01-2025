package com.debede.backend.repository;



import com.debede.backend.entity.ListaDeseos_Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ListaDeseos_ProductoRepository extends JpaRepository<ListaDeseos_Producto, Integer> {

}

