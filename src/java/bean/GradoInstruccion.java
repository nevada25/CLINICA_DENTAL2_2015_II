package bean;

public class GradoInstruccion  implements java.io.Serializable {
    private int id_grado_instruccion;
    private String nombre_grad_inst;
    private String estado;

    public GradoInstruccion() {
    }

    public int getId_grado_instruccion() {
        return id_grado_instruccion;
    }

    public void setId_grado_instruccion(int id_grado_instruccion) {
        this.id_grado_instruccion = id_grado_instruccion;
    }

    public String getNombre_grad_inst() {
        return nombre_grad_inst;
    }

    public void setNombre_grad_inst(String nombre_grad_inst) {
        this.nombre_grad_inst = nombre_grad_inst;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }


}


