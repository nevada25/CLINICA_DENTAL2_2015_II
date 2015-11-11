<%@page  import="java.sql.*" %>
<%@page  import="java.util.*" %>
<%@page  import="java.io.*" %>
<%@page  import="proy.modelo.conexion.ConectarOracle" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
    </head>
      <style>
	  
		</style>
    <body>
        <%
        out.println("EL AÑO RECOGIDO ES:'"+request.getParameter("anio")+"'");
        out.println("<br>EL MES RECOGIDO ES: '"+request.getParameter("mes")+"'");
        out.println("<br>EL DIA RECOGIDO ES: ' "+request.getParameter("dia")+"'");
        out.println("<br>EL calendario RECOGIDO ES : '"+request.getParameter("calendario")+"'");
        out.println("<br>LA HORA DE INICIO RECOGIDO ES : '"+request.getParameter("hora")+"'");
        out.println("<br>EL MINUTO ES: ' "+request.getParameter("minuto")+"'");
        out.println("<br>LA DURACION ES: '"+request.getParameter("duracion")+"'");
        out.println("<br>EL NOMBRE EVENTO ES: '"+request.getParameter("nombre")+"'");
        
        
        
        
         try{
            Statement stm =ConectarOracle.conectar().createStatement();
         
            stm.executeUpdate("insert into evento values(null,"+request.getParameter("calendario")+",'"+request.getParameter("nombre")+"',"+request.getParameter("anio")+","+request.getParameter("mes")+","+request.getParameter("dia")+","+request.getParameter("hora")+","+request.getParameter("minuto")+","+request.getParameter("segundo")+","+request.getParameter("duracion")+")");
                 
            stm.close();
                         
            }
            catch(Exception ed){
            out.println(ed.getMessage().toString());
            
            }
        
        %>
    </body>
</html>
