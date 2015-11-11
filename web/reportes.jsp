<%@page import="bean.Persona"%>
<%@page import="dao.personadao"%>
<%@page import="daoimpl.personadaoimpl"%>
<%@include file="cabeza.jsp" %>
<%  
personadao so=new personadaoimpl();
%>
<div class="panel panel-default" style="margin-top: -110px;">
       <%--CABEZA---%>
	<div class="panel-heading">
            <h1 style="text-align: center;">REPORTES CLIENTE</h1>
	</div>
        <%---CUERPO---%>
	<div class="panel-body">
	<%
        
        
        for(Persona per:so.mostrarpersona())
        {
            
       
        %>
        
        <div class="searchable-container">
            <div class="items col-xs-12 col-sm-6 col-md-6 col-lg-6 clearfix">
               <div class="info-block block-info clearfix">
                    <div class="square-box pull-left container ">
                       
                     <img src="" alt="..." class="img-rounded">
                       
                    </div>
                    <h5>CLIENTE N°<%=per.getId_persona()%></h5>
                    <h4>NOMBRES:<%=per.getNombre()%></h4>
                    <p>APELLIDOS: <%= per.getApepat()%>  <%=per.getApemat()%></p>
                    <span>CELULAR: <%=per.getCelular()%></span>
                    <div  style="text-align: center;">
                        <button type="button" class="btn btn-info btn-lg btn3d" data-toggle="modal" data-target="#mostrarcli" name="mostraidci" value="<%=per.getId_persona()%>" >
                         <span class="glyphicon glyphicon glyphicon-plus"></span>
                     </button>
                    </div>
                </div>
            </div>
            
        </div>
                         <div class="modal fade" id="mostrarcli" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="color: #101010;  padding: 100px; ">


        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   <div class="panel panel-info" >
            <div class="panel-heading">
                  
<h3 class="panel-title" style="text-align: center;"><%=per.getNombre()%> <%=per.getApepat()%> <%=per.getApepat()%></h3>
            </div>
            <div class="panel-body">
            
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="" class="img-circle img-responsive img2"> </div>
                
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>FECHA DE NACIMIENTO</td>
                        <td>Programming</td>
                      </tr>
                      <tr>
                        <td>Hire date:</td>
                        <td>06/23/2013</td>
                      </tr>
                      <tr>
                        <td>Date of Birth</td>
                        <td>01/24/1988</td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>Gender</td>
                        <td>Male</td>
                      </tr>
                        <tr>
                        <td><%=per.getDireccion()%></td>
                        <td>Metro Manila,Philippines</td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:info@support.com">info@support.com</a></td>
                      </tr>
                        <td>Phone Number</td>
                        <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
              
                </div>
              </div>
              
            </div>
               
          </div>
    
</div>  
         
                         
                         
                         
                         
                                         
               <%}%>         
          <%---fin CUERPO---%>
     

	</div>
</div>
 
<%@include file="pie.jsp" %>
       