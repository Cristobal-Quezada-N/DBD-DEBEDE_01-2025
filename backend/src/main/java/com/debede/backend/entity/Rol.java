package com.debede.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Rol")
public class Rol {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_rol;
    private String tipo_rol;
    private Short nivel_permiso;

    public Rol(Long id_rol, String tipo_rol, Short nivel_permiso) {
        this.id_rol = id_rol;
        this.tipo_rol = tipo_rol;
        this.nivel_permiso = nivel_permiso;
    }

    public Rol() {

    }

    public Long getId_rol() {
        return id_rol;
    }

    public void setId_rol(Long id_rol) {
        this.id_rol = id_rol;
    }

    public String getTipo_rol() {
        return tipo_rol;
    }

    public void setTipo_rol(String tipo_rol) {
        this.tipo_rol = tipo_rol;
    }

    public Short getNivel_permiso() {
        return nivel_permiso;
    }

    public void setNivel_permiso(Short nivel_permiso) {
        this.nivel_permiso = nivel_permiso;
    }

    @Override
    public String toString() {
        return "Rol{" +
                "id_rol=" + id_rol +
                ", tipo_rol='" + tipo_rol + '\'' +
                ", nivel_permiso=" + nivel_permiso +
                '}';
    }
}