package com.debede.backend.entity;

public class Carrito {
    private Long id_carrito;
    private Integer productos_carro;

    public Carrito(Long id_carrito, Integer productos_carro) {
        this.id_carrito = id_carrito;
        this.productos_carro = productos_carro;
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

    public void setProductos_carro(Integer productos_carro) {
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