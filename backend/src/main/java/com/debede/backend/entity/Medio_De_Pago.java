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
@Table(name = "medio_de_pago")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Medio_De_Pago {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_medio;
    @ManyToOne
    @JoinColumn(name = "id_carrito")
    private Carrito carrito;
    private String nombre_medio;
    @JdbcTypeCode(SqlTypes.CHAR)
    private String url_medio;
}
