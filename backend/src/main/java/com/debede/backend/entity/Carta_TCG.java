package com.debede.backend.entity;

public class Carta_TCG {
    private Long id_carta;
    private String nombre_carta;
    private String tipo_carta;
    private String descripcion_carta;
    private String rareza_carta;
    private String estado_carta;
    private Short ano_carta;
    private Integer stock_cartas;

    public Carta_TCG(Long id_carta, String nombre_carta, String tipo_carta, String descripcion_carta, String rareza_carta, String estado_carta, Short ano_carta, Integer stock_cartas) {
        this.id_carta = id_carta;
        this.nombre_carta = nombre_carta;
        this.tipo_carta = tipo_carta;
        this.descripcion_carta = descripcion_carta;
        this.rareza_carta = rareza_carta;
        this.estado_carta = estado_carta;
        this.ano_carta = ano_carta;
        this.stock_cartas = stock_cartas;
    }

    public Long getId_carta() {
        return id_carta;
    }

    public void setId_carta(Long id_carta) {
        this.id_carta = id_carta;
    }

    public String getNombre_carta() {
        return nombre_carta;
    }

    public void setNombre_carta(String nombre_carta) {
        this.nombre_carta = nombre_carta;
    }

    public String getTipo_carta() {
        return tipo_carta;
    }

    public void setTipo_carta(String tipo_carta) {
        this.tipo_carta = tipo_carta;
    }

    public String getDescripcion_carta() {
        return descripcion_carta;
    }

    public void setDescripcion_carta(String descripcion_carta) {
        this.descripcion_carta = descripcion_carta;
    }

    public String getRareza_carta() {
        return rareza_carta;
    }

    public void setRareza_carta(String rareza_carta) {
        this.rareza_carta = rareza_carta;
    }

    public String getEstado_carta() {
        return estado_carta;
    }

    public void setEstado_carta(String estado_carta) {
        this.estado_carta = estado_carta;
    }

    public Short getAno_carta() {
        return ano_carta;
    }

    public void setAno_carta(Short ano_carta) {
        this.ano_carta = ano_carta;
    }

    public Integer getStock_cartas() {
        return stock_cartas;
    }

    public void setStock_cartas(Integer stock_cartas) {
        this.stock_cartas = stock_cartas;
    }

    @Override
    public String toString() {
        return "Carta_TCG{" +
                "id_carta=" + id_carta +
                ", nombre_carta='" + nombre_carta + '\'' +
                ", tipo_carta='" + tipo_carta + '\'' +
                ", descripcion_carta='" + descripcion_carta + '\'' +
                ", rareza_carta='" + rareza_carta + '\'' +
                ", estado_carta='" + estado_carta + '\'' +
                ", ano_carta=" + ano_carta +
                ", stock_cartas=" + stock_cartas +
                '}';
    }
}