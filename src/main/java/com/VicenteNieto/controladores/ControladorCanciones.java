package com.VicenteNieto.controladores;
import com.VicenteNieto.modelos.Cancion;
import com.VicenteNieto.servicios.ServicioCanciones;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/canciones")
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicio;

    @GetMapping
    public String listarCanciones(Model model) {
        model.addAttribute("listaCanciones", servicio.obtenerTodasLasCanciones());
        return "canciones";
    }

    @GetMapping("/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }
    
    @GetMapping("/detalle/{id}")
    public String detalleCancion(@PathVariable Long id, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(id);
        if (cancion == null) {
            // Si no encuentra la canción, redirige a la lista o muestra error
            return "redirect:/canciones";
        }
        model.addAttribute("cancion", cancion);
        return "detallecancion"; // El nombre de la vista JSP sin .jsp
    }

    @PostMapping("/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion,
                                         BindingResult resultado,
                                         Model model) {
        if (resultado.hasErrors()) {
            return "agregarCancion.jsp";
        }
        servicio.agregarCancion(cancion);
        return "redirect:/canciones";
    }
    
    @GetMapping("/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable("idCancion") Long idCancion, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(idCancion);
        if (cancion != null) {
            model.addAttribute("cancion", cancion);
            return "editarcancion";
        } else {
            return "redirect:/canciones"; // Si no existe, vuelve a la lista
        }
    }

    @PostMapping("/procesa/editar/{idCancion}")
    public String procesarEditarCancion(@PathVariable("idCancion") Long idCancion,
                                        @Valid @ModelAttribute("cancion") Cancion cancion,
                                        BindingResult resultado,
                                        Model model) {
        if (resultado.hasErrors()) {
            return "editarcancion";
        }
        cancion.setId(idCancion); // 
        servicio.actualizaCancion(cancion);
        return "redirect:/canciones";
    }
    
    @DeleteMapping("/eliminar/{idCancion}")
    public String procesarEliminarCancion(@PathVariable Long idCancion) {
        servicio.eliminarCancion(idCancion);
        return "redirect:/canciones";
    }
    
}

