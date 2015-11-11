/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.DiagnosticoDef;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Diagnostico_defDao {
    public boolean  agregardiagnosticoDef(DiagnosticoDef diagnosticoDef);
    public List<DiagnosticoDef> mostrardiagnosticoDef();
    public boolean actualizardiagnosticoDef(DiagnosticoDef diagnosticoDef);
    public boolean eliminardiagnosticoDef(int id_diagnosticoDef);
}
