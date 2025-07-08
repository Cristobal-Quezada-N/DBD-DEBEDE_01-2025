package com.debede.backend.entity;

public class Boleta {
    private Long id_boleta;
    private String direccion_boleta;
    private Integer valor_boleta;
    private Long numero_boleta;

    public Boleta(Long id_boleta, String direccion_boleta, Integer valor_boleta, Long numero_boleta) {
        this.id_boleta = id_boleta;
        this.direccion_boleta = direccion_boleta;
        this.valor_boleta = valor_boleta;
        this.numero_boleta = numero_boleta;
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

    public Integer getValor_boleta() {
        return valor_boleta;
    }

    public void setValor_boleta(Integer valor_boleta) {
        this.valor_boleta = valor_boleta;
    }

    public Long getNumero_boleta() {
        return numero_boleta;
    }

    public void setNumero_boleta(Long numero_boleta) {
        this.numero_boleta = numero_boleta;
    }

    @Override
    public String toString() {
        return "Boleta{" +
                "id_boleta=" + id_boleta +
                ", direccion_boleta='" + direccion_boleta + '\'' +
                ", valor_boleta=" + valor_boleta +
                ", numero_boleta=" + numero_boleta +
                '}';
    }
}