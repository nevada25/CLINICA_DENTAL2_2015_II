package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1



/**
 * HistExamenClinico generated by hbm2java
 */
public class HistExamenClinico  implements java.io.Serializable {


     private int idHistExamenClinico;
     private ExamenClinico examenClinico;
     private HistoriaClinica historiaClinica;
     private String descripcion;
     private String estado;

    public HistExamenClinico() {
    }

	
    public HistExamenClinico(int idHistExamenClinico, ExamenClinico examenClinico, HistoriaClinica historiaClinica, String estado) {
        this.idHistExamenClinico = idHistExamenClinico;
        this.examenClinico = examenClinico;
        this.historiaClinica = historiaClinica;
        this.estado = estado;
    }
    public HistExamenClinico(int idHistExamenClinico, ExamenClinico examenClinico, HistoriaClinica historiaClinica, String descripcion, String estado) {
       this.idHistExamenClinico = idHistExamenClinico;
       this.examenClinico = examenClinico;
       this.historiaClinica = historiaClinica;
       this.descripcion = descripcion;
       this.estado = estado;
    }
   
    public int getIdHistExamenClinico() {
        return this.idHistExamenClinico;
    }
    
    public void setIdHistExamenClinico(int idHistExamenClinico) {
        this.idHistExamenClinico = idHistExamenClinico;
    }
    public ExamenClinico getExamenClinico() {
        return this.examenClinico;
    }
    
    public void setExamenClinico(ExamenClinico examenClinico) {
        this.examenClinico = examenClinico;
    }
    public HistoriaClinica getHistoriaClinica() {
        return this.historiaClinica;
    }
    
    public void setHistoriaClinica(HistoriaClinica historiaClinica) {
        this.historiaClinica = historiaClinica;
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


