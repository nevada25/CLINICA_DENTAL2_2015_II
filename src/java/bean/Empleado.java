package bean;

public class Empleado  implements java.io.Serializable {

private int idempleado;
private int id_persona;

    public Empleado() {
    }


    public int getId_persona() {
        return id_persona;
    }

    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    public int getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(int idempleado) {
        this.idempleado = idempleado;
    }

}


