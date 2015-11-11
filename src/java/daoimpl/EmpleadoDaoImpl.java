package daoimpl;
import dao.EmpleadoDao;
import bean.Empleado;
import conexion.conexionprostgres;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class EmpleadoDaoImpl implements EmpleadoDao{
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
    public boolean agregarempleado(Empleado empleado) {
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
    public List<Empleado> mostrarempleado() {
        List<Empleado> lista = null;
        Statement st=null;
        ResultSet rs=null;
        Empleado empleado=null;
        String query="SELECT idempleado, id_persona FROM empleado;";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
           empleado=new Empleado();
           empleado.getIdempleado();
           empleado.getId_persona();
           lista.add(empleado);
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
    public boolean actualizarempleado(Empleado empleado) {
        boolean estado = false;
        Statement st=null;
        String query="UPDATE empleado SET id_persona="+empleado.getId_persona()+" WHERE idempleado="+empleado.getIdempleado()+"";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            guardar();
            cerrar();
        } catch (Exception e) {
             System.out.println("ERROR:"+e.getMessage());
            e.printStackTrace();
            cerrar();
        }
        return estado;
    }

    @Override
    public boolean eliminarempleado(int idEmpleado) {
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
    
