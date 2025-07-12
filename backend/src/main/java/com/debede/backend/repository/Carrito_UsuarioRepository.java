package com.debede.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.debede.backend.entity.Carrito_Usuario;

@Repository
public interface Carrito_UsuarioRepository extends JpaRepository<Carrito_Usuario, Integer> {
    @Query("SELECT COUNT(cu) > 0 FROM Carrito_Usuario cu WHERE cu.usuario.id_usuario = :id")
    boolean existsByUsuarioId(@Param("id") Integer id);
}
