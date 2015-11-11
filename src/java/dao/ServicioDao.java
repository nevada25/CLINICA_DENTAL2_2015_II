/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Servicio;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface ServicioDao {
     public boolean  agregarServicio(Servicio servicio);
    public List<Servicio> mostrarServicio();
    public boolean actualizarServicio(Servicio servicio);
    public boolean eliminarServicio(int servicio);
}
