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
@Table(name = "medio_de_pago")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Medio_De_Pago {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_medio;
    private Long id_carrito;
    private String nombre_medio;
    private String url_medio;
}