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
public class RolDTO {
    
    private String idrol;
    private String nombrerol;
    private String acceso;

    public RolDTO() {
    }

    public RolDTO(String idrol, String nombrerol, String acceso) {
        this.idrol = idrol;
        this.nombrerol = nombrerol;
        this.acceso = acceso;
    }

    public String getIdrol() {
        return idrol;
    }

    public void setIdrol(String idrol) {
        this.idrol = idrol;
    }

    public String getNombrerol() {
        return nombrerol;
    }

    public void setNombrerol(String nombrerol) {
        this.nombrerol = nombrerol;
    }

    public String getAcceso() {
        return acceso;
    }

    public void setAcceso(String acceso) {
        this.acceso = acceso;
    }
    
}
