/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.HistoriaClinica;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Historia_clinicaDao {
    public boolean  agregarHistoriaClinica(HistoriaClinica historiaClinica);
    public List<HistoriaClinica> mostrarHistoriaClinica();
    public boolean actualizarHistoriaClinica(HistoriaClinica historiaClinica);
    public boolean eliminarHistoriaClinica(int historiaClinica);
}
