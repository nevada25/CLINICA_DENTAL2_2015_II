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
        <script type="text/javascript" src="jquery/registrar.js" ></script>
        <script src="jquery/TweenLite.min.js"></script>
        <script  src="file/lib/jquery-ui.js"></script>
      
        <style>
        .totaldeparalax{
          background: url(img/back.png);
          background-color: #444;
          background: url(img/pinlayer2.png),url(img/pinlayer1.png),url(img/back.png); 
          height: 650px;
          padding: 100px;
        }
        </style>
    </head>
    <body>
 <div class="totaldeparalax">
    
    	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
                                    <img class="img-circle" id="img_logo" src="img/login.ico">
					
				</div>
                
                <!-- Begin # DIV Form -->
                <div id="div-forms">
                
                    <!-- Begin # Login Form -->
                    <form id="login-form" action="inicio.jsp">
		                <div class="modal-body">
				    		<div id="div-login-msg">
                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-login-msg">Escriba su nombre de usuario y contraseña</span>
                            </div>
				    		<input id="login_username" class="form-control" type="text" placeholder="Nombre de usuario" required>
				    		<input id="login_password" class="form-control" type="password" placeholder="Clave" required>
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
                                <button id="login_register_btn" type="button" class="btn btn-link">Registro</button>
                            </div>
				        </div>
                    </form>
                    <!-- End # Login Form -->
                    
                    <!-- 
                    <form id="register-form" style="display:none;">
            		    <div class="modal-body">
		    				<div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">Registrar una cuenta</span>
                            </div>
		    				<input id="register_username" class="form-control" type="text" placeholder="Nombre de usuario" required>
                            <input id="register_email" class="form-control" type="text" placeholder="correo electrónico" required>
                            <input id="register_password" class="form-control" type="password" placeholder="Clave" required>
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Registro</button>
                            </div>
                            <div>
                                <button id="register_login_btn" type="button" class="btn btn-link">Iniciar sesión</button>
                                <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                            </div>
		    		    </div>
                    </form>
                    End | Register Form -->
                    
                </div>
                <!-- End # DIV Form -->
                
			</div>
		</div>
	
</div>
  
    </body>
</html>