package com.debede.backend.entity;

public class Medio_De_Pago {
    private Long id_medio;
    private Long id_carrito;
    private String nombre_medio;
    private String url_medio;

    public Medio_De_Pago(Long id_medio, Long id_carrito, String nombre_medio, String url_medio) {
        this.id_medio = id_medio;
        this.id_carrito = id_carrito;
        this.nombre_medio = nombre_medio;
        this.url_medio = url_medio;
    }

    public Long getId_medio() {
        return id_medio;
    }

    public void setId_medio(Long id_medio) {
        this.id_medio = id_medio;
    }

    public Long getId_carrito() {
        return id_carrito;
    }

    public void setId_carrito(Long id_carrito) {
        this.id_carrito = id_carrito;
    }

    public String getNombre_medio() {
        return nombre_medio;
    }

    public void setNombre_medio(String nombre_medio) {
        this.nombre_medio = nombre_medio;
    }

    public String getUrl_medio() {
        return url_medio;
    }

    public void setUrl_medio(String url_medio) {
        this.url_medio = url_medio;
    }

    @Override
    public String toString() {
        return "Medio_De_Pago{" +
                "id_medio=" + id_medio +
                ", id_carrito=" + id_carrito +
                ", nombre_medio='" + nombre_medio + '\'' +
                ", url_medio='" + url_medio + '\'' +
                '}';
    }
}