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
@Table(name = "boleta_producto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Boleta_Producto {
    @EmbeddedId
    private Boleta_ProductoId id;

    @ManyToOne
    @MapsId("id_boleta")
    @JoinColumn(name = "id_boleta")
    private Boleta boleta;

    @ManyToOne
    @MapsId("id_producto")
    @JoinColumn(name = "id_producto")
    private Producto producto;

    public Boleta_Producto(Boleta boleta, Producto producto) {
        this.boleta = boleta;
        this.producto = producto;
        this.id = new Boleta_ProductoId(
                boleta.getId_boleta(),
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
    public static class Boleta_ProductoId implements Serializable{
        private Long id_boleta;
        private Long id_producto;
    }
}