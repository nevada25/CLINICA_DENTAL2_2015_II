package bean;
import java.util.Date;

public class Contrato  implements java.io.Serializable {
    private int id_contrato;
    private int id_consulta;
    private Date fecha_consult;
    private Date fecha_registro;

    public Contrato() {
    }

    public int getId_contrato() {
        return id_contrato;
    }

    public void setId_contrato(int id_contrato) {
        this.id_contrato = id_contrato;
    }

    public int getId_consulta() {
        return id_consulta;
    }

    public void setId_consulta(int id_consulta) {
        this.id_consulta = id_consulta;
    }

    public Date getFecha_consult() {
        return fecha_consult;
    }

    public void setFecha_consult(Date fecha_consult) {
        this.fecha_consult = fecha_consult;
    }

    public Date getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

}


