package com.debede.backend.entity;

import java.io.Serializable;

import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "carrito_producto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Carrito_Producto {
    @EmbeddedId
    private Carrito_ProductoId id;

    @ManyToOne
    @MapsId("id_carrito")
    @JoinColumn(name = "id_carrito")
    private Carrito carrito;

    @ManyToOne
    @MapsId("id_producto")
    @JoinColumn(name = "id_producto")
    private Producto producto;

    public Carrito_Producto(Carrito carrito, Producto producto) {
        this.carrito = carrito;
        this.producto = producto;
        this.id = new Carrito_ProductoId(
                carrito.getId_carrito(),
                producto.getId_producto()
        );
    }

    @Embeddable
    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @EqualsAndHashCode
    @ToString
    public static class Carrito_ProductoId implements Serializable{
        private Long id_carrito;
        private Long id_producto;
    }
}