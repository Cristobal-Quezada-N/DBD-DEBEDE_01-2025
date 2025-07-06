package com.debede.backend.entity;

import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
@Table(name = "producto")
public class Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_producto;
    private Long id_carta;
    private Long id_juego_de_mesa;
    private String tipo_producto;
    private LocalDate fecha_subida;
    private Long cantidad_vendidas;
    private Integer precio;
    private String url_imagen;

    public Long getIdProducto() {
        return id_producto;
    }

    public void setIdProducto(Long id_producto) {
        this.id_producto = id_producto;
    }

    public Long getIdCarta() {
        return id_carta;
    }

    public void setIdCarta(Long id_carta) {
        this.id_carta = id_carta;
    }
    public Long getIdJuegoMesa() {
        return id_juego_de_mesa;
    }

    public void setIdJuegoMesa(Long id_juego_de_mesa) {
        this.id_juego_de_mesa = id_juego_de_mesa;
    }
    public String getTipoProducto() {
        return tipo_producto;
    }

    public void setTipoProducto(String tipo_producto) {
        this.tipo_producto = tipo_producto;
    }
    public LocalDate getFechaSubida() {
        return fecha_subida;
    }

    public void setFechaSubida(LocalDate fecha_subida) {
        this.fecha_subida = fecha_subida;
    }
    public Long getCantidadVendidas() {
        return cantidad_vendidas;
    }

    public void setCantidadVendidas(Long cantidad_vendidas) {
        this.cantidad_vendidas = cantidad_vendidas;
    }
    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }
    public String getURLImagen() {
        return url_imagen;
    }

    public void setURLImagen(String url_imagen) {
        this.url_imagen = url_imagen;
    }
}
