/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import java.util.List;



/**
 *
 * @author VAIO
 */

public interface CrudDato <Dato> {
    
    public boolean create(Dato c);
    public boolean delete(Object key);
    public boolean update(Dato c);
    public Dato read(Object key);
    public List<Dato> readALL();

}

