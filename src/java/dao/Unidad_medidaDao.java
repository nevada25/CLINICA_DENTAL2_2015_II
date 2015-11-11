/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.UnidadMedida;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Unidad_medidaDao {
    public boolean  agregaridUnidadMedida(UnidadMedida unidadMedida);
    public List<UnidadMedida> mostrarusuario();
    public boolean actualizaridUnidadMedida(UnidadMedida unidadMedida);
    public boolean eliminaridUnidadMedida(int idUnidadMedida);
}
