package com.debede.backend.entity;

import java.time.LocalDate;

public class Valoracion_Producto {
    private Long id_valoracion;
    private Long id_producto;
    private String comentario_valoracion;
    private LocalDate fecha_valoracion;
    private int puntuacion;

    public Valoracion_Producto(Long id_valoracion, Long id_producto, String comentario_valoracion, LocalDate fecha_valoracion, int puntuacion) {
        this.id_valoracion = id_valoracion;
        this.id_producto = id_producto;
        this.comentario_valoracion = comentario_valoracion;
        this.fecha_valoracion = fecha_valoracion;
        this.puntuacion = puntuacion;
    }

    public Long getId_valoracion() {
        return id_valoracion;
    }

    public void setId_valoracion(Long id_valoracion) {
        this.id_valoracion = id_valoracion;
    }

    public Long getId_producto() {
        return id_producto;
    }

    public void setId_producto(Long id_producto) {
        this.id_producto = id_producto;
    }

    public String getComentario_valoracion() {
        return comentario_valoracion;
    }

    public void setComentario_valoracion(String comentario_valoracion) {
        this.comentario_valoracion = comentario_valoracion;
    }

    public LocalDate getFecha_valoracion() {
        return fecha_valoracion;
    }

    public void setFecha_valoracion(LocalDate fecha_valoracion) {
        this.fecha_valoracion = fecha_valoracion;
    }

    public int getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }


    @Override
    public String toString() {
        return "Valoracion_Producto{" +
                "id_valoracion=" + id_valoracion +
                ", id_producto=" + id_producto +
                ", comentario_valoracion='" + comentario_valoracion + '\'' +
                ", fecha_valoracion=" + fecha_valoracion +
                ", puntuacion=" + puntuacion +
                '}';
    }
}