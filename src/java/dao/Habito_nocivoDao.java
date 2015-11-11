/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.HabitoNocivo;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Habito_nocivoDao {
    public boolean  agregarHabitoNocivo(HabitoNocivo habitoNocivo);
    public List<HabitoNocivo> mostrarHabitoNocivo();
    public boolean actualizarHabitoNocivo(HabitoNocivo habitoNocivo);
    public boolean eliminarHabitoNocivo(int habitoNocivo);
}
