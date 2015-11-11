package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Ubigeo generated by hbm2java
 */
public class Ubigeo  implements java.io.Serializable {


     private int idUbigeo;
     private String departamento;
     private String provincia;
     private String distrito;
     private String estado;
     private Set personasForIdUbigeoNac = new HashSet(0);
     private Set personasForIdUbigeoAct = new HashSet(0);

    public Ubigeo() {
    }

	
    public Ubigeo(int idUbigeo) {
        this.idUbigeo = idUbigeo;
    }
    public Ubigeo(int idUbigeo, String departamento, String provincia, String distrito, String estado, Set personasForIdUbigeoNac, Set personasForIdUbigeoAct) {
       this.idUbigeo = idUbigeo;
       this.departamento = departamento;
       this.provincia = provincia;
       this.distrito = distrito;
       this.estado = estado;
       this.personasForIdUbigeoNac = personasForIdUbigeoNac;
       this.personasForIdUbigeoAct = personasForIdUbigeoAct;
    }
   
    public int getIdUbigeo() {
        return this.idUbigeo;
    }
    
    public void setIdUbigeo(int idUbigeo) {
        this.idUbigeo = idUbigeo;
    }
    public String getDepartamento() {
        return this.departamento;
    }
    
    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
    public String getProvincia() {
        return this.provincia;
    }
    
    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    public String getDistrito() {
        return this.distrito;
    }
    
    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Set getPersonasForIdUbigeoNac() {
        return this.personasForIdUbigeoNac;
    }
    
    public void setPersonasForIdUbigeoNac(Set personasForIdUbigeoNac) {
        this.personasForIdUbigeoNac = personasForIdUbigeoNac;
    }
    public Set getPersonasForIdUbigeoAct() {
        return this.personasForIdUbigeoAct;
    }
    
    public void setPersonasForIdUbigeoAct(Set personasForIdUbigeoAct) {
        this.personasForIdUbigeoAct = personasForIdUbigeoAct;
    }




}

