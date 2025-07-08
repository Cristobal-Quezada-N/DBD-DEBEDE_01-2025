package com.debede.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Carrito")
public class Carrito {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_carrito;
    private int productos_carro;

    public Carrito(Long id_carrito, int productos_carro) {
        this.id_carrito = id_carrito;
        this.productos_carro = productos_carro;
    }

    public Carrito() {

    }

    public Long getId_carrito() {
        return id_carrito;
    }

    public void setId_carrito(Long id_carrito) {
        this.id_carrito = id_carrito;
    }

    public int getProductos_carro() {
        return productos_carro;
    }

    public void setProductos_carro(int productos_carro) {
        this.productos_carro = productos_carro;
    }

    @Override
    public String toString() {
        return "Carrito{" +
                "id_carrito=" + id_carrito +
                ", productos_carro=" + productos_carro +
                '}';
    }
}