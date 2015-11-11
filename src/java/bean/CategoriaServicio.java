package bean;

public class CategoriaServicio implements java.io.Serializable {

    private int id_cat_serv;
    private String nombre_cat_serv;

    public CategoriaServicio() {
    }

    public int getId_cat_serv() {
        return id_cat_serv;
    }

    public void setId_cat_serv(int id_cat_serv) {
        this.id_cat_serv = id_cat_serv;
    }

    public String getNombre_cat_serv() {
        return nombre_cat_serv;
    }

    public void setNombre_cat_serv(String nombre_cat_serv) {
        this.nombre_cat_serv = nombre_cat_serv;
    }

}
