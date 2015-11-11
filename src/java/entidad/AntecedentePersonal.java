package entidad;

public class AntecedentePersonal  implements java.io.Serializable {


     private int idAntePersonal;
     private String nombreAntecedente;
    

    public AntecedentePersonal() {
    }

	
    public AntecedentePersonal(int idAntePersonal, String nombreAntecedente) {
        this.idAntePersonal = idAntePersonal;
        this.nombreAntecedente = nombreAntecedente;
    }
   
    public int getIdAntePersonal() {
        return this.idAntePersonal;
    }
    
    public void setIdAntePersonal(int idAntePersonal) {
        this.idAntePersonal = idAntePersonal;
    }
    public String getNombreAntecedente() {
        return this.nombreAntecedente;
    }
    
    public void setNombreAntecedente(String nombreAntecedente) {
        this.nombreAntecedente = nombreAntecedente;
    }



}


