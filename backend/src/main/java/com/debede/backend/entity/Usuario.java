package com.debede.backend.entity;

import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
@Table(name = "Usuario")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_usuario;
    private Long id_rol;
    private Long id_valoracion;
    private LocalDate fecha_registro;
    private String contrasena;
    private String email;
    private String apellido;
    private String nombre_usuario;
    private String direccion_usuario;

    public Usuario(Long id_usuario, Long id_rol, Long id_valoracion, LocalDate fecha_registro, String contrasena, String email, String apellido, String nombre_usuario, String direccion_usuario) {
        this.id_usuario = id_usuario;
        this.id_rol = id_rol;
        this.id_valoracion = id_valoracion;
        this.fecha_registro = fecha_registro;
        this.contrasena = contrasena;
        this.email = email;
        this.apellido = apellido;
        this.nombre_usuario = nombre_usuario;
        this.direccion_usuario = direccion_usuario;
    }

    public Usuario() {

    }

    public Long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Long getId_rol() {
        return id_rol;
    }

    public void setId_rol(Long id_rol) {
        this.id_rol = id_rol;
    }

    public Long getId_valoracion() {
        return id_valoracion;
    }

    public void setId_valoracion(Long id_valoracion) {
        this.id_valoracion = id_valoracion;
    }

    public LocalDate getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(LocalDate fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getDireccion_usuario() {
        return direccion_usuario;
    }

    public void setDireccion_usuario(String direccion_usuario) {
        this.direccion_usuario = direccion_usuario;
    }

    @Override
    public String toString() {
        return "Usuario{" +
                "id_usuario=" + id_usuario +
                ", id_rol=" + id_rol +
                ", id_valoracion=" + id_valoracion +
                ", fecha_registro=" + fecha_registro +
                ", contrasena='" + contrasena + '\'' +
                ", email='" + email + '\'' +
                ", apellido='" + apellido + '\'' +
                ", nombre_usuario='" + nombre_usuario + '\'' +
                ", direccion_usuario='" + direccion_usuario + '\'' +
                '}';
    }
}
