package bean;

public class HistDiagnostDef  implements java.io.Serializable {
    private int id_hist_diagnost_def;
    private int id_historia_clinica;
    private int id_diagnostico_def;

    public HistDiagnostDef() {
    }

    public int getId_hist_diagnost_def() {
        return id_hist_diagnost_def;
    }

    public void setId_hist_diagnost_def(int id_hist_diagnost_def) {
        this.id_hist_diagnost_def = id_hist_diagnost_def;
    }

    public int getId_historia_clinica() {
        return id_historia_clinica;
    }

    public void setId_historia_clinica(int id_historia_clinica) {
        this.id_historia_clinica = id_historia_clinica;
    }

    public int getId_diagnostico_def() {
        return id_diagnostico_def;
    }

    public void setId_diagnostico_def(int id_diagnostico_def) {
        this.id_diagnostico_def = id_diagnostico_def;
    }


}


