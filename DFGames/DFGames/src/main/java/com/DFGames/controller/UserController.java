package com.dfgames.controller;

import org.springframework.web.bind.annotation.*;
import com.dfgames.model.User;

@RestController
@RequestMapping("/api/users")
public class UserController {

    // Método para registrar un nuevo usuario
    @PostMapping("/register")
    public String registerUser(@RequestBody User user) {
        // Lógica para registrar el usuario
        return "Usuario registrado: " + user.getUsername();
    }

    // Método para iniciar sesión
    @PostMapping("/login")
    public String loginUser(@RequestBody User user) {
        // Lógica para iniciar sesión
        return "Usuario logueado: " + user.getUsername();
    }
}
