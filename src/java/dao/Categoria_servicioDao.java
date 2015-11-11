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
public interface Categoria_servicioDao {
    public boolean  agregarservicio(Servicio servicio);
    public List<Servicio> mostrarservicio();
    public boolean actualizarservicio(Servicio servicio);
    public boolean eliminarservicio(int id_usuario);
}
