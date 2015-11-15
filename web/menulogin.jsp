<%@include file="top.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <script  src="file/lib/jquery-1.10.1.min.js"></script>
	<script  src="file/lib/jquery-ui.js"></script>
        <link rel="shortcut icon"  href="img/1447223990_Login Manager.ico" />
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/registrar.css">
        <script src="js/login.js"></script>
        <script type="text/javascript" src="jquery/registrar.js" ></script>
        <script src="jquery/TweenLite.min.js"></script>
        <script  src="file/lib/jquery-ui.js"></script>
        <link rel="stylesheet" type="text/css" href="font-awesome-4.4.0/css/font-awesome.min.css">
        <style>
        .totaldeparalax{
          background: url(img/back.png);
          background-color: #444;
          background: url(img/pinlayer2.png),url(img/pinlayer1.png),url(img/back.png); 
          height: 650px;
          padding: 100px;
        }
        .fa{
            display: none;
        }
        </style>
    </head>
    <body>
                    <%
                            String mensaje=request.getParameter("mensaje");mensaje = mensaje==null?"":mensaje;

                        %>
 <div class="totaldeparalax">
    
    	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
                                    <img class="img-circle" id="img_logo" src="img/login.ico">
					
				</div>
                
                <!-- Begin # DIV Form -->
                <div id="div-forms">
                
                    <!-- Begin # Login Form -->
                    <form id="login-form" action="Validar" method="post">
		    <div class="modal-body">
			    <div id="div-login-msg">
                            <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                            <span id="text-login-msg">Escriba su nombre de usuario y contraseña</span>
                        </div>
                            <input id="usuario"  name="usuario" class="form-control" type="text" placeholder="Nombre de usuario" required>
                            <input id="password" name="password" class="form-control" type="password" placeholder="Clave" required>
                        <div class="checkbox">
                            <label>
                            <input type="checkbox">RECUERDAME
                             </label>
                        </div>
        	    </div>
		    <div class="modal-footer">
                        <div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar sesión</button>
                        </div>
                        <div>
                            <button id="login_lost_btn" type="button" class="btn btn-link">OLVIDASTE CONTRASE&Nacute;A?</button>
                            <button id="login_register_btn" type="button" class="btn btn-link" data-toggle="modal" data-target="#regisusu">Registro</button>
                        <i class="fa fa-refresh fa-spin"></i>
            
                        </div>
	            </div>
                </form>
                     <div class="row">
                <div class="col-md-12" id="aler">
                    <br>
                    <%
                        if(!mensaje.equals("")){
                    %>
                    <div class="alert alert-danger"><%=mensaje%></div> 
                    <%}%>
                </div>
            </div> 
                    <!-- End # Login Form -->
                

                </div>
                <!-- End # DIV Form -->
                
			</div>
		</div>
        <%--INICIO SEGUNDO-----%>
        
<!-- Modal -->
<div class="modal fade" id="regisusu" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 style="text-align: center;" ><b>REGISTRAR USUARIO</b></h2>
      </div>
      <div class="modal-body">
      <div id="div-register-msg">
        <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
        <span id="text-register-msg">Registrar una cuenta.</span>
      </div>
         <br>
	<input id="register_username" class="form-control" type="text" placeholder="Nombre de usuario" required>
        <br>
        <input id="register_email" class="form-control" type="text" placeholder="Correo electrónico" required>
        <input id="register_password" class="form-control" type="password" placeholder="Clave" required>
      </div>
      <div class="modal-footer">
        <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Registro</button>
                            </div>
                            <div>
                                <button id="register_login_btn" type="button" class="btn btn-link" ><a href="menulogin.jsp">Iniciar sesión</a></button>
                            </div>
      </div>
    </div>
  </div>
</div>
        
        
        <%--FIN SEGUNDO-----%>
     
	
</div>
  
    </body>
</html>