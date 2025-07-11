package com.debede.backend.entity;

import java.time.LocalDate;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import jakarta.persistence.Column;
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
@Table(name = "usuario")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_usuario;
    @ManyToOne
    @JoinColumn(name = "id_rol")
    private Rol rol;
    @ManyToOne
    @JoinColumn(name = "id_valoracion")
    private Valoracion valoracion;
    private String nombre_usuario;
    private String apellido;
    private String email;
    @Column(name = "contraseña", length = 64)
    @JdbcTypeCode(SqlTypes.CHAR)
    private String contraseña;
    private String direccion_usuario;
    private LocalDate fecha_de_registro;
}