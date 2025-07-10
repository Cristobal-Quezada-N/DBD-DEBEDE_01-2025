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
@Table(name = "listaDeseos_producto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ListaDeseos_Producto {
    @EmbeddedId
    private ListaDeseos_ProductoId id;

    @ManyToOne
    @MapsId("id_lista_deseos")
    @JoinColumn(name = "id_lista_deseos")
    private ListaDeseos listaDeseos;

    @ManyToOne
    @MapsId("id_producto")
    @JoinColumn(name = "id_producto")
    private Producto producto;

    public ListaDeseos_Producto(ListaDeseos listaDeseos, Producto producto) {
        this.listaDeseos = listaDeseos;
        this.producto = producto;
        this.id = new ListaDeseos_ProductoId(
                listaDeseos.getId_lista_deseos(),
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
    public static class ListaDeseos_ProductoId implements Serializable{
        private Long id_lista_deseos;
        private Long id_producto;
    }
}