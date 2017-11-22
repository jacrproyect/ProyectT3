/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.EmpleadoDAO;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.EmpleadoMO;
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
@RequestMapping("Empleado.htm")
public class CtrEmpleado {

    EmpleadoDAO e = new EmpleadoDAO();

    /*-------------------REGISTRAR EMPLEADO------------------------*/
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView RegEmp() {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("RegistrarEmpleado");
        mav.addObject("EmpleadoMO", new EmpleadoMO());
        return mav;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView saveContact(
            @ModelAttribute EmpleadoMO c,
            BindingResult result,
            SessionStatus status) {

        Date ahora = new Date();
        SimpleDateFormat formateador = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
        formateador.format(ahora);

        e.create(new EmpleadoMO(c.getNombre_persona(), c.getApellido_persona(), c.getDni(), c.getTelefono(),
                c.getDepartamento(), c.getProvincia(), c.getDistrito(), c.getDistrito(), c.getCorreo(),
                c.getSueldo(), c.getIdrol(), c.getUsuario(), c.getPassword(), ahora, c.getEstado()
        ));
        return new ModelAndView("redirect:/ListarEmpleado.htm");
    }

    /*----------elimnar---------------*/
    @RequestMapping(value = "/EliminarEmpleado.htm", method = RequestMethod.GET)
    public ModelAndView ElimEmp(HttpServletRequest request) {
        int cod = Integer.parseInt(request.getParameter("idPersona"));
        e.delete(cod);

        return new ModelAndView("redirect:/ListarEmpleado.htm");
    }

    /*-----------LISTAR EMPLEADO-----------*/
    @RequestMapping(value = "/ListarEmpleado.htm")
    public ModelAndView ListEmp(ModelAndView model) throws IOException {
        List<EmpleadoMO> ListarEmpleados = e.readALL();
        model.addObject("ListarEmpleados", ListarEmpleados);
        model.setViewName("ListarEmpleado");

        return model;
    }

    /*-----------ACTTUALIZAR EMPLEADO-----------*/
    
    
  @RequestMapping(value = "/ActualizarEmpleado.htm", method = RequestMethod.GET)
public ModelAndView editContact(HttpServletRequest request) {
    ModelAndView mav = new ModelAndView();
    int contactId = Integer.parseInt(request.getParameter("idPersona"));
    EmpleadoMO dato = e.read(contactId);
    mav.setViewName("ActualizarEmpleado");
    mav.addObject("EmpleadoMO", new EmpleadoMO(contactId, dato.getNombre_persona(),
                dato.getApellido_persona(), dato.getDni(), dato.getTelefono(),
                dato.getDepartamento(), dato.getProvincia(), dato.getDistrito(), dato.getDireccion(),
                dato.getCorreo(),dato.getSueldo(),dato.getIdrol(),dato.getNombre_rol(),dato.getEstado(),dato.getUsuario(),dato.getPassword()));
 
    return mav;
}

   
    @RequestMapping(value = "/ActualizarEmpleado.htm", method = RequestMethod.POST)
    public ModelAndView ActEmp(
            @ModelAttribute("EmpleadoMO") EmpleadoMO u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {

        String login = request.getParameter("idPersona");
        int id =  Integer.parseInt(login);
      
   
       String nombre_rol = request.getParameter("nombre_rol");
  
      
        if(nombre_rol.equals("Administracion")){
            
              u.setIdrol(1);
         
        }
       if(nombre_rol.equals("General")){
           
            u.setIdrol(2);
       }

       
        
        e.update(new EmpleadoMO(id,u.getNombre_persona(), u.getApellido_persona(), u.getDni(), u.getTelefono(), u.getDepartamento(),
                u.getProvincia(),u.getDistrito(),u.getDireccion(), u.getCorreo(),u.getSueldo(),u.getIdrol(),u.getEstado(),u.getUsuario(),u.getPassword()));
   
        
        return new ModelAndView("redirect:/ListarEmpleado.htm");

    }
   
}
