package com.dfgames.service;

import com.dfgames.model.Compra;
import com.dfgames.model.Usuario;
import com.dfgames.repository.CompraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompraService {
    @Autowired
    private CompraRepository compraRepository;

    public List<Compra> listarComprasPorUsuario(Usuario usuario) {
        return compraRepository.findByUsuario(usuario);
    }

    public Compra registrarCompra(Compra compra) {
        return compraRepository.save(compra);
    }
}
