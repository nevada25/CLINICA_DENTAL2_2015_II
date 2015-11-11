/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.util.List;

/**
 *
 * @author Luis Lavado
 */
public interface Hist_ante_personalDao {
    public boolean  agregarDiagnosticoPre( );

    public boolean actualizarDiagnosticoPre( );
    public boolean eliminarDiagnosticoPre(int id_diagnosticoPre);
}
