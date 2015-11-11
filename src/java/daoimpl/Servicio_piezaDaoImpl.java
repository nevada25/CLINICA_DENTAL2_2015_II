package daoimpl;

import bean.ServicioPieza;
import conexion.conexionprostgres;
import dao.Servicio_piezaDao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Servicio_piezaDaoImpl implements Servicio_piezaDao{
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
    public boolean agregarServicioPieza(ServicioPieza servicioPieza) {
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
    public List<ServicioPieza> mostrarServicioPieza() {
         List<ServicioPieza> lista = null;
        Statement st=null;
        ResultSet rs=null;
        ServicioPieza   servicioPieza=null;
        String query="";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
            servicioPieza=new ServicioPieza();
          
            lista.add(servicioPieza);
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
    public boolean actualizarServicioPieza(ServicioPieza servicioPieza) {
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
    public boolean eliminarServicioPieza(int servicioPieza) {
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
