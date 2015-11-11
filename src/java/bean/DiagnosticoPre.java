package bean;

public class DiagnosticoPre  implements java.io.Serializable {

    private int id_diagnostico_pre;
    private int id_historia_clinica;
    private String descripcion;

    public DiagnosticoPre() {
    }

    public int getId_diagnostico_pre() {
        return id_diagnostico_pre;
    }

    public void setId_diagnostico_pre(int id_diagnostico_pre) {
        this.id_diagnostico_pre = id_diagnostico_pre;
    }

    public int getId_historia_clinica() {
        return id_historia_clinica;
    }

    public void setId_historia_clinica(int id_historia_clinica) {
        this.id_historia_clinica = id_historia_clinica;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}


