package com.VicenteNieto.servicios;

import com.VicenteNieto.modelos.Cancion;
import com.VicenteNieto.repositorios.RepositorioCanciones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repositorio;

    public List<Cancion> obtenerTodasLasCanciones() {
        return (List<Cancion>) repositorio.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorio.findById(id).orElse(null);
    }

    public Cancion agregarCancion(Cancion cancion) {
        return repositorio.save(cancion);
    }

    // ✅ NUEVO MÉTODO
    public Cancion actualizaCancion(Cancion cancion) {
        return repositorio.save(cancion); 
    }
    
    public void eliminarCancion(Long id) {
    	repositorio.deleteById(id);
    }
    
}

