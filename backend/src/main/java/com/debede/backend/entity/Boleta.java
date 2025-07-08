package com.debede.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Boleta")
public class Boleta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_boleta;
    private String direccion_boleta;
    private Integer nombre_boleta;
    private String numero_boleta;

    public Boleta(Long id_boleta, String direccion_boleta, Integer nombre_boleta, String numero_boleta) {
        this.id_boleta = id_boleta;
        this.direccion_boleta = direccion_boleta;
        this.nombre_boleta = nombre_boleta;
        this.numero_boleta = numero_boleta;
    }

    public Boleta() {

    }

    public Long getId_boleta() {
        return id_boleta;
    }

    public void setId_boleta(Long id_boleta) {
        this.id_boleta = id_boleta;
    }

    public String getDireccion_boleta() {
        return direccion_boleta;
    }

    public void setDireccion_boleta(String direccion_boleta) {
        this.direccion_boleta = direccion_boleta;
    }

    public Integer getNombre_boleta() {
        return nombre_boleta;
    }

    public void setNombre_boleta(Integer nombre_boleta) {
        this.nombre_boleta = nombre_boleta;
    }

    public String getNumero_boleta() {
        return numero_boleta;
    }

    public void setNumero_boleta(String numero_boleta) {
        this.numero_boleta = numero_boleta;
    }

    @Override
    public String toString() {
        return "Boleta{" +
                "nombre_boleta=" + nombre_boleta +
                ", id_boleta=" + id_boleta +
                ", direccion_boleta='" + direccion_boleta + '\'' +
                ", numero_boleta='" + numero_boleta + '\'' +
                '}';
    }
}