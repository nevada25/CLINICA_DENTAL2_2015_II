package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1



/**
 * HistAntePersonal generated by hbm2java
 */
public class HistAntePersonal  implements java.io.Serializable {


     private int idHistAntePersonal;
     private AntecedentePersonal antecedentePersonal;
     private HistoriaClinica historiaClinica;
     private String estado;

    public HistAntePersonal() {
    }

    public HistAntePersonal(int idHistAntePersonal, AntecedentePersonal antecedentePersonal, HistoriaClinica historiaClinica, String estado) {
       this.idHistAntePersonal = idHistAntePersonal;
       this.antecedentePersonal = antecedentePersonal;
       this.historiaClinica = historiaClinica;
       this.estado = estado;
    }
   
    public int getIdHistAntePersonal() {
        return this.idHistAntePersonal;
    }
    
    public void setIdHistAntePersonal(int idHistAntePersonal) {
        this.idHistAntePersonal = idHistAntePersonal;
    }
    public AntecedentePersonal getAntecedentePersonal() {
        return this.antecedentePersonal;
    }
    
    public void setAntecedentePersonal(AntecedentePersonal antecedentePersonal) {
        this.antecedentePersonal = antecedentePersonal;
    }
    public HistoriaClinica getHistoriaClinica() {
        return this.historiaClinica;
    }
    
    public void setHistoriaClinica(HistoriaClinica historiaClinica) {
        this.historiaClinica = historiaClinica;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }




}


