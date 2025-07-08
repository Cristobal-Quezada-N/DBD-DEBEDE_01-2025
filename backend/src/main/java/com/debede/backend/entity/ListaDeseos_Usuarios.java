package com.debede.backend.entity;

public class ListaDeseos_Usuarios {
    private Long id_usuario;
    private Long id_lista_deseos;

    public ListaDeseos_Usuarios(Long id_usuario, Long id_lista_deseos) {
        this.id_usuario = id_usuario;
        this.id_lista_deseos = id_lista_deseos;
    }

    public Long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Long getId_lista_deseos() {
        return id_lista_deseos;
    }

    public void setId_lista_deseos(Long id_lista_deseos) {
        this.id_lista_deseos = id_lista_deseos;
    }

    @Override
    public String toString() {
        return "ListaDeseos_Usuarios{" +
                "id_usuario=" + id_usuario +
                ", id_lista_deseos=" + id_lista_deseos +
                '}';
    }
}