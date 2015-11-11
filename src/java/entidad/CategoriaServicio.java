package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * CategoriaServicio generated by hbm2java
 */
public class CategoriaServicio  implements java.io.Serializable {


     private int idCatServ;
     private String nombreCatServ;
     private Set servicios = new HashSet(0);

    public CategoriaServicio() {
    }

	
    public CategoriaServicio(int idCatServ) {
        this.idCatServ = idCatServ;
    }
    public CategoriaServicio(int idCatServ, String nombreCatServ, Set servicios) {
       this.idCatServ = idCatServ;
       this.nombreCatServ = nombreCatServ;
       this.servicios = servicios;
    }
   
    public int getIdCatServ() {
        return this.idCatServ;
    }
    
    public void setIdCatServ(int idCatServ) {
        this.idCatServ = idCatServ;
    }
    public String getNombreCatServ() {
        return this.nombreCatServ;
    }
    
    public void setNombreCatServ(String nombreCatServ) {
        this.nombreCatServ = nombreCatServ;
    }
    public Set getServicios() {
        return this.servicios;
    }
    
    public void setServicios(Set servicios) {
        this.servicios = servicios;
    }




}

