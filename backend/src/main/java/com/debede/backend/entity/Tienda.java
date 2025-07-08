package com.debede.backend.entity;



import jakarta.persistence.*;

@Entity
@Table(name = "tienda")
public class Tienda {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_tienda;
    private Long id_rol;
    private String nombre_tienda;
    private String direccion_tienda;
    private String url_producto_imagen;

    public Tienda(Long id_tienda, Long id_rol, String nombre_tienda, String direccion_tienda, String url_prodducto_imagen) {
        this.id_tienda = id_tienda;
        this.id_rol = id_rol;
        this.nombre_tienda = nombre_tienda;
        this.direccion_tienda = direccion_tienda;
        this.url_producto_imagen = url_prodducto_imagen;
    }


    public Long getId_tienda() {
        return id_tienda;
    }

    public Long getId_rol() {
        return id_rol;
    }

    public String getNombre_tienda() {
        return nombre_tienda;
    }

    public String getDireccion_tienda() {
        return direccion_tienda;
    }

    public String getUrl_producto_imagen() {
        return url_producto_imagen;
    }

    public void setId_tienda(Long id_tienda) {
        this.id_tienda = id_tienda;
    }

    public void setId_rol(Long id_rol) {
        this.id_rol = id_rol;
    }

    public void setNombre_tienda(String nombre_tienda) {
        this.nombre_tienda = nombre_tienda;
    }

    public void setDireccion_tienda(String direccion_tienda) {
        this.direccion_tienda = direccion_tienda;
    }

    public void setUrl_prodducto_imagen(String url_prodducto_imagen) {
        this.url_producto_imagen = url_prodducto_imagen;
    }

    @Override
    public String toString() {
        return "Tienda{" +
                "id_tienda=" + id_tienda +
                ", id_rol=" + id_rol +
                ", nombre_tienda='" + nombre_tienda + '\'' +
                ", direccion_tienda='" + direccion_tienda + '\'' +
                ", url_producto_imagen='" + url_producto_imagen + '\'' +
                '}';
    }
}
