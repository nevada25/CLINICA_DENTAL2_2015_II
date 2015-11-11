/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.ExamenClinico;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Examen_clinicoDao {
    public boolean  agregarExamenClinico(ExamenClinico examenClinico);
    public List<ExamenClinico> mostrarExamenClinico();
    public boolean actualizarExamenClinico(ExamenClinico examenClinico);
    public boolean eliminarExamenClinico(int id_examenClinico);
}
