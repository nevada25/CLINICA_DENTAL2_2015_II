package daoimpl;
import bean.Privilegio;
import conexion.conexionprostgres;
import dao.usuariodao;
import bean.Usuario;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.HibernateUtil;
public class usuariodaoimpl implements usuariodao{
public Connection conec(){
Connection cn=conexionprostgres.conectar();
return cn;
}
 public void cerrar() {
        try {
           conec().close();
        } catch (Exception e) {
        }
    }
    public void guardar() {
        try {
            conec().commit();
        } catch (Exception e) {
        }
    }
public void restablecer() {
        try {
            conec().rollback();
        } catch (Exception e) {
        }
    }    

    @Override
    public Usuario validarusuario(String usuario, String password) {
         Usuario user=null;
        Session session=null;
        SessionFactory sf=null;
        
        try {
            sf=HibernateUtil.getSessionFactory();
            session=sf.openSession();
            Query query=session.createQuery("from Usuario where nombre_usuario='"+usuario+"' and clave='"+password+"' and estado='1'");
            user=(Usuario)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        
        return user;
    }

    @Override
    public boolean agragar_usuario(Usuario usuario) {
         
        boolean estado=false;
        SessionFactory sf=null;
        Session session=null;
        Transaction transaction=null;
        
        try {
            sf=HibernateUtil.getSessionFactory();
            session=sf.openSession();
            transaction=session.beginTransaction();
            session.save(usuario);
            transaction.commit();
            session.close();
            estado=true;
            
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
            session.close();
            estado=false;
        }
        
        return estado;
    }

    @Override
    public Usuario ObtenerUsuario(String usuario, String password) {
           
        Statement st = null;
        ResultSet rs= null;
        String query = "select * from usuario where login='"+usuario+"' and password='"+password+"' and estado='1'";
        Usuario u = null;
        
        try {
            st = conec().createStatement();
            rs=st.executeQuery(query);          
            while (rs.next()) {
                u= new Usuario();
                u.setIdUsuario(rs.getString("id_usuario"));
                u.setIdRol(rs.getString("id_rol"));
                u.setLogin(rs.getString("login"));
                u.setPassword(rs.getString("password"));             
                
            }
            cerrar();
        } catch (Exception e) {
            e.printStackTrace();
            cerrar();
        }
    return u;
    }

    @Override
    public List<Privilegio> ObtenerPrivUsuario(String usuario){
           Statement st = null;
        ResultSet rs= null;
        String query = "select priv.id_privilegio as id,priv.nombre as nombre from usuario u, "
                    + "rol r, privilegio priv,rol_privilegio rpr " 
                    + "where u.id_rol=r.id_rol and r.id_rol=rpr.id_rol and priv.id_privilegio=rpr.id_privilegio "
                    + "and u.id_usuario='"+usuario+"' and rpr.estado='1'";
        Privilegio priv = null;
        List<Privilegio> lista = new ArrayList<Privilegio>();
        
        try {
            st = conec().createStatement();
            rs=st.executeQuery(query);          
            while (rs.next()) {
                priv= new Privilegio();
                priv.setIdPrivilegio(rs.getString("id"));
                priv.setNombre(rs.getString("nombre"));
                lista.add(priv);
            }
            cerrar();
        } catch (Exception e) {
            e.printStackTrace();
            cerrar();
        }
    return lista;
    
    }
    }
    

    
    
