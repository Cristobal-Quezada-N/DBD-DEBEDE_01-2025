package com.debede.backend.entity;

public class Boleta_Producto {
    private Long id_boleta;
    private Long id_producto;

    public Boleta_Producto(Long id_boleta, Long id_producto) {
        this.id_boleta = id_boleta;
        this.id_producto = id_producto;
    }

    public Long getId_boleta() {
        return id_boleta;
    }

    public void setId_boleta(Long id_boleta) {
        this.id_boleta = id_boleta;
    }

    public Long getId_producto() {
        return id_producto;
    }

    public void setId_producto(Long id_producto) {
        this.id_producto = id_producto;
    }

    @Override
    public String toString() {
        return "Boleta_Producto{" +
                "id_boleta=" + id_boleta +
                ", id_producto=" + id_producto +
                '}';
    }
}