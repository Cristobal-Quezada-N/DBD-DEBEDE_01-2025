package com.debede.backend.service;

import com.debede.backend.entity.Rol;
import com.debede.backend.entity.Usuario;
import com.debede.backend.repository.Carrito_UsuarioRepository;
import com.debede.backend.repository.UsuarioRepository;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class UsuarioService {
    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private Carrito_UsuarioRepository carritoUsuarioRepository;

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

    public Map.Entry<HttpStatus, String> delete(Integer id){
        if (!getById(id).isPresent()) {
            return Map.entry(HttpStatus.NOT_FOUND, "Usuario no encontrado");
        }
        if (carritoUsuarioRepository.existsByUsuarioId(id)) {
            return Map.entry(HttpStatus.CONFLICT, "No se puede borrar porque usuario tiene carritos");
        }
        usuarioRepository.deleteById(id);
        return Map.entry(HttpStatus.ACCEPTED, "Usuario Borrado");
    }

    public boolean existsEmail(String email) {
        return usuarioRepository.findByEmail(email).isPresent();
    }

    public Optional<Usuario> login(String email, String contraseña) {
        return usuarioRepository.findByEmailAndContraseña(email, contraseña);
    }

    public Optional<Usuario> update(Integer id, Usuario newUser) {
        return getById(id).map(actual -> {
            BeanUtils.copyProperties(
                newUser,
                actual,
                "id_usuario",
                "fecha_registro",
                "rol",
                "valoracion"
            );
            return save(actual);
        });
    }
}