package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Producto generated by hbm2java
 */
public class Producto  implements java.io.Serializable {


     private int idProducto;
     private UnidadMedida unidadMedida;
     private String nombreProducto;
     private Set detalleCompras = new HashSet(0);

    public Producto() {
    }

	
    public Producto(int idProducto, UnidadMedida unidadMedida) {
        this.idProducto = idProducto;
        this.unidadMedida = unidadMedida;
    }
    public Producto(int idProducto, UnidadMedida unidadMedida, String nombreProducto, Set detalleCompras) {
       this.idProducto = idProducto;
       this.unidadMedida = unidadMedida;
       this.nombreProducto = nombreProducto;
       this.detalleCompras = detalleCompras;
    }
   
    public int getIdProducto() {
        return this.idProducto;
    }
    
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
    public UnidadMedida getUnidadMedida() {
        return this.unidadMedida;
    }
    
    public void setUnidadMedida(UnidadMedida unidadMedida) {
        this.unidadMedida = unidadMedida;
    }
    public String getNombreProducto() {
        return this.nombreProducto;
    }
    
    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }
    public Set getDetalleCompras() {
        return this.detalleCompras;
    }
    
    public void setDetalleCompras(Set detalleCompras) {
        this.detalleCompras = detalleCompras;
    }




}


