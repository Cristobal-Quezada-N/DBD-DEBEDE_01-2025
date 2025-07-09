package com.debede.backend.repository;



import com.debede.backend.entity.Carrito_Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Carrito_UsuarioRepository extends JpaRepository<Carrito_Usuario, Long> {

}
