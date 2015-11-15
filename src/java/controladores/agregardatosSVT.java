/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import dao.personadao;
import daoimpl.personadaoimpl;
import bean.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NEVADA
 */
public class agregardatosSVT extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet agregardatos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet agregardatos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        personadao dao=new personadaoimpl();
                Persona person=new Persona();
		// Obtengo los datos de la peticion
                String mensaje="";
		String id_doc= request.getParameter("id_doc");id_doc = id_doc == null?"":id_doc;
                String nombre= request.getParameter("nombre");nombre = nombre == null?"":nombre;
                String apepat= request.getParameter("apepat");apepat = apepat == null?"":apepat;
                String apemat= request.getParameter("apemat");apemat = apemat == null?"":apemat;
                Date fecha_nac= Date.valueOf(request.getParameter("fecha_nac"));
                String correo= request.getParameter("correo");correo = correo == null?"":correo;
                String celular = request.getParameter("celular");celular = celular == null?"":celular;
                String sexo= request.getParameter("sexo");sexo = sexo == null?"":sexo;
                String direccion = request.getParameter("direccion"); direccion = direccion == null?"":direccion;
                String nro_doc = request.getParameter("nro_doc"); nro_doc = nro_doc == null?"":nro_doc;
                Byte foto_persona=Byte.parseByte(request.getParameter("foto_persona")) ; id_doc = id_doc == null?"":id_doc;
    

		// Compruebo que los campos del formulario tienen datos para añadir a la tabla
		if (!id_doc.equals("") &&  !nombre.equals("") && !apepat.equals("") && !apemat.equals("") && !fecha_nac.equals("") && !correo.equals("")  && !direccion.equals("")  && !celular.equals("") && !sexo.equals("") && !nro_doc.equals("") && !foto_persona.equals("")) {
			// Creo el objeto persona y lo añado al arrayList
                        int doc=Integer.parseInt(id_doc);
                      person.setId_tipo_doc(doc);
		      person.setNombre(nombre);
                      person.setApepat(apepat);
                      person.setApemat(apemat);
                      person.setFecha_nac(fecha_nac);
                      person.setCorreo(correo);
                      person.setCelular(celular);
                      person.setSexo(sexo);
                      person.setDireccion(direccion);
                      person.setNro_doc(nro_doc);
                      person.setFoto_pers(foto_persona);
                      if (dao.agregarpersona(person)) {
                          mensaje = "se inserto correctamente";
                      }
		
    }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
