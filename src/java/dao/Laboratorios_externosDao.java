/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.LaboratoriosExternos;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Laboratorios_externosDao {
     public boolean  agregarLaboratoriosExternos(LaboratoriosExternos laboratoriosExternos);
    public List<LaboratoriosExternos> mostrarLaboratoriosExternos();
    public boolean actualizarLaboratoriosExternos(LaboratoriosExternos laboratoriosExternos);
    public boolean eliminarLaboratoriosExternos(int laboratoriosExternos);
}
