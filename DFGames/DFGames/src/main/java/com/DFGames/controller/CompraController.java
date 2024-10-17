package com.dfgames.controller;

import com.dfgames.model.Compra;
import com.dfgames.model.Usuario;
import com.dfgames.service.CompraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/compras")
public class CompraController {

    @Autowired
    private CompraService compraService;

    @PostMapping
    public ResponseEntity<Compra> registrarCompra(@RequestBody Compra compra) {
        Compra nuevaCompra = compraService.registrarCompra(compra);
        return ResponseEntity.ok(nuevaCompra);
    }

    @GetMapping("/usuario/{usuarioId}")
    public ResponseEntity<List<Compra>> listarCompras(@PathVariable Long usuarioId) {
        // Suponiendo que se busca un usuario previamente cargado
        Usuario usuario = new Usuario(); // Cargar usuario real
        usuario.setId(usuarioId);
        List<Compra> compras = compraService.listarComprasPorUsuario(usuario);
        return ResponseEntity.ok(compras);
    }
}
