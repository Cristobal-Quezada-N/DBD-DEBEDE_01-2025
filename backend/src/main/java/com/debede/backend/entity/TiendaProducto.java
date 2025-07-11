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
@Table(name = "tienda_producto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TiendaProducto {
    @EmbeddedId
    private TiendaProductoId id;

    @ManyToOne
    @MapsId("id_tienda")
    @JoinColumn(name = "id_tienda")
    private Tienda tienda;

    @ManyToOne
    @MapsId("id_producto")
    @JoinColumn(name = "id_producto")
    private Producto producto;

    // Constructor
    public TiendaProducto(Tienda tienda, Producto producto) {
        this.tienda = tienda;
        this.producto = producto;
        this.id = new TiendaProductoId(
            tienda.getId_tienda(),
            producto.getId_producto()
        );
    }

    // Abstraccion de la llave compuesta
    @Embeddable
    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @EqualsAndHashCode
    @ToString
    public static class TiendaProductoId implements Serializable{
        private Integer id_tienda;
        private Integer id_producto;
    }
}
