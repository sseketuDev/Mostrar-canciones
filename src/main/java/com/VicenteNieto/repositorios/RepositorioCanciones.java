package com.VicenteNieto.repositorios;

import com.VicenteNieto.modelos.Cancion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface RepositorioCanciones extends JpaRepository<Cancion, Long> {
    List<Cancion> findAll();
}