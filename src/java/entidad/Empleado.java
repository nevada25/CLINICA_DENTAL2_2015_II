package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Empleado generated by hbm2java
 */
public class Empleado  implements java.io.Serializable {


     private int idEmpleado;
     private Persona persona;
     private Set detConsultaServs = new HashSet(0);
     private Set citas = new HashSet(0);
     private Set consultas = new HashSet(0);

    public Empleado() {
    }

	
    public Empleado(int idEmpleado, Persona persona) {
        this.idEmpleado = idEmpleado;
        this.persona = persona;
    }
    public Empleado(int idEmpleado, Persona persona, Set detConsultaServs, Set citas, Set consultas) {
       this.idEmpleado = idEmpleado;
       this.persona = persona;
       this.detConsultaServs = detConsultaServs;
       this.citas = citas;
       this.consultas = consultas;
    }
   
    public int getIdEmpleado() {
        return this.idEmpleado;
    }
    
    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }
    public Persona getPersona() {
        return this.persona;
    }
    
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    public Set getDetConsultaServs() {
        return this.detConsultaServs;
    }
    
    public void setDetConsultaServs(Set detConsultaServs) {
        this.detConsultaServs = detConsultaServs;
    }
    public Set getCitas() {
        return this.citas;
    }
    
    public void setCitas(Set citas) {
        this.citas = citas;
    }
    public Set getConsultas() {
        return this.consultas;
    }
    
    public void setConsultas(Set consultas) {
        this.consultas = consultas;
    }




}


