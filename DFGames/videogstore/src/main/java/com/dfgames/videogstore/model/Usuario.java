package com.dfgames.videogstore.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "usuario")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long UsuarioId;
    @Column(name = "email_address",unique = true,nullable = false)
    private  String email;
    @Column(name = "password", nullable = false)
    private String password;
}
