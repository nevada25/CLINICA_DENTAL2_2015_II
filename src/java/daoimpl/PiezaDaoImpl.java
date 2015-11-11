package daoimpl;

import bean.Pieza;
import conexion.conexionprostgres;
import dao.PiezaDao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PiezaDaoImpl implements PiezaDao{
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
    public boolean agregarPieza(Pieza pieza) {
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
    public List<Pieza> mostrarPieza() {
            List<Pieza> lista = null;
        Statement st=null;
        ResultSet rs=null;
        Pieza   pieza=null;
        String query="";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
            pieza=new Pieza();
          
            lista.add(pieza);
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
    public boolean actualizarPieza(Pieza pieza) {
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
    public boolean eliminarPieza(int pieza) {
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
