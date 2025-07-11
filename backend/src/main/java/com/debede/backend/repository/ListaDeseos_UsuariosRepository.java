package com.debede.backend.repository;



import com.debede.backend.entity.ListaDeseos_Usuarios;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ListaDeseos_UsuariosRepository extends JpaRepository<ListaDeseos_Usuarios, Integer> {

}

