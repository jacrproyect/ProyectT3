/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfaces.CrudDato;
import java.util.List;
import model.ClienteMO;
import model.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author VAIO
 */
public class ClienteDAO implements CrudDato<ClienteMO>{

    
    private static final String SQL_INSERTPERSONA = "INSERT INTO persona (`Nombre`, `Apellido`, `DNI`, `Telefono`, `Departamento`, `Provincia`, `Distrito`, `Direccion`, `Correo`) VALUES (?, ?, ?,?, ?, ?, ?, ?, ?)";
    private static final String SQL_INSERTCLIENTE = "INSERT INTO cliente (`RUC`, `RazonSocial`, `persona_idPersona`, `estado`) VALUES (?, ?, (select idPersona from persona order by idPersona desc limit 1) , ?)";
    
        private static final Conectar con = new Conectar();
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(con.conectar());
    
    @Override
    public boolean create(ClienteMO c) {
        
        jdbcTemplate.update(SQL_INSERTPERSONA, c.getNombre_persona(), c.getApellido_persona(), c.getDni(), c.getTelefono(), c.getDepartamento(),
                c.getProvincia(), c.getDistrito(), c.getDireccion(), c.getCorreo());
        jdbcTemplate.update(SQL_INSERTCLIENTE, c.getRuc(), c.getRazon_social(),c.getEstado());

        return true;

    }

    @Override
    public boolean delete(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(ClienteMO c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ClienteMO read(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ClienteMO> readALL() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
}
