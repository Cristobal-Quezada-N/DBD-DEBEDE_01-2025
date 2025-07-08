package com.debede.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Carrito_Producto")
public class Carrito_Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_carrito;
    private Long id_producto;

    public Carrito_Producto(Long id_carrito, Long id_producto) {
        this.id_carrito = id_carrito;
        this.id_producto = id_producto;
    }

    public Carrito_Producto() {

    }

    public Long getId_carrito() {
        return id_carrito;
    }

    public void setId_carrito(Long id_carrito) {
        this.id_carrito = id_carrito;
    }

    public Long getId_producto() {
        return id_producto;
    }

    public void setId_producto(Long id_producto) {
        this.id_producto = id_producto;
    }

    @Override
    public String toString() {
        return "Carrito_Producto{" +
                "id_carrito=" + id_carrito +
                ", id_producto=" + id_producto +
                '}';
    }
}