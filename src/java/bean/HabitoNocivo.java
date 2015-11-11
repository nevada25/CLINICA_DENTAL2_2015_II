package bean;

public class HabitoNocivo  implements java.io.Serializable {


    private int id_habito_nocivo;
    private String nombre_hab_noc;

    public HabitoNocivo() {
    }

    public int getId_habito_nocivo() {
        return id_habito_nocivo;
    }

    public void setId_habito_nocivo(int id_habito_nocivo) {
        this.id_habito_nocivo = id_habito_nocivo;
    }

    public String getNombre_hab_noc() {
        return nombre_hab_noc;
    }

    public void setNombre_hab_noc(String nombre_hab_noc) {
        this.nombre_hab_noc = nombre_hab_noc;
    }


}


