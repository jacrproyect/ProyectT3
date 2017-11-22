/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import be.ClienteDTO;
import be.PersonaDTO;
import dao.ClienteDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.ClienteMO;
import model.Conectar;
import model.EmpleadoMO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author VAIO
 */

@Controller
@RequestMapping("Cliente.htm")
public class CtrCliente {
    
    
    ClienteDAO dao =  new ClienteDAO();
    
@RequestMapping(method = RequestMethod.GET)
    public ModelAndView RegEmp() {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("RegistrarCliente");
        mav.addObject("ClienteMO", new ClienteMO());
        return mav;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView saveContact(
            @ModelAttribute ClienteMO c,
            BindingResult result,
            SessionStatus status) {

   
        dao.create(new ClienteMO(c.getNombre_persona(), c.getApellido_persona(), c.getDni(), c.getTelefono(),
                c.getDepartamento(), c.getProvincia(), c.getDistrito(), c.getDistrito(), c.getCorreo(),
                c.getRuc(),c.getRazon_social(),c.getEstado()
        ));
        return new ModelAndView("redirect:/index.htm");
    }
    
    
    
    
    
    
    
}
