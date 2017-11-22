/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfaces.CrudDato;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import model.Conectar;
import model.EmpleadoMO;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author VAIO
 */
public class EmpleadoDAO implements CrudDato<EmpleadoMO> {

    private static final String SQL_INSERTPERSONA = "INSERT INTO persona (`Nombre`, `Apellido`, `DNI`, `Telefono`, `Departamento`, `Provincia`, `Distrito`, `Direccion`, `Correo`) VALUES (?, ?, ?,?, ?, ?, ?, ?, ?)";
    private static final String SQL_INSERTEMPLEADO = "INSERT INTO empleado (`Sueldo`, `persona_idPersona`, `rol_idRol`) VALUES (?,(select idPersona from persona order by idPersona desc limit 1), ?)";
    private static final String SQL_INSERTUSUARIO = "INSERT INTO usuario (`Usuario`, `Password`, `FechaReg`, `EstadoUsu`, `empleado_persona_idPersona`)  VALUES (?, ?, ?, ?,(select persona_idPersona from empleado order by persona_idPersona desc limit 1) )";

    private static final String SQL_UPDATEPERSONA = "UPDATE persona SET `Nombre` = ?, `Apellido` = ?, `DNI` = ?, `Telefono` = ?, `Departamento` = ?, `Provincia` = ?, `Distrito` = ?, `Direccion` = ?,`Correo` = ? WHERE `idPersona` = ?;";
    private static final String SQL_UPDATEEMPLEADO = "UPDATE empleado SET `Sueldo` = ?  , `rol_idRol` = ? WHERE `persona_idPersona` = ?;";
    private static final String SQL_UPDATEUSUARIO = "UPDATE usuario AS u INNER JOIN empleado AS e ON u.`empleado_persona_idPersona` = e.`persona_idPersona` SET u.`EstadoUsu` = ?,u.`Usuario` = ?,u.`Password` = ? WHERE  e.`persona_idPersona` = ?;";
    
    

    private static final String SQL_READ_ALL = "select p.`idPersona`,p.`Nombre`,p.`Apellido`,p.`DNI`,p.`Telefono`,p.`Departamento`,p.`Provincia`,\n"
            + " p.`Distrito`,p.`Direccion`,p.`Correo`,e.`Sueldo`,r.`NombreRol`,r.`idRol` from persona p inner join empleado e \n"
            + " on p.`idPersona` =  e.`persona_idPersona` inner join rol r on r.`idRol`= e.`rol_idRol` ;";
    
    


    private static final Conectar con = new Conectar();
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(con.conectar());

    @Override
    public boolean create(EmpleadoMO c) {

        jdbcTemplate.update(SQL_INSERTPERSONA, c.getNombre_persona(), c.getApellido_persona(), c.getDni(), c.getTelefono(), c.getDepartamento(),
                c.getProvincia(), c.getDistrito(), c.getDireccion(), c.getCorreo());
        jdbcTemplate.update(SQL_INSERTEMPLEADO, c.getSueldo(), c.getIdrol());
        jdbcTemplate.update(SQL_INSERTUSUARIO, c.getUsuario(), c.getPassword(), c.getFechreg(), c.getEstado());

        return true;

    }

    @Override
    public boolean delete(Object key) {
 
       throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(EmpleadoMO c) {
        jdbcTemplate.update(SQL_UPDATEPERSONA, c.getNombre_persona(), c.getApellido_persona(), c.getDni(), c.getDni(), c.getDepartamento(),
                c.getProvincia(), c.getDistrito(), c.getDireccion(), c.getCorreo(), c.getIdpersona());
        jdbcTemplate.update(SQL_UPDATEEMPLEADO, c.getSueldo(),c.getIdrol(),c.getIdpersona());
        jdbcTemplate.update(SQL_UPDATEUSUARIO, c.getEstado(),c.getUsuario(),c.getPassword(), c.getIdpersona());
        

        return true;
    }

    @Override
    public EmpleadoMO read(Object key) {
        int i = (int) key;
        final EmpleadoMO a = new EmpleadoMO();
        String sql = "select p.`idPersona`,p.`Nombre`,p.`Apellido`,p.`DNI`,p.`Telefono`,p.`Departamento`,p.`Provincia`,\n" +
"`Distrito`,p.`Direccion`,p.`Correo`,e.`Sueldo`,r.`NombreRol`,r.`idRol`,u.`Usuario`,u.`Password`,u.`EstadoUsu` \n" +
"from persona p inner join empleado e \n" +
"on p.`idPersona` =  e.`persona_idPersona` inner join rol r on r.`idRol`= e.`rol_idRol`  inner join usuario u\n" +
"on e.`persona_idPersona` = u.`empleado_persona_idPersona` where p.`idPersona`=" + i;

        return (EmpleadoMO) jdbcTemplate.query(sql, new ResultSetExtractor<EmpleadoMO>() {

            @Override
            public EmpleadoMO extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {

                    a.setIdpersona(rs.getInt("idPersona"));
                    a.setDni(rs.getString("DNI"));
                    a.setNombre_persona(rs.getString("Nombre"));
                    a.setApellido_persona(rs.getString("Apellido"));
                    a.setTelefono(Integer.parseInt(rs.getString("Telefono")));
                    a.setDepartamento(rs.getString("Departamento"));
                    a.setProvincia(rs.getString("Provincia"));
                    a.setDistrito(rs.getString("Distrito"));
                    a.setDireccion(rs.getString("Direccion"));
                    a.setCorreo(rs.getString("Correo"));
                    a.setSueldo(rs.getDouble("Sueldo"));
                    a.setNombre_rol(rs.getString("NombreRol"));
                    a.setIdrol(rs.getInt("idRol"));
                    a.setEstado(rs.getString("EstadoUsu"));
                    a.setUsuario(rs.getString("Usuario"));
                    a.setPassword(rs.getString("Password"));

                }
                return a;

            }

        });

    }

    @Override
    public List<EmpleadoMO> readALL() {
        List<EmpleadoMO> ListarEmpleados = jdbcTemplate.query(SQL_READ_ALL, new RowMapper<EmpleadoMO>() {

            @Override
            public EmpleadoMO mapRow(ResultSet rs, int rowNum) throws SQLException {
                EmpleadoMO e = new EmpleadoMO();
                e.setIdpersona(rs.getInt("idPersona"));
                e.setDni(rs.getString("DNI"));
                e.setNombre_persona(rs.getString("Nombre"));
                e.setApellido_persona(rs.getString("Apellido"));
                e.setIdrol(rs.getInt("idRol"));
                e.setNombre_rol(rs.getString("NombreRol"));

                return e;
            }

        });
        return ListarEmpleados;

    }
    
}
