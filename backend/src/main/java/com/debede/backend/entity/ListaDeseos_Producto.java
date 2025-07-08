package com.debede.backend.entity;

import java.time.LocalDate;

import jakarta.persistence.*;


@Entity
@Table(name = "ListaDeseos_Producto")

public class ListaDeseos_Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_lista_deseos;
    private Long id_producto;

    public ListaDeseos_Producto(Long id_lista_deseos, Long id_producto) {
        this.id_lista_deseos = id_lista_deseos;
        this.id_producto = id_producto;
    }

    public Long getId_lista_deseos() {
        return id_lista_deseos;
    }

    public void setId_lista_deseos(Long id_lista_deseos) {
        this.id_lista_deseos = id_lista_deseos;
    }

    public Long getId_producto() {
        return id_producto;
    }

    public void setId_producto(Long id_producto) {
        this.id_producto = id_producto;
    }

    @Override
    public String toString() {
        return "ListaDeseos_Producto{" +
                "id_lista_deseos=" + id_lista_deseos +
                ", id_producto=" + id_producto +
                '}';
    }
}
