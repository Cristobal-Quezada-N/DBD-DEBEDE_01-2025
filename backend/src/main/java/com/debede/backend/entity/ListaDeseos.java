package com.debede.backend.entity;

public class ListaDeseos {
    private Long id_lista_deseos;
    private Integer productos_en_descuento;
    private Integer cantidad_productos;

    public ListaDeseos(Long id_lista_deseos, Integer productos_en_descuento, Integer cantidad_productos) {
        this.id_lista_deseos = id_lista_deseos;
        this.productos_en_descuento = productos_en_descuento;
        this.cantidad_productos = cantidad_productos;
    }

    public Long getId_lista_deseos() {
        return id_lista_deseos;
    }

    public void setId_lista_deseos(Long id_lista_deseos) {
        this.id_lista_deseos = id_lista_deseos;
    }

    public Integer getProductos_en_descuento() {
        return productos_en_descuento;
    }

    public void setProductos_en_descuento(Integer productos_en_descuento) {
        this.productos_en_descuento = productos_en_descuento;
    }

    public Integer getCantidad_productos() {
        return cantidad_productos;
    }

    public void setCantidad_productos(Integer cantidad_productos) {
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