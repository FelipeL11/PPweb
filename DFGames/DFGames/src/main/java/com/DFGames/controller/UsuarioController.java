package com.dfgames.controller;

import com.dfgames.model.Usuario;
import com.dfgames.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.Optional;

@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @PostMapping("/registro")
    public ResponseEntity<Usuario> registrarUsuario(@RequestBody Usuario usuario) {
        Usuario nuevoUsuario = usuarioService.registrarUsuario(usuario);
        return ResponseEntity.ok(nuevoUsuario);
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody Usuario usuario) {
        Optional<Usuario> usuarioExistente = usuarioService.buscarPorEmail(usuario.getEmail());
        if (usuarioExistente.isPresent() && usuarioExistente.get().getPassword().equals(usuario.getPassword())) {
            return ResponseEntity.ok("Login exitoso");
        }
        return ResponseEntity.status(401).body("Credenciales incorrectas");
    }
}
