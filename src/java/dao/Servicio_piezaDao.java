/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.ServicioPieza;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Servicio_piezaDao {
     public boolean  agregarServicioPieza(ServicioPieza servicioPieza);
    public List<ServicioPieza> mostrarServicioPieza();
    public boolean actualizarServicioPieza(ServicioPieza servicioPieza);
    public boolean eliminarServicioPieza(int servicioPieza);
}
