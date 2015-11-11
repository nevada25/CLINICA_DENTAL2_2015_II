/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.AntecedentePersonal;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Antecente_personalDao {
    public boolean  agregarantecedentePersonal(AntecedentePersonal antecedentePersonal);
    public List<AntecedentePersonal> mostrarantecedentePersonal();
    public boolean actualizarusuario(AntecedentePersonal antecedentePersonal);
    public boolean eliminarantecedentePersonal(int id_usuario);
}
