<%@page import="dao.personadao"%>
<%@page import="bean.Persona"%>
<%@page import="bean.Usuario"%>
<%@page import="daoimpl.usuariodaoimpl"%>
<%@page import="daoimpl.personadaoimpl"%>
<%@page import="dao.usuariodao"%>
<style>
             div.modal-content,#usua{
                 background:url(img/image.jpg) #05AE0E;
                 border-radius: 0;
                 width: 450px;
                 margin-top: 10px;
                 padding: -300px;
                 height: 650px;
                 text-align: center;
                 font-weight:bolder;
                 color:white;
                 border-radius: 4em;
             }
             
            
</style>
   
    <!-- ACTUALIZAR DATOS DE USUARIO-->    
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <center>
        <div class="modal-dialog" id="usua" role="document" >
    <div class="modal-content" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="titulo">ACTUALIZAR USUARIO</h3>
      </div>
      <div class="modal-body">
         <%
            usuariodao dao=new usuariodaoimpl();
            for(Usuario usa:dao.consultardatosusua("kevin")){
            %>  
        <form>
           
  <div class="form-group" >
      
    <label for="CORREO">CORREO</label>
    <div class="input-group">
      <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
    <center>
        <input type="email" class="form-control" style=" width: 320px;" id="correo"  value="<%=usa.getCorreo()%>" placeholder="CORREO">
    </center>
    </div>
  </div>
    <div class="form-group" >
    <label for="CORREO">NOMBRE DE USUARIO</label>
    <div class="input-group">
      <div class="input-group-addon glyphicon glyphicon-user"></div>
    <center>
        <input type="email" class="form-control" style=" width: 320px;" id="usuario"  value="<%=usa.getCorreo()%>" placeholder="CORREO">
    </center>
    </div>
  </div>
             <center>
  <div class="form-group">
      <label for="exampleInputPassword1">CONTRASE&Ntilde;A</label>
      <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
    <input type="text" class="form-control glyphicon glyphicon-lock" style=" width: 320px;" id="Ccontrasena"  value="<%=usa.getClave()%>"  placeholder="CONTRASE&Ntilde;A">
      </div>
          
    </div>
             </center>
             <center>
   <div class="form-group">
    <label for="exampleInputPassword1">NOMBRES</label>
    <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-resize-vertical"></span></span>
   <input type="text" class="form-control" style=" width: 345px;" id="nombre"  value="<%=usa.getNombre()%>"  placeholder="NOMBRES">
  </div>
   </div>
             </center>
   <center>
   <div class="form-group">
    <label for="exampleInputPassword1">APE.PATERNO</label>
    <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-resize-vertical"></span></span>
   <input type="text" class="form-control" style=" width: 345px;" id="nombre"  value="<%=usa.getNombre()%>"  placeholder="NOMBRES">
  </div>
   </div>
             </center>
   <center>
   <div class="form-group">
    <label for="exampleInputPassword1">APE.MATERNO</label>
    <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-resize-vertical"></span></span>
   <input type="text" class="form-control" style=" width: 345px;" id="nombre"  value="<%=usa.getNombre()%>"  placeholder="NOMBRES">
  </div>
   </div>
             </center>
            
             <center>
  <div class="form-group">
    <label for="exampleInputFile">SUBIR ARCHIVO</label>
    <input type="file"  id="img" >
  </div>
             </center>
<center>
<button type="button" class="btn btn-primary">GUARDAR CAMBIOS</button>
 </center>
 </form>
  <%}%>
      </div>
     
       
    </div>
  </div>
    </center>
</div>
      <!-- FIN ACTUALIZAR DATOS DE USUARIO--> 
      <!--SEGUNDO ACTUALIZAR DATOS DE USUARIO--> 
<div class="modal fade" id="editado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <center>
        <div class="modal-dialog" id="usua" role="document" >
    <div class="modal-content" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="titulo">ACTUALIZAR USUARIO</h3>
      </div>
      <div class="modal-body">
         <%
            
            for(Usuario usa:dao.consultardatosusua("kevin")){
            %> 
             <center>
        <form>
        <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <label>USUARIO</label>
                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <input type="text" class="form-control" style=" width: 320px;" name="Username" id="Username" placeholder="USUARIO" required >
                </div>
            </div>
            <div class="form-group">
                <label>CORREO</label>
                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                    <input type="text" class="form-control" name="Email" style=" width: 320px;" id="Email" placeholder="CORREO" required >
                </div>
            </div>
            
            <div class="form-group" style="text-align: center;">
                <center>
                    
                </center>
                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <input type="text" class="form-control" name="password"  style=" width: 320px;" id="password" placeholder="CONTRASE&Ntilde;A" required data-toggle="popover" title="Password Strength" data-content="Enter Password...">
                </div>
            </div>
             
            <div class="form-group">
                
                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <input type="text" class="form-control" name="password"  style=" width: 320px;" id="password" placeholder="CONFIRMAR CONTRASE&Ntilde;A" required data-toggle="popover" title="Password Strength" data-content="Enter Password...">
                </div>
            </div>
            <center>
            <input type="submit" name="submit" id="submit" value="Submit" style=" width: 320px;" class="btn btn-primary pull-right">
            </center>
        </div>
    </div>
 </form>
                  </center>
  <%}%>
      </div>
     
       
    </div>
  </div>
    </center>
