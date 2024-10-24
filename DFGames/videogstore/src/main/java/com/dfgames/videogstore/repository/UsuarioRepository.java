package com.dfgames.videogstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.dfgames.videogstore.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
}
