/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import bean.Privilegio;
import bean.Usuario;
import java.util.List;

/**
 *
 * @author NEVADA
 */
public interface usuariodao {
      public Usuario validarusuario (String usuario,String password);
    public boolean agragar_usuario(Usuario usuario);
    public Usuario ObtenerUsuario(String usuario,String password);
    public List<Privilegio> ObtenerPrivUsuario(String usuario);
}
