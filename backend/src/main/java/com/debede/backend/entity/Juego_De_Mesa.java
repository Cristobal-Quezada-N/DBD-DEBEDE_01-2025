package com.debede.backend.entity;

public class Juego_De_Mesa {
    private Long id_juego_mesa;
    private String tipo_juego_mesa;
    private Integer stock_juego_mesa;
    private String descripcion_juego_mesa;
    private String nombre_juego_mesa;

    public Juego_De_Mesa(Long id_juego_mesa, String tipo_juego_mesa, Integer stock_juego_mesa, String descripcion_juego_mesa, String nombre_juego_mesa) {
        this.id_juego_mesa = id_juego_mesa;
        this.tipo_juego_mesa = tipo_juego_mesa;
        this.stock_juego_mesa = stock_juego_mesa;
        this.descripcion_juego_mesa = descripcion_juego_mesa;
        this.nombre_juego_mesa = nombre_juego_mesa;
    }

    public Long getId_juego_mesa() {
        return id_juego_mesa;
    }

    public void setId_juego_mesa(Long id_juego_mesa) {
        this.id_juego_mesa = id_juego_mesa;
    }

    public String getTipo_juego_mesa() {
        return tipo_juego_mesa;
    }

    public void setTipo_juego_mesa(String tipo_juego_mesa) {
        this.tipo_juego_mesa = tipo_juego_mesa;
    }

    public Integer getStock_juego_mesa() {
        return stock_juego_mesa;
    }

    public void setStock_juego_mesa(Integer stock_juego_mesa) {
        this.stock_juego_mesa = stock_juego_mesa;
    }

    public String getDescripcion_juego_mesa() {
        return descripcion_juego_mesa;
    }

    public void setDescripcion_juego_mesa(String descripcion_juego_mesa) {
        this.descripcion_juego_mesa = descripcion_juego_mesa;
    }

    public String getNombre_juego_mesa() {
        return nombre_juego_mesa;
    }

    public void setNombre_juego_mesa(String nombre_juego_mesa) {
        this.nombre_juego_mesa = nombre_juego_mesa;
    }

    @Override
    public String toString() {
        return "Juego_De_Mesa{" +
                "id_juego_mesa=" + id_juego_mesa +
                ", tipo_juego_mesa='" + tipo_juego_mesa + '\'' +
                ", stock_juego_mesa=" + stock_juego_mesa +
                ", descripcion_juego_mesa='" + descripcion_juego_mesa + '\'' +
                ", nombre_juego_mesa='" + nombre_juego_mesa + '\'' +
                '}';
    }
}