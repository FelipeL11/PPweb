package com.cursojava.curso.dao;

import com.cursojava.curso.models.Usuario;
import de.mkammerer.argon2.Argon2;
import de.mkammerer.argon2.Argon2Factory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
@Transactional
public class UsuarioDaoImp implements UsuarioDao {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    @Transactional
    public List<Usuario> getjuegos() {
        String query = "FROM Usuario";
        return entityManager.createQuery(query).getResultList();
    }

    @Override
    public void eliminar(Long id_juegos) {
        Usuario juegos = entityManager.find(Usuario.class, id_juegos);
        entityManager.remove(juegos);
    }

    @Override
    public void registrar(Usuario juegos) {
        entityManager.merge(juegos);
    }

    @Override
    public Usuario obtenerUsuarioPorCredenciales(Usuario juegos) {
        String query = "FROM Usuario WHERE id_juegos = :id_juegos";
        List<Usuario> lista = entityManager.createQuery(query)
                .setParameter("id_juegos", usuario.getid_juegos())
                .getResultList();

    }

}
