package com.cursojava.curso.models;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "juegos")
@ToString @EqualsAndHashCode
public class Usuario {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Getter @Setter @Column(name = "id_juegos")
    private Long id_juegos;

    @Getter @Setter @Column(name = "id_clasificacion")
    private Long id_clasificacion;

    @Getter @Setter @Column(name = "id_juegos_categoria")
    private Long id_juegos_categoria;

    @Getter @Setter @Column(name = "id_compra")
    private Long id_compra;

    @Getter @Setter @Column(name = "id_carro_compras")
    private Long id_carros_compras;

    @Getter @Setter @Column(name = "id_juego_plataforma")
    private Long id_juego_plataforma;

    @Getter @Setter @Column(name = "id_evento")
    private String id_evento;

    @Getter @Setter @Column(name = "nombre_j")
    private String nombre_j;

    @Getter @Setter @Column(name = "precio")
    private String precio;

    @Getter @Setter @Column(name = "distribuidor")
    private String distribuidor;




}
