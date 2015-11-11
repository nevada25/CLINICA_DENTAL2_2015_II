package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Compra generated by hbm2java
 */
public class Compra  implements java.io.Serializable {


     private int idCompra;
     private Proveedor proveedor;
     private Date fecha;
     private String serieFac;
     private double subtotal;
     private Double descuento;
     private Double igv;
     private Double total;
     private Set detalleCompras = new HashSet(0);

    public Compra() {
    }

	
    public Compra(int idCompra, Proveedor proveedor, Date fecha, double subtotal) {
        this.idCompra = idCompra;
        this.proveedor = proveedor;
        this.fecha = fecha;
        this.subtotal = subtotal;
    }
    public Compra(int idCompra, Proveedor proveedor, Date fecha, String serieFac, double subtotal, Double descuento, Double igv, Double total, Set detalleCompras) {
       this.idCompra = idCompra;
       this.proveedor = proveedor;
       this.fecha = fecha;
       this.serieFac = serieFac;
       this.subtotal = subtotal;
       this.descuento = descuento;
       this.igv = igv;
       this.total = total;
       this.detalleCompras = detalleCompras;
    }
   
    public int getIdCompra() {
        return this.idCompra;
    }
    
    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }
    public Proveedor getProveedor() {
        return this.proveedor;
    }
    
    public void setProveedor(Proveedor proveedor) {
        this.proveedor = proveedor;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public String getSerieFac() {
        return this.serieFac;
    }
    
    public void setSerieFac(String serieFac) {
        this.serieFac = serieFac;
    }
    public double getSubtotal() {
        return this.subtotal;
    }
    
    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
    public Double getDescuento() {
        return this.descuento;
    }
    
    public void setDescuento(Double descuento) {
        this.descuento = descuento;
    }
    public Double getIgv() {
        return this.igv;
    }
    
    public void setIgv(Double igv) {
        this.igv = igv;
    }
    public Double getTotal() {
        return this.total;
    }
    
    public void setTotal(Double total) {
        this.total = total;
    }
    public Set getDetalleCompras() {
        return this.detalleCompras;
    }
    
    public void setDetalleCompras(Set detalleCompras) {
        this.detalleCompras = detalleCompras;
    }




}

