/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.DiagnosticoPre;
import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Diagnostico_preDao {
    public boolean  agregarDiagnosticoPre(DiagnosticoPre diagnosticoPre);
    public List<DiagnosticoPre> mostrarDiagnosticoPre();
    public boolean actualizarDiagnosticoPre(DiagnosticoPre diagnosticoPre);
    public boolean eliminarDiagnosticoPre(int id_diagnosticoPre);
}
