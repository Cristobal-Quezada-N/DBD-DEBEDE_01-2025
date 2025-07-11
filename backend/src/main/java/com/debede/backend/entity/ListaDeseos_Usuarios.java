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
@Table(name = "listadeseos_usuario")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ListaDeseos_Usuarios {
    @EmbeddedId
    private ListaDeseos_UsuariosId id;

    @ManyToOne
    @MapsId("id_lista_deseos")
    @JoinColumn(name = "id_lista_deseos")
    private ListaDeseos listaDeseos;

    @ManyToOne
    @MapsId("id_usuario")
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;

    public ListaDeseos_Usuarios(ListaDeseos listaDeseos, Usuario usuario) {
        this.listaDeseos = listaDeseos;
        this.usuario = usuario;
        this.id = new ListaDeseos_UsuariosId(
                listaDeseos.getId_lista_deseos(),
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
    public static class ListaDeseos_UsuariosId implements Serializable{
        private Integer id_lista_deseos;
        private Integer id_usuario;
    }
}