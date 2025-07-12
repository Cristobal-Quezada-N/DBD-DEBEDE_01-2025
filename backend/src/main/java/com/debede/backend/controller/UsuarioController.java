package com.debede.backend.controller;

import java.util.List;
import java.util.Optional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
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
        Map<String, Object> response = new HashMap<>();
        response.put("mensaje", "Cuenta Registrada");
        response.put("usuario", newUser);
        return ResponseEntity.ok(response);
    }

    @PutMapping("/{id}")
    public Usuario update(@PathVariable Integer id, @RequestBody Usuario usuario) {
        usuario.setId_usuario(id);;
        return usuarioService.save(usuario);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        usuarioService.delete(id);
    }

}