package entidad;
// Generated 10/11/2015 02:03:01 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Persona generated by hbm2java
 */
public class Persona  implements java.io.Serializable {


     private int idPersona;
     private GradoInstruccion gradoInstruccion;
     private Ocupacion ocupacion;
     private TipoDoc tipoDoc;
     private Ubigeo ubigeoByIdUbigeoNac;
     private Ubigeo ubigeoByIdUbigeoAct;
     private String nombre;
     private String nombres;
     private String apepat;
     private String apemat;
     private Date fechaNac;
     private String correo;
     private String celular;
     private String telefono;
     private String sexo;
     private String direccion;
     private String paginaWeb;
     private String estado;
     private byte[] fotoPersona;
     private String nroDoc;
     private Set usuarios = new HashSet(0);
     private Set empleados = new HashSet(0);
     private Set clientes = new HashSet(0);
     private Set proveedors = new HashSet(0);

    public Persona() {
    }

	
    public Persona(int idPersona) {
        this.idPersona = idPersona;
    }
    public Persona(int idPersona, GradoInstruccion gradoInstruccion, Ocupacion ocupacion, TipoDoc tipoDoc, Ubigeo ubigeoByIdUbigeoNac, Ubigeo ubigeoByIdUbigeoAct, String nombre, String nombres, String apepat, String apemat, Date fechaNac, String correo, String celular, String telefono, String sexo, String direccion, String paginaWeb, String estado, byte[] fotoPersona, String nroDoc, Set usuarios, Set empleados, Set clientes, Set proveedors) {
       this.idPersona = idPersona;
       this.gradoInstruccion = gradoInstruccion;
       this.ocupacion = ocupacion;
       this.tipoDoc = tipoDoc;
       this.ubigeoByIdUbigeoNac = ubigeoByIdUbigeoNac;
       this.ubigeoByIdUbigeoAct = ubigeoByIdUbigeoAct;
       this.nombre = nombre;
       this.nombres = nombres;
       this.apepat = apepat;
       this.apemat = apemat;
       this.fechaNac = fechaNac;
       this.correo = correo;
       this.celular = celular;
       this.telefono = telefono;
       this.sexo = sexo;
       this.direccion = direccion;
       this.paginaWeb = paginaWeb;
       this.estado = estado;
       this.fotoPersona = fotoPersona;
       this.nroDoc = nroDoc;
       this.usuarios = usuarios;
       this.empleados = empleados;
       this.clientes = clientes;
       this.proveedors = proveedors;
    }
   
    public int getIdPersona() {
        return this.idPersona;
    }
    
    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }
    public GradoInstruccion getGradoInstruccion() {
        return this.gradoInstruccion;
    }
    
    public void setGradoInstruccion(GradoInstruccion gradoInstruccion) {
        this.gradoInstruccion = gradoInstruccion;
    }
    public Ocupacion getOcupacion() {
        return this.ocupacion;
    }
    
    public void setOcupacion(Ocupacion ocupacion) {
        this.ocupacion = ocupacion;
    }
    public TipoDoc getTipoDoc() {
        return this.tipoDoc;
    }
    
    public void setTipoDoc(TipoDoc tipoDoc) {
        this.tipoDoc = tipoDoc;
    }
    public Ubigeo getUbigeoByIdUbigeoNac() {
        return this.ubigeoByIdUbigeoNac;
    }
    
    public void setUbigeoByIdUbigeoNac(Ubigeo ubigeoByIdUbigeoNac) {
        this.ubigeoByIdUbigeoNac = ubigeoByIdUbigeoNac;
    }
    public Ubigeo getUbigeoByIdUbigeoAct() {
        return this.ubigeoByIdUbigeoAct;
    }
    
    public void setUbigeoByIdUbigeoAct(Ubigeo ubigeoByIdUbigeoAct) {
        this.ubigeoByIdUbigeoAct = ubigeoByIdUbigeoAct;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getNombres() {
        return this.nombres;
    }
    
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    public String getApepat() {
        return this.apepat;
    }
    
    public void setApepat(String apepat) {
        this.apepat = apepat;
    }
    public String getApemat() {
        return this.apemat;
    }
    
    public void setApemat(String apemat) {
        this.apemat = apemat;
    }
    public Date getFechaNac() {
        return this.fechaNac;
    }
    
    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }
    public String getCorreo() {
        return this.correo;
    }
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getCelular() {
        return this.celular;
    }
    
    public void setCelular(String celular) {
        this.celular = celular;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getSexo() {
        return this.sexo;
    }
    
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    public String getPaginaWeb() {
        return this.paginaWeb;
    }
    
    public void setPaginaWeb(String paginaWeb) {
        this.paginaWeb = paginaWeb;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public byte[] getFotoPersona() {
        return this.fotoPersona;
    }
    
    public void setFotoPersona(byte[] fotoPersona) {
        this.fotoPersona = fotoPersona;
    }
    public String getNroDoc() {
        return this.nroDoc;
    }
    
    public void setNroDoc(String nroDoc) {
        this.nroDoc = nroDoc;
    }
    public Set getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Set usuarios) {
        this.usuarios = usuarios;
    }
    public Set getEmpleados() {
        return this.empleados;
    }
    
    public void setEmpleados(Set empleados) {
        this.empleados = empleados;
    }
    public Set getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Set clientes) {
        this.clientes = clientes;
    }
    public Set getProveedors() {
        return this.proveedors;
    }
    
    public void setProveedors(Set proveedors) {
        this.proveedors = proveedors;
    }




}


