package bean;

public class LaboratoriosExternos  implements java.io.Serializable {
  

     private int id_lab_externo;
     private String nombre_lab_ext;
     private String descripcion;
     private String estado;

    public LaboratoriosExternos() {
    }

    public int getId_lab_externo() {
        return id_lab_externo;
    }

    public void setId_lab_externo(int id_lab_externo) {
        this.id_lab_externo = id_lab_externo;
    }

    public String getNombre_lab_ext() {
        return nombre_lab_ext;
    }

    public void setNombre_lab_ext(String nombre_lab_ext) {
        this.nombre_lab_ext = nombre_lab_ext;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

 

}


