package com.debede.backend.entity;

import java.time.LocalDate;

public class Compra {
    private Long id_compra;
    private Long id_carrito;
    private Long id_boleta;
    private Long id_medio;
    private Integer cantidad_comprado;
    private LocalDate fecha_compra;
    private LocalDate fecha_emision_boleta;

    public Compra(Long id_compra, Long id_carrito, Long id_boleta, Long id_medio, Integer cantidad_comprado, LocalDate fecha_compra, LocalDate fecha_emision_boleta) {
        this.id_compra = id_compra;
        this.id_carrito = id_carrito;
        this.id_boleta = id_boleta;
        this.id_medio = id_medio;
        this.cantidad_comprado = cantidad_comprado;
        this.fecha_compra = fecha_compra;
        this.fecha_emision_boleta = fecha_emision_boleta;
    }

    public Long getId_compra() {
        return id_compra;
    }

    public void setId_compra(Long id_compra) {
        this.id_compra = id_compra;
    }

    public Long getId_carrito() {
        return id_carrito;
    }

    public void setId_carrito(Long id_carrito) {
        this.id_carrito = id_carrito;
    }

    public Long getId_boleta() {
        return id_boleta;
    }

    public void setId_boleta(Long id_boleta) {
        this.id_boleta = id_boleta;
    }

    public Long getId_medio() {
        return id_medio;
    }

    public void setId_medio(Long id_medio) {
        this.id_medio = id_medio;
    }

    public Integer getCantidad_comprado() {
        return cantidad_comprado;
    }

    public void setCantidad_comprado(Integer cantidad_comprado) {
        this.cantidad_comprado = cantidad_comprado;
    }

    public LocalDate getFecha_compra() {
        return fecha_compra;
    }

    public void setFecha_compra(LocalDate fecha_compra) {
        this.fecha_compra = fecha_compra;
    }

    public LocalDate getFecha_emision_boleta() {
        return fecha_emision_boleta;
    }

    public void setFecha_emision_boleta(LocalDate fecha_emision_boleta) {
        this.fecha_emision_boleta = fecha_emision_boleta;
    }

    @Override
    public String toString() {
        return "Compra{" +
                "id_compra=" + id_compra +
                ", id_carrito=" + id_carrito +
                ", id_boleta=" + id_boleta +
                ", id_medio=" + id_medio +
                ", cantidad_comprado=" + cantidad_comprado +
                ", fecha_compra=" + fecha_compra +
                ", fecha_emision_boleta=" + fecha_emision_boleta +
                '}';
    }
}