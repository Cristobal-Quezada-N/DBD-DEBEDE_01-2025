package com.debede.backend.entity;

public class Carrito_Usuario {
    private Long id_usuario;
    private Long id_carrito;

    public Carrito_Usuario(Long id_usuario, Long id_carrito) {
        this.id_usuario = id_usuario;
        this.id_carrito = id_carrito;
    }

    public Long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Long getId_carrito() {
        return id_carrito;
    }

    public void setId_carrito(Long id_carrito) {
        this.id_carrito = id_carrito;
    }

    @Override
    public String toString() {
        return "Carrito_Usuario{" +
                "id_usuario=" + id_usuario +
                ", id_carrito=" + id_carrito +
                '}';
    }
}