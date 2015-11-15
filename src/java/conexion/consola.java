package conexion;

import dao.ProductoDao;
import dao.Tipo_docDao;
import daoimpl.Tipo_docDaoImpl;
import dao.personadao;
import dao.usuariodao;
import daoimpl.ProductoDaoImpl;

import daoimpl.personadaoimpl;
import daoimpl.usuariodaoimpl;
import bean.Persona;
import bean.Producto;
import bean.TipoDoc;
import bean.Usuario;

import java.util.List;

/**
 *
 * @author NEVADA
 */
public class consola {
    public static void main(String[] args) {
        consola c=new consola();
//        c.mostrar();
//        c.personamos();
//        c.mostrarusu();
//        c.mostrar();
        c.consultardatosusuario();
// if (conexionprostgres.conectar() !=null){ 
//            System.out.println("CONEXION ACEPTADA");
//            
//        } else {
//                System.out.println("CONEXION ERRONEA");
//        }
    }
    
    public void consultardatosusuario(){
    usuariodao dao=new usuariodaoimpl();
    
////        for (Usuario ds : dao.consultardatosusua("L")) {
//            System.out.println("NOMBRE USUARIO:"+ds.getNombre_usuario()+"CLAVE:"+ds.getClave()+"PERSONA: "+ds.getNombre());
//        }
//    
//    
    
    }
    
    
    
    
    
    public void mostrar(){
        Tipo_docDao dao=new Tipo_docDaoImpl();
        List<TipoDoc> lista=dao.mostrartipo_doc();
        
        for (TipoDoc doc : lista) {
            System.out.println("\nID:"+doc.getId_tipo_doc()
                               +"\nNOMBRES: "+doc.getNombre_tipo_doc()
                               +"\nESTADO: "+doc.getEstado());
            
        } 
    
  
    
    }
    
    public void elimarpers(){
    personadao dao=new personadaoimpl();
    
        if (dao.eliminarpersona(3)) {
            System.out.println("SE ELIMINO CORRECTAMENTE");
        } else {
            System.out.println("ERRO");
        }
    
    }
    
    public void mostrprodi(){
        ProductoDao dao=new ProductoDaoImpl();
        
        for (Producto p : dao.mostrarProducto()) {
            
        }
    }
    public void mostrarpersona(){
    personadao dao=new personadaoimpl();
    
        for (Persona persona : dao.mostrarpersona(1)) {
            System.out.println("NOMBRES:"+persona.getNombre()+","+persona.getApepat()+","+persona.getApemat());
        }
    }
    public void mostrarusu(){
        usuariodao id=new usuariodaoimpl();
        
//        for (Usuario ad :id.mostrarusuario()) {
//            System.out.println("NOMBRES USUARIO: "+ad.getNombre_usuario()+"CLAVE: "+ad.getClave());
//        }
    
    }
    public void personamos(){
    personadao pes=new personadaoimpl();
    
       Persona sp=pes.datoper(1);
        System.out.println("ID:"+sp.getId_persona()+"\nNOMBRES:"+sp.getNombre());
        }
    }

    

