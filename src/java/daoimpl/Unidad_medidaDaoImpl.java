package daoimpl;
import dao.Unidad_medidaDao;
import bean.UnidadMedida;
import conexion.conexionprostgres;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class Unidad_medidaDaoImpl implements Unidad_medidaDao{
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
    public boolean agregaridUnidadMedida(UnidadMedida unidadMedida) {
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
    public List<UnidadMedida> mostrarusuario() {
        List<UnidadMedida> lista = null;
        Statement st=null;
        ResultSet rs=null;
        UnidadMedida unidadmedida=null;
        String query="SELECT idunidadmedida, id_persona FROM unidadmedida;";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
           unidadmedida=new UnidadMedida();
           unidadmedida.getId_unidad_medida();
           unidadmedida.getNombre_uni_med();
           lista.add(unidadmedida);
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
    public boolean actualizaridUnidadMedida(UnidadMedida unidadMedida) {
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
    public boolean eliminaridUnidadMedida(int idUnidadMedida) {
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
