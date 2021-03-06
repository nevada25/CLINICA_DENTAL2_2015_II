package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1



/**
 * HistHabNoc generated by hbm2java
 */
public class HistHabNoc  implements java.io.Serializable {


     private int idHistHabNoc;
     private HabitoNocivo habitoNocivo;
     private HistoriaClinica historiaClinica;
     private String estado;

    public HistHabNoc() {
    }

	
    public HistHabNoc(int idHistHabNoc, HabitoNocivo habitoNocivo, HistoriaClinica historiaClinica) {
        this.idHistHabNoc = idHistHabNoc;
        this.habitoNocivo = habitoNocivo;
        this.historiaClinica = historiaClinica;
    }
    public HistHabNoc(int idHistHabNoc, HabitoNocivo habitoNocivo, HistoriaClinica historiaClinica, String estado) {
       this.idHistHabNoc = idHistHabNoc;
       this.habitoNocivo = habitoNocivo;
       this.historiaClinica = historiaClinica;
       this.estado = estado;
    }
   
    public int getIdHistHabNoc() {
        return this.idHistHabNoc;
    }
    
    public void setIdHistHabNoc(int idHistHabNoc) {
        this.idHistHabNoc = idHistHabNoc;
    }
    public HabitoNocivo getHabitoNocivo() {
        return this.habitoNocivo;
    }
    
    public void setHabitoNocivo(HabitoNocivo habitoNocivo) {
        this.habitoNocivo = habitoNocivo;
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


