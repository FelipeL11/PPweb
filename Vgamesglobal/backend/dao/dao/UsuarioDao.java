package com.cursojava.curso.dao;

import com.cursojava.curso.models.Usuario;

import java.util.List;

public interface UsuarioDao  {

    List<Usuario> getjuegos();

    void eliminar(Long id_juegos);

    void registrar(Usuario id_juegos);

    juegos obtenerUsuarioPorCredenciales(Usuario juegos);
}
