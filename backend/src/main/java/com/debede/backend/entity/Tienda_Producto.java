package com.debede.backend.entity;

public class Tienda_Producto {
    private Long id_tienda;
    private Long id_producto;

    public Tienda_Producto(Long id_tienda, Long id_producto) {
        this.id_tienda = id_tienda;
        this.id_producto = id_producto;
    }

    public Long getId_tienda() {
        return id_tienda;
    }

    public void setId_tienda(Long id_tienda) {
        this.id_tienda = id_tienda;
    }

    public Long getId_producto() {
        return id_producto;
    }

    public void setId_producto(Long id_producto) {
        this.id_producto = id_producto;
    }

    @Override
    public String toString() {
        return "Tienda_Producto{" +
                "id_tienda=" + id_tienda +
                ", id_producto=" + id_producto +
                '}';
    }
}