/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.DetConsultaServ;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Det_consulta_servDao {
    public boolean  agregarDetConsultaServ(DetConsultaServ detConsultaServ);
    public List<DetConsultaServ> mostrarDetConsultaServ();
    public boolean actualizarDetConsultaServ(DetConsultaServ detConsultaServ);
    public boolean eliminarDetConsultaServ(int id_detConsultaServ);
}
