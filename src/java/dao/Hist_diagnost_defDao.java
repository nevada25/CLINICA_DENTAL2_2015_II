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
public interface Hist_diagnost_defDao {
    public boolean  agregarDiagnosticoDef(DiagnosticoDef diagnosticoDef);
    public List<DiagnosticoDef> mostrarDiagnosticoDef();
    public boolean actualizarDiagnosticoDef(DiagnosticoDef diagnosticoDef);
    public boolean eliminarDiagnosticoDef(int diagnosticoDef);
}
