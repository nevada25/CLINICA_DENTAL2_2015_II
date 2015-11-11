package bean;

public class ExamenClinico  implements java.io.Serializable {

    private int id_examen_clinico;
    private String aplicado_en;

    public ExamenClinico() {
    }

    public int getId_examen_clinico() {
        return id_examen_clinico;
    }

    public void setId_examen_clinico(int id_examen_clinico) {
        this.id_examen_clinico = id_examen_clinico;
    }

    public String getAplicado_en() {
        return aplicado_en;
    }

    public void setAplicado_en(String aplicado_en) {
        this.aplicado_en = aplicado_en;
    }

    
    
}


