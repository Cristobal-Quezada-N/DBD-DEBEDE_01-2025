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
@Table(name = "carrito_usuario")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Carrito_Usuario {
    @EmbeddedId
    private Carrito_UsuarioId id;

    @ManyToOne
    @MapsId("id_carrito")
    @JoinColumn(name = "id_carrito")
    private Carrito carrito;

    @ManyToOne
    @MapsId("id_usuario")
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;

    public Carrito_Usuario(Carrito carrito, Usuario usuario) {
        this.carrito = carrito;
        this.usuario = usuario;
        this.id = new Carrito_UsuarioId(
                carrito.getId_carrito(),
                usuario.getId_usuario()
        );
    }

    @Embeddable
    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @EqualsAndHashCode
    @ToString
    public static class Carrito_UsuarioId implements Serializable{
        private Integer id_carrito;
        private Integer id_usuario;
    }
}