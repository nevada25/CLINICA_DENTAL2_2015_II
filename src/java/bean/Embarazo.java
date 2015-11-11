/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.Date;

/**
 *
 * @author NEVADA
 */
public class Embarazo {
   private int  id_embarazo;
   private int id_historia_clinica;
   private String nro_semanas;
   private Date ultimo_control; 
   private String trata_farma;

    public Embarazo() {
    }

    public int getId_embarazo() {
        return id_embarazo;
    }

    public void setId_embarazo(int id_embarazo) {
        this.id_embarazo = id_embarazo;
    }

    public int getId_historia_clinica() {
        return id_historia_clinica;
    }

    public void setId_historia_clinica(int id_historia_clinica) {
        this.id_historia_clinica = id_historia_clinica;
    }

    public String getNro_semanas() {
        return nro_semanas;
    }

    public void setNro_semanas(String nro_semanas) {
        this.nro_semanas = nro_semanas;
    }

    public Date getUltimo_control() {
        return ultimo_control;
    }

    public void setUltimo_control(Date ultimo_control) {
        this.ultimo_control = ultimo_control;
    }

    public String getTrata_farma() {
        return trata_farma;
    }

    public void setTrata_farma(String trata_farma) {
        this.trata_farma = trata_farma;
    }
   
   
   
}
