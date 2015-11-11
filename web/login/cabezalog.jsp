
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link  rel="stylesheet" href="bootstrap/css/bootstrap.css" >
        <link rel="stylesheet" href="estilos/loginnuevo.css">
      <script src="jquery/jquery-2.1.4.min.js">
	</script>
	<script src="bootstrap/js/bootstrap.min.js">
	</script>
        
        <style>
            input{
                text-align: center;
            }
        
        </style>
    </head>
    <body>
    <center>
        <div class="row-fuid" >
           <nav class="navbar navbar navbar-fixed-top" style=" border-radius: 0px; background: #000000; color: #ffffff;">
               <div class="container-fluid"  >
                         <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header " >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="#"><img class="img-responsive" src="img/logo.ico" style="margin-top: -12px;"></a>
    </div>  
     <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="login.jsp">BIENVENIDOS<span class="sr-only">(current)</span></a></li>
        <li><a  href="quienesomos.jsp">QUIENES SOMOS</a></li>
        <li><a href="galeria.jsp" >GALERIA DE FOTOS</a></li>
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
           <!-- /.REGISTRO -->
           <li>
         <!-- Button trigger modal -->
         <a href="registrate.jsp">
  REGISTRATE
      </a>
           </li>

 <!-- FIN DE REGISTRO-->
<!-- /.INICIO DE SECCION -->
 <li><a type="button" rel="popover" class="btn btn-primaty" data-container="body" 
               data-toggle="popover" data-placement="bottom" title="<center>INICIAR SECCI&Oacute;N</center>"
               data-content="
               <form action='inicio.jsp' style='margin: 7px;text-align: center; action '>
  <div class='form-group'>
    <input type='text' class='form-control' id='usuario' placeholder='USUARIO' style='text-align: center;' required class>
  </div>
  <div class='form-group'>
    <input type='password' class='form-control' id='clave' placeholder='CONTRASE&Ntilde;A' style='text-align: center;' required class>
  </div>
  <button type='submit' class='btn btn-default'>INGRESAR</button>
</form>
               
               "
              >INICIAR SECCI&Oacute;N</a></li>
      
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
        </nav>        
       </div>
        
    </center>
    <center>
         <section class="cuerpo" style="margin-top:53px;">
    