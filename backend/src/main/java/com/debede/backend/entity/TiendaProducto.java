package com.debede.backend.entity;

import java.io.Serializable;

import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;

@Entity
@Table(name = "tienda_producto")
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

    // Constructor JPA
    public TiendaProducto() {}

    // Constructor
    public TiendaProducto(Tienda tienda, Producto producto) {
        this.tienda = tienda;
        this.producto = producto;
        this.id = new TiendaProductoId(
            tienda.getId_tienda(),
            producto.getIdProducto()
        );
    }

    // Getters y Setters
    public Tienda getTienda() {
           return tienda;
    }
        
    public void setTienda(Tienda tienda) {
        this.tienda  = tienda;
    }
        
    public Producto getProducto() {
        return producto;
    }
        
    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    // Funcion para debug
    @Override
    public String toString() {
        return "Tienda_Producto{" +
                "id_tienda=" + tienda.getId_tienda() +
                ", id_producto=" + producto.getIdProducto() +
                '}';
    }

    // Abstraccion de la llave compuesta
    @Embeddable
    public static class TiendaProductoId implements Serializable{
        private Long id_tienda;
        private Long id_producto;

        // Constructor JPA
        public TiendaProductoId() {}

        // Constructor
        public TiendaProductoId(Long id_tienda, Long id_producto) {
            this.id_tienda = id_tienda;
            this.id_producto = id_producto;
        }

        // Getters y Setters
        public Long getIdTienda() {
               return id_tienda;
        }
            
        public void setIdTienda(Long id_tienda) {
            this.id_tienda = id_tienda;
        }
            
        public Long getIdProducto() {
            return id_producto;
        }
            
        public void setIdProducto(Long id_producto) {
            this.id_producto = id_producto;
        }
    }
}