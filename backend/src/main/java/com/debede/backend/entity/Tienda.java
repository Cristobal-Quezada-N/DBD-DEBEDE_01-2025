package com.debede.backend.entity;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

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
@Table(name = "tienda")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Tienda {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_tienda;
    @ManyToOne
    @JoinColumn(name = "id_rol")
    private Rol rol;
    private String nombre_tienda;
    private String direccion_tienda;
    @JdbcTypeCode(SqlTypes.CHAR)
    private String url_producto_imagen;
}