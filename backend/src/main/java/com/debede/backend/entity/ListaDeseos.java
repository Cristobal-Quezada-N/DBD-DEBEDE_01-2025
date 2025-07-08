package com.debede.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "ListaDeseos")
public class ListaDeseos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_lista_deseos;
    private int productos_en_descuento;
    private int cantidad_productos;

    public ListaDeseos(Long id_lista_deseos, int productos_en_descuento, int cantidad_productos) {
        this.id_lista_deseos = id_lista_deseos;
        this.productos_en_descuento = productos_en_descuento;
        this.cantidad_productos = cantidad_productos;
    }

    public ListaDeseos() {

    }

    public Long getId_lista_deseos() {
        return id_lista_deseos;
    }

    public void setId_lista_deseos(Long id_lista_deseos) {
        this.id_lista_deseos = id_lista_deseos;
    }

    public int getProductos_en_descuento() {
        return productos_en_descuento;
    }

    public void setProductos_en_descuento(int productos_en_descuento) {
        this.productos_en_descuento = productos_en_descuento;
    }

    public int getCantidad_productos() {
        return cantidad_productos;
    }

    public void setCantidad_productos(int cantidad_productos) {
        this.cantidad_productos = cantidad_productos;
    }

    @Override
    public String toString() {
        return "ListaDeseos{" +
                "id_lista_deseos=" + id_lista_deseos +
                ", productos_en_descuento=" + productos_en_descuento +
                ", cantidad_productos=" + cantidad_productos +
                '}';
    }
}