</div>
      
      
  <%----TERCERO MODAL----%>
   <%
       personadao so=new personadaoimpl();
       
       for(Persona pers:so.mostrarpersonas(3))
                        {   
            
                      %>
      <div class="modal fade" id="mostrarcli" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="color: #101010;  padding: 100px; ">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
            <div class="panel panel-info" >
           <div class="panel-heading">
            <h3 class="panel-title" style="text-align: center;"><%=pers.getNombre()%> <%=pers.getApepat()%> <%=pers.getApepat()%></h3>
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
                        <td><%=pers.getDireccion()%></td>
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
               
               
               
               <%-----OTRO MODAL----%>
               
       <%----MODALES DEL MENU-----%>
       
       
     <div class="modal fade" id="regiscliente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="color: #101010;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       <h1 class="modal-title " id="myModalLabel" style="margin: 20px; "><b><center>REGISTRO</center></b></h1>
      </div>
      <div class="modal-body">
      <form class="form-horizontal " style=" color: #000000;padding:1.5px;">
            
          
            <%--separador--%>
            <div class="form-group">
                <label  class="col-sm-4 control-label" style="text-align: justify;">NOMBRE</label>
            <div class="col-sm-8">
                <input type="text" class="form-control"  name="nombre" id="nombre" placeholder="NOMBRE">
            </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-5 control-label" style="text-align: justify;">APELLIDO PATERNO</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" name="ape_pat" id="ape_pat" placeholder="APELLIDO PATERNO">
            </div>
            </div>
             <%--separador--%>
            <div class="form-group">
                <label  class="col-sm-5 control-label" style="text-align: justify;">APELLIDO MATERNO</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" name="ape_mat" id="ape_mat" placeholder="APELLIDO MATERNO">
            </div>
            </div>
             <div class="form-group">
                <label  class="col-sm-5 control-label" style="text-align: justify;">FECHA NACIMIENTO</label>
            <div class="col-sm-7">
                <input type="date">
            </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-5 control-label" style="text-align: justify;">TIPO DOCUMENTO</label>
            <div class="col-sm-7">
              
                
                <select class="form-control" name="tip_doc" >
                    <option>SELECCIONAR DOCUMENTO</option>
                    <%
                    for (TipoDoc doc: daotido.mostrartipo_doc()) {
                        
                    %>
                    <option value="<%=doc.getId_tipo_doc()%>"><%=doc.getNombre_tipo_doc()%></option>
                <%}%>
                </select>
                
            </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-4 control-label" style="text-align: justify;">NRO.DOCUMENTO</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="dni" id="dni" placeholder="NRO.DOCUMENTO">
            </div>
            </div>
            <%--separador--%>
            <div class="form-group">
                <label  class="col-sm-4 control-label" style="text-align: justify;">CORREO</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="correo" id="correo" placeholder="CORREO">
            </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-4 control-label" style="text-align: justify;">CELULAR</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="celular" id="celular" placeholder="CELULAR">
            </div>
            </div>
            <%--separador--%>
            <div class="form-group">
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
             <label class="col-lg-2 control-label" for="radios">SEXO</label>
  <div class="col-lg-2">
  
  
  </div>
</div>
                <div class="form-group col-lg-4">
                    <div class="radio ">
    <label for="radios-1">
      <input type="radio" name="radios" id="radios-1" value="2">
      <b>MASCULINO</b>
    </label>
	</div>
                
                <div class="radio col-lg-4">
    <label for="radios-0">
      <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
      <b>FEMENINO</b>
    </label>
	</div>
                    </div>
                <div class="col-lg-2"></div>
            </div>  
            <div class="form-group">
                <label  class="col-sm-4 control-label" style="text-align: justify;">DIRECCI&Oacute;N</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="direccion" id="direccion" placeholder="DIRECCI&Oacute;N">
            </div>
            </div>
            
            
          </form>
      </div>
      <div class="modal-footer">
        <div class="col-lg-4 col-md-2 col-sm-1 col-xs-0"></div>
                    <button type="button" class="btn btn-primary glyphicon glyphicon-ok col-lg-4 col-md-8 col-sm-10 col-xs-12"></button>
                <div class="col-lg-4 col-md-2 col-sm-1 col-xs-0"></div>
      </div>
    </div>
  </div>
</div>  
       
            