package bean;

import java.math.BigDecimal;

public class DetConsultaServ  implements java.io.Serializable {
    private int id_det_consul;
    private int id_servicio;
    private int id_cita;
    private int idempleado;
    private BigDecimal cantidad;
    private BigDecimal total;
    private String nro_laboratorio_int;
    private String motivo_consul;

    public DetConsultaServ() {
    }

    public int getId_det_consul() {
        return id_det_consul;
    }

    public void setId_det_consul(int id_det_consul) {
        this.id_det_consul = id_det_consul;
    }

    public int getId_servicio() {
        return id_servicio;
    }

    public void setId_servicio(int id_servicio) {
        this.id_servicio = id_servicio;
    }

    public int getId_cita() {
        return id_cita;
    }

    public void setId_cita(int id_cita) {
        this.id_cita = id_cita;
    }

    public int getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(int idempleado) {
        this.idempleado = idempleado;
    }

    public BigDecimal getCantidad() {
        return cantidad;
    }

    public void setCantidad(BigDecimal cantidad) {
        this.cantidad = cantidad;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public String getNro_laboratorio_int() {
        return nro_laboratorio_int;
    }

    public void setNro_laboratorio_int(String nro_laboratorio_int) {
        this.nro_laboratorio_int = nro_laboratorio_int;
    }

    public String getMotivo_consul() {
        return motivo_consul;
    }

    public void setMotivo_consul(String motivo_consul) {
        this.motivo_consul = motivo_consul;
    }

     


}


