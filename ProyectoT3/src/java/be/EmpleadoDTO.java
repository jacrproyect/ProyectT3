/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

/**
 *
 * @author VAIO
 */
public class EmpleadoDTO extends PersonaDTO{
    
    private double sueldo;
    private int idrol;

    public EmpleadoDTO() {
    }

    public EmpleadoDTO(double sueldo, int idrol) {
        this.sueldo = sueldo;
        this.idrol = idrol;
    }

    public EmpleadoDTO(double sueldo, int idrol, int idpersona, String nombre_persona, String apellido_persona, String dni, int telefono, String departamento, String provincia, String distrito, String direccion, String correo) {
        super(idpersona, nombre_persona, apellido_persona, dni, telefono, departamento, provincia, distrito, direccion, correo);
        this.sueldo = sueldo;
        this.idrol = idrol;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    
    
}
