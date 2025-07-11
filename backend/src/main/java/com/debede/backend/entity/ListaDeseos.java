package com.debede.backend.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "listadeseos")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ListaDeseos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_lista_deseos;
    private Integer productos_en_descuento;
    private Integer cantidad_productos;
}