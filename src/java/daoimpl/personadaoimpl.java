package daoimpl;
import conexion.conexionprostgres;
import dao.personadao;
import bean.Persona;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class personadaoimpl implements personadao {
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
    public boolean agregarpersona(Persona person) {
        boolean estado = false;
        Statement st=null;
        String query="INSERT INTO persona(\n" +
"            id_persona, id_grado_instruccion, id_ocupacion, id_ubigeo_nac, id_ubigeo_act, id_tipo_doc, nombre,"
            + " nombres, apepat, apemat,fecha_nac, correo, celular, telefono, sexo, direccion, pagina_web,estado,"
            + " foto_persona, nro_doc)\n" +
"    VALUES (null,null,null,null,null,"+person.getId_tipo_doc()+","+person.getNombre()+",null,"+person.getApepat()+","+person.getApemat()+""
          + ","+person.getFecha_nac()+","+person.getCorreo()+","+person.getCelular()+",null,"+person.getSexo()+","+person.getDireccion()+","
                + "null,1,"+person.getFoto_pers()+","+person.getNro_doc()+");";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            conec().getAutoCommit();
            guardar();
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
    public List<Persona> mostrarpersona() {
        List<Persona> lista = null;
        Statement st=null;
        ResultSet rs=null;
        Persona persona=null;
        String query="SELECT * FROM persona";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
            persona=new Persona();
            persona.setId_persona(rs.getInt("id_persona"));
            persona.setId_grado_instruccion(rs.getInt("id_grado_instruccion"));
            persona.setId_ocupacion(rs.getInt("id_ocupacion"));
            persona.setId_ubigeo_nac(rs.getInt("id_ubigeo_nac"));
            persona.setId_ubigeo_act(rs.getInt("id_ubigeo_act"));
            persona.setId_tipo_doc(rs.getInt("id_tipo_doc"));
            persona.setNombre(rs.getString("nombre"));
            persona.setNombres(rs.getString("nombres"));
            persona.setApepat(rs.getString("apepat"));
            persona.setApemat(rs.getString("apemat"));
            persona.setFecha_nac(rs.getDate("fecha_nac"));
            persona.setCorreo(rs.getString("correo"));
            persona.setCelular(rs.getString("celular"));
            persona.setSexo(rs.getString("sexo"));
            persona.setDireccion(rs.getString("direccion"));
            persona.setPagina_web(rs.getString("pagina_web"));
            persona.setEstado(rs.getString("estado"));
            persona.setNro_doc(rs.getString("nro_doc"));
            persona.setFoto_pers(rs.getByte("foto_persona"));
            lista.add(persona);
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
    public boolean actualizarpersona(Persona persona) {
        boolean estado = false;
        Statement st=null;
        String query="UPDATE persona SET , id_grado_instruccion="+persona.getId_grado_instruccion()+", id_ocupacion="+persona.getId_ocupacion()+", id_ubigeo_nac="+persona.getId_ubigeo_nac()+",id_ubigeo_act="+persona.getId_ubigeo_act()+",\n" +
" id_tipo_doc="+persona.getId_tipo_doc()+", nombre="+persona.getNombre()+", nombres="+persona.getNombres()+", apepat="+persona.getApepat()+",apemat="+persona.getApemat()+", fecha_nac="+persona.getFecha_nac()+", correo="+persona.getCorreo()+", celular="+persona.getCelular()+", sexo="+persona.getSexo()+", \n" +
" direccion="+persona.getDireccion()+", pagina_web="+persona.getPagina_web()+", estado="+persona.getEstado()+", nro_doc="+persona.getNro_doc()+", foto_pers="+persona.getFoto_pers()+" WHERE id_persona="+persona.getId_persona()+";";
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
    public boolean eliminarpersona(int id) {
        boolean estado = false;
        Statement st=null;
        String query="DELETE FROM persona WHERE id_persona="+id+"";
        try {
            st=conec().createStatement();
            st.executeUpdate(query);
            guardar();
            cerrar();
            estado=true;
        } catch (Exception e) {
            System.out.println("ERROR:"+e.getMessage());
            cerrar();
        }

        return estado;
    }

    @Override
    public List<Persona> mostrarpersona(int id) {
       List<Persona> lista = null;
        Statement st=null;
        ResultSet rs=null;
        Persona persona=null;
        String query="SELECT * FROM persona where id_persona="+id+";";
        try {
        lista=new ArrayList<>();
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
              persona=new Persona();
            persona.setId_persona(rs.getInt("id_persona"));
            persona.setId_grado_instruccion(rs.getInt("id_grado_instruccion"));
            persona.setId_ocupacion(rs.getInt("id_ocupacion"));
            persona.setId_ubigeo_nac(rs.getInt("id_ubigeo_nac"));
            persona.setId_ubigeo_act(rs.getInt("id_ubigeo_act"));
            persona.setId_tipo_doc(rs.getInt("id_tipo_doc"));
            persona.setNombre(rs.getString("nombre"));
            persona.setNombres(rs.getString("nombres"));
            persona.setApepat(rs.getString("apepat"));
            persona.setApemat(rs.getString("apemat"));
            persona.setFecha_nac(rs.getDate("fecha_nac"));
            persona.setCorreo(rs.getString("correo"));
            persona.setCelular(rs.getString("celular"));
            persona.setSexo(rs.getString("sexo"));
            persona.setDireccion(rs.getString("direccion"));
            persona.setPagina_web(rs.getString("pagina_web"));
            persona.setEstado(rs.getString("estado"));
            persona.setNro_doc(rs.getString("nro_doc"));
            persona.setFoto_pers(rs.getByte("foto_persona"));
            lista.add(persona);
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
    public Persona datoper(int id) {

        Statement st = null;
        ResultSet rs = null;
        Persona persona = null;
        String query = "SELECT * FROM persona where id_persona="+id+"";
        System.out.println(query);
        try {
        
        st=conec().createStatement();
        rs=st.executeQuery(query);
        while(rs.next())
        {
            persona=new Persona();
            persona.setId_persona(rs.getInt("id_persona"));
            persona.setId_grado_instruccion(rs.getInt("id_grado_instruccion"));
            persona.setId_ocupacion(rs.getInt("id_ocupacion"));
            persona.setId_ubigeo_nac(rs.getInt("id_ubigeo_nac"));
            persona.setId_ubigeo_act(rs.getInt("id_ubigeo_act"));
            persona.setId_tipo_doc(rs.getInt("id_tipo_doc"));
            persona.setNombre(rs.getString("nombre"));
            persona.setNombres(rs.getString("nombres"));
            persona.setApepat(rs.getString("apepat"));
            persona.setApemat(rs.getString("apemat"));
            persona.setFecha_nac(rs.getDate("fecha_nac"));
            persona.setCorreo(rs.getString("correo"));
            persona.setCelular(rs.getString("celular"));
            persona.setSexo(rs.getString("sexo"));
            persona.setDireccion(rs.getString("direccion"));
            persona.setPagina_web(rs.getString("pagina_web"));
            persona.setEstado(rs.getString("estado"));
            persona.setNro_doc(rs.getString("nro_doc"));
            persona.setFoto_pers(rs.getByte("foto_pers"));
        
           
        }
        cerrar();
        } catch (Exception e) {
            System.out.println("ERROR:" + e.getMessage());
            e.printStackTrace();

            try {
                conec().close();
            } catch (Exception ec) {
            }
        }
        return persona;
    }

    @Override
    public List<Persona> mostrarpersonas(int id) {
        List<Persona> lista=null;
        Statement st=null;
        ResultSet rs=null;
        Persona alumo=null;
        String query="SELECT * from persona where id_persona="+id+"";
        try {
            lista = new ArrayList<>();
            st= conec().createStatement();
            rs=st.executeQuery(query);
            while (rs.next()) {
                
                alumo =new Persona();
                alumo.setId_persona(rs.getInt("id_persona"));
                alumo.setNombre(rs.getString("nombre"));
                alumo.setApepat(rs.getString("apepat"));
                lista.add(alumo);
            }
        } catch (Exception e) {
            System.out.println("ERROR:"+e.getMessage());
            e.printStackTrace();
            
            try {
                conec().close();
            } catch (Exception ec) {
            }
        }
        return lista;
}
}
