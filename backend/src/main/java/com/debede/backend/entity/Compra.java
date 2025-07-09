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
@Table(name = "compra")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Compra {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_compra;
    private Long id_carrito;
    private Long id_boleta;
    private Long id_medio;
    private Integer cantidad_comprado;
    private LocalDate fecha_compra;
    private LocalDate fecha_emision_boleta;
}