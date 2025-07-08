package com.debede.backend.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

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

    // Constructor vacio para JPA
    public Producto() {}
    // Constructor para test o debug
    public Producto(Long id_producto, Long id_carta, Long id_juego_de_mesa, String tipo_producto, LocalDate fecha_subida, Long cantidad_vendidas, Integer precio, String url_imagen) {
        this.id_producto = id_producto;
        this.id_carta = id_carta;
        this.id_juego_de_mesa = id_juego_de_mesa;
        this.tipo_producto = tipo_producto;
        this.fecha_subida = fecha_subida;
        this.cantidad_vendidas = cantidad_vendidas;
        this.precio = precio;
        this.url_imagen = url_imagen;
    }
    
    // Getters y Setters
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

    // Funcion util para debug
    @Override
    public String toString() {
        return "Producto{" +
                "id_producto=" + id_producto +
                ", id_carta=" + id_carta +
                ", id_juego_de_mesa=" + id_juego_de_mesa +
                ", tipo_producto='" + tipo_producto + '\'' +
                ", fecha_subida=" + fecha_subida +
                ", cantidad_vendidas=" + cantidad_vendidas +
                ", precio=" + precio +
                ", url_imagen='" + url_imagen + '\'' +
                '}';
    }
}
