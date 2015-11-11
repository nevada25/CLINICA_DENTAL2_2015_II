package bean;

public class TipoDoc  implements java.io.Serializable {

private int id_tipo_doc;
private String nombre_tipo_doc;
private String estado;

    public TipoDoc() {
    }

    public int getId_tipo_doc() {
        return id_tipo_doc;
    }

    public void setId_tipo_doc(int id_tipo_doc) {
        this.id_tipo_doc = id_tipo_doc;
    }

    public String getNombre_tipo_doc() {
        return nombre_tipo_doc;
    }

    public void setNombre_tipo_doc(String nombre_tipo_doc) {
        this.nombre_tipo_doc = nombre_tipo_doc;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

  



}


