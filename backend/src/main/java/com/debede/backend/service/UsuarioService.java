package com.debede.backend.service;

import com.debede.backend.entity.Rol;
import com.debede.backend.entity.Usuario;
import com.debede.backend.repository.UsuarioRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class UsuarioService {
    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private RolService rolService;

    public List<Usuario> getAll(){
        return usuarioRepository.findAll();
    }

    public Optional<Usuario> getById(Integer id){
        return usuarioRepository.findById(id);
    }

    public Usuario save(Usuario usuario){
        usuario.setFecha_de_registro(LocalDate.now());
        Rol rolCliente = rolService.getById(3).orElseThrow();
        usuario.setRol(rolCliente);
        return usuarioRepository.save(usuario);
    }

    public void delete(Integer id){
        usuarioRepository.deleteById(id);
    }

    public boolean existsEmail(String email) {
        return usuarioRepository.findByEmail(email).isPresent();
    }

    public Optional<Usuario> login(String email, String contraseña) {
        return usuarioRepository.findByEmailAndContraseña(email, contraseña);
    }
}