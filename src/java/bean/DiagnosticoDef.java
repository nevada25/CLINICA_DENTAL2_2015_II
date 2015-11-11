package bean;

public class DiagnosticoDef  implements java.io.Serializable {
    private int id_diagnostico_def;
    private String cie_10;
    private String descripci_n;

    public DiagnosticoDef() {
    }

    public int getId_diagnostico_def() {
        return id_diagnostico_def;
    }

    public void setId_diagnostico_def(int id_diagnostico_def) {
        this.id_diagnostico_def = id_diagnostico_def;
    }

    public String getCie_10() {
        return cie_10;
    }

    public void setCie_10(String cie_10) {
        this.cie_10 = cie_10;
    }

    public String getDescripci_n() {
        return descripci_n;
    }

    public void setDescripci_n(String descripci_n) {
        this.descripci_n = descripci_n;
    }




}


