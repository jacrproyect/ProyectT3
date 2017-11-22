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
public class ClienteDTO extends PersonaDTO{

    
    private String ruc;
    private String razon_social;

    
    public ClienteDTO() {
    }

    public ClienteDTO(String ruc, String razon_social) {
        this.ruc = ruc;
        this.razon_social = razon_social;
    }

    public ClienteDTO(String ruc, String razon_social, int idpersona, String nombre_persona, String apellido_persona, String dni, int telefono, String departamento, String provincia, String distrito, String direccion, String correo) {
        super(idpersona, nombre_persona, apellido_persona, dni, telefono, departamento, provincia, distrito, direccion, correo);
        this.ruc = ruc;
        this.razon_social = razon_social;
    }

    public String getRuc() {
        return ruc;
    }

    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }
 
}
