package com.debede.backend.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "producto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_producto;
    @ManyToOne
    @JoinColumn(name = "id_carta", nullable = true)
    private Carta_TCG carta;
    @ManyToOne
    @JoinColumn(name = "id_juego_de_mesa", nullable = true)
    private Juego_De_Mesa juegoDeMesa;
    private String tipo_producto;
    private LocalDate fecha_subida;
    private Long cantidad_vendidas;
    private Integer precio;
    private String url_imagen;
}