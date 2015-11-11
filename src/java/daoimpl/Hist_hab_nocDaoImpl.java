package daoimpl;

import conexion.conexionprostgres;
import dao.Hist_hab_nocDao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Hist_hab_nocDaoImpl implements Hist_hab_nocDao {
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
    public boolean agregarHist_hab_nocDao(Hist_hab_nocDao hist_hab_nocDao) {
         boolean estado = false;
        Statement st=null;
        String query="";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            conec().getAutoCommit();
            cerrar();
            estado = true;
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            restablecer();
            cerrar();
            estado = false;
        }

        return estado;
    }

    @Override
    public List<Hist_hab_nocDao> mostrarHist_hab_nocDao() {
            List<Hist_hab_nocDao> lista = null;
        Statement st=null;
        ResultSet rs=null;
         
        String query="";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
           
          
        }
        cerrar();
        } catch (Exception e) {
             System.out.println("ERROR:"+e.getMessage());
            e.printStackTrace();
            cerrar();
        }

        return lista;
    }

    @Override
    public boolean actualizarHist_hab_nocDao(Hist_hab_nocDao hist_hab_nocDao) {
         boolean estado = false;
        Statement st=null;
        String query="";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            conec().getAutoCommit();
            cerrar();
            estado = true;
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            restablecer();
            cerrar();
            estado = false;
        }

        return estado;
    }

    @Override
    public boolean eliminarHist_hab_nocDao(int hist_hab_nocDao) {
         boolean estado = false;
        Statement st=null;
        String query="";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            conec().getAutoCommit();
            cerrar();
            estado = true;
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            restablecer();
            cerrar();
            estado = false;
        }

        return estado;
    }
    
}
