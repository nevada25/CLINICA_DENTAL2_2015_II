/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import bean.Usuario;
import java.util.List;

/**
 *
 * @author NEVADA
 */
public interface usuariodao {
    public boolean  agregarusuario(Usuario usuario);
    public List<Usuario> mostrarusuario();
    public boolean actualizarusuario(Usuario usuario);
    public boolean eliminarusuario(int id_usuario);
    public Usuario Validarusuario(String usuario,String contrasena);
    public List<Usuario> consultardatosusua(String nombre_usuario);
}
