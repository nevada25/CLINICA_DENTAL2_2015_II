package daoimpl;
import conexion.conexionprostgres;
import dao.usuariodao;
import bean.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
    public boolean agregarusuario(Usuario usuario) {
        boolean estado=false;
        Statement st=null;
        String query="INSERT INTO usuario(idusuario, usuario, contrasena)VALUES (null,'"+usuario.getNombre_usuario()+"','"+usuario.getClave()+"')";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            guardar();
            cerrar();
            estado=true;
        } catch (Exception e) {
            System.out.println("ERROR:"+e.getMessage());
            restablecer();
            cerrar();
            estado=false;
        }
        
        return estado;
    }
  @Override
    public List<Usuario> mostrarusuario() {
       List<Usuario> lista = null;
        Statement st=null;
        ResultSet rs=null;
        Usuario usuario=null;
        String query="SELECT id_usuario, id_persona, nombre_usuario, clave, rol, estado FROM usuario;";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
           usuario=new Usuario();
           usuario.setId_usuario(rs.getInt("id_usuario"));
           usuario.setId_persona(rs.getInt("id_persona"));
           usuario.setNombre_usuario(rs.getString("nombre_usuario"));
           usuario.setClave(rs.getString("clave"));
           usuario.setRol(rs.getString("rol"));
           usuario.setEstado(rs.getString("estado"));
           lista.add(usuario);
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
    public boolean actualizarusuario(Usuario usuario) {
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
    public boolean eliminarusuario(int id_usuario) {
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
    public Usuario Validarusuario(String user, String clave) {
         boolean estado = false;
        Statement st=null;
        String query="";
        Usuario usuario=null;
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

        return usuario;
    }
@Override
    public List<Usuario> consultardatosusua(String nombre_usuario) {
       List<Usuario> lista = null;
        Statement st=null;
        ResultSet rs=null;
        Usuario usuario=null;
        String query="SELECT usuario.nombre_usuario as user,usuario.clave as clave,"
                + "persona.nombre||' '||persona.apepat||' '||persona.apemat AS  persona " +
                  "FROM   public.persona, public.usuario " +
                  "WHERE  persona.id_persona = usuario.id_persona and usuario.nombre_usuario='"+nombre_usuario+"'";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
           usuario=new Usuario();
           
           usuario.setNombre(rs.getString("persona"));
           usuario.setNombre_usuario(rs.getString("user"));
           usuario.setClave(rs.getString("clave"));
           
           lista.add(usuario);
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
