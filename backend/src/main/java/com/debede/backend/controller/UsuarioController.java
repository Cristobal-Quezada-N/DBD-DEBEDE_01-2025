package com.debede.backend.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.debede.backend.entity.Usuario;
import com.debede.backend.service.UsuarioService;

import com.debede.backend.utils.Interface;

@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {
    @Autowired
    private UsuarioService usuarioService;

    @GetMapping
    public List<Usuario> getAll() {
        return usuarioService.getAll();
    }

    @GetMapping("/{id}")
    public Optional<Usuario> getById(@PathVariable Integer id) {
        return usuarioService.getById(id);
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody Usuario user) {
        if (usuarioService.existsEmail(user.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                .body("El correo ya esta registrado.");
        }
        Usuario newUser = usuarioService.save(user);
        Map<String, Object> response = Interface
            .responseWithEntity(
                "Cuenta Resgistrada",
                newUser,
                "usuario"
            );
        return ResponseEntity.ok(response);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Map<String, String> body) {
        String email = body.get("email");
        String contraseña = body.get("contraseña");

        Optional<Usuario> user = usuarioService.login(email, contraseña);
        if (user.isPresent()) {
            Map<String, Object> response = Interface
            .responseWithEntity(
                "Acceso Garantizado",
                user.get(),
                "usuario"
            );
            return ResponseEntity.ok(response);
        }

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
            .body("Credenciales incorrectas");
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> update(@PathVariable Integer id, @RequestBody Usuario usuario) {
        Optional<Usuario> updatedUser = usuarioService.update(id, usuario);
        if (updatedUser.isPresent()) {
            return ResponseEntity.ok(
                Interface.responseWithEntity("Usuario Actualizado", updatedUser.get(), "usuario")
            );
       }
       return ResponseEntity.status(HttpStatus.NOT_FOUND)
       .body("Usuario no encontrado");
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        usuarioService.delete(id);
    }

}