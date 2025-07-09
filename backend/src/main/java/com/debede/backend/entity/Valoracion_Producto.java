package com.debede.backend.entity;

import java.time.LocalDate;

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
@Table(name = "valoracion_producto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Valoracion_Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_valoracion;
    private Long id_producto;
    private String comentario_valoracion;
    private LocalDate fecha_valoracion;
    private int puntuacion;
}