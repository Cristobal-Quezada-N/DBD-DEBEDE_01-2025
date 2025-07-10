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
@Table(name = "juego_de_mesa")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Juego_De_Mesa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_juego_mesa;
    private String tipo_juego_mesa;
    private Integer stock_juegos_mesa;
    private String nombre_juegos_mesa;
    private String descripcion_juegos_mesa;
}