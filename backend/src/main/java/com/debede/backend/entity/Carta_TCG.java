package com.debede.backend.entity;

import java.time.LocalDate;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

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
@Table(name = "carta_tcg")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Carta_TCG {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_carta;
    private String nombre_carta;
    private String tipo_carta;
    private String descripcion_carta;
    @JdbcTypeCode(SqlTypes.CHAR)
    private String rareza_carta;
    private String estado_carta;
    private LocalDate año_carta;
    private Integer stock_carta;
}