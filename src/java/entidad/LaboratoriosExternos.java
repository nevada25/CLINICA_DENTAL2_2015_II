package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1



/**
 * LaboratoriosExternos generated by hbm2java
 */
public class LaboratoriosExternos  implements java.io.Serializable {


     private int idLabExterno;
     private String nombreLabExt;
     private String descripcion;
     private String estado;

    public LaboratoriosExternos() {
    }

	
    public LaboratoriosExternos(int idLabExterno, String nombreLabExt, String estado) {
        this.idLabExterno = idLabExterno;
        this.nombreLabExt = nombreLabExt;
        this.estado = estado;
    }
    public LaboratoriosExternos(int idLabExterno, String nombreLabExt, String descripcion, String estado) {
       this.idLabExterno = idLabExterno;
       this.nombreLabExt = nombreLabExt;
       this.descripcion = descripcion;
       this.estado = estado;
    }
   
    public int getIdLabExterno() {
        return this.idLabExterno;
    }
    
    public void setIdLabExterno(int idLabExterno) {
        this.idLabExterno = idLabExterno;
    }
    public String getNombreLabExt() {
        return this.nombreLabExt;
    }
    
    public void setNombreLabExt(String nombreLabExt) {
        this.nombreLabExt = nombreLabExt;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }




}


