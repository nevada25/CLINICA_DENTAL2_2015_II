package bean;


import java.util.Date;


public class HistoriaClinica {
    private int id_historia_clinica;
    private int id_cliente;
    private String nro_historia;
    private String comentario;
    private String antecedentes_familiar;
    private Date fecha_reg;
    private Date hora_reg;
    private String responsable_apoderado;
    private String gmotivo_consulta;
    private String peso;
    private String talla;
    private String pa;
    private String estado;

    public HistoriaClinica() {
    }

    public int getId_historia_clinica() {
        return id_historia_clinica;
    }

    public void setId_historia_clinica(int id_historia_clinica) {
        this.id_historia_clinica = id_historia_clinica;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNro_historia() {
        return nro_historia;
    }

    public void setNro_historia(String nro_historia) {
        this.nro_historia = nro_historia;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getAntecedentes_familiar() {
        return antecedentes_familiar;
    }

    public void setAntecedentes_familiar(String antecedentes_familiar) {
        this.antecedentes_familiar = antecedentes_familiar;
    }

    public Date getFecha_reg() {
        return fecha_reg;
    }

    public void setFecha_reg(Date fecha_reg) {
        this.fecha_reg = fecha_reg;
    }

    public Date getHora_reg() {
        return hora_reg;
    }

    public void setHora_reg(Date hora_reg) {
        this.hora_reg = hora_reg;
    }

    public String getResponsable_apoderado() {
        return responsable_apoderado;
    }

    public void setResponsable_apoderado(String responsable_apoderado) {
        this.responsable_apoderado = responsable_apoderado;
    }

    public String getGmotivo_consulta() {
        return gmotivo_consulta;
    }

    public void setGmotivo_consulta(String gmotivo_consulta) {
        this.gmotivo_consulta = gmotivo_consulta;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public String getPa() {
        return pa;
    }

    public void setPa(String pa) {
        this.pa = pa;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }



}


