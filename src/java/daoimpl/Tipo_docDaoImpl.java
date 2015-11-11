package daoimpl;
import conexion.conexionprostgres;
import dao.Tipo_docDao;
import bean.TipoDoc;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class Tipo_docDaoImpl implements Tipo_docDao{
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
    public List<TipoDoc> mostrartipo_doc() {
       List<TipoDoc> lista = null;
        Statement st=null;
        ResultSet rs=null;
        TipoDoc tipo_doc=null;
        String query="SELECT id_tipo_doc, nombre_tipo_doc, estado FROM tipo_doc";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
           tipo_doc=new TipoDoc();
           tipo_doc.setId_tipo_doc(rs.getInt("id_tipo_doc"));
           tipo_doc.setNombre_tipo_doc(rs.getString("nombre_tipo_doc"));
           tipo_doc.setEstado(rs.getString("estado"));
           lista.add(tipo_doc);
        }
        cerrar();
        } catch (Exception e) {
             System.out.println("ERROR:"+e.getMessage());
            e.printStackTrace();
            cerrar();
        }

        return lista;
    }
}
    

