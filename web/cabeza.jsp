
<%@page import="bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>PERU_JAPO</title>
    <link rel="shortcut icon"  href="img/logo.ico" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/menuprincipal.css">
        <script  src="file/lib/jquery-1.10.1.min.js"></script>
		<script  src="file/lib/jquery-ui.js"></script>
               
		
                <style>
                    *{
                        
                    }
                    body{
                 font-family: "Arial Black","Arial Bold",Gadget,sans-serif;
                        
                    }
                  /* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  z-index: 20;
  margin-top: 20px;
}

/* Flip around the padding for proper display in narrow viewports */
.navbar-wrapper .container {
  padding-left: 0;
  padding-right: 0;
}
.navbar-wrapper .navbar {
  padding-left: 15px;
  padding-right: 15px;
}

.navbar-content
{
    width:320px;
    padding: 5px;
    padding-bottom:0px;
}
.navbar-content:before, .navbar-content:after
{
    display: table;
    content: "";
    line-height: 0;
}
.navbar-nav.navbar-right:last-child {
margin-right: 15px !important;
}
.navbar-footer 
{
    background-color:#DDD;
}
.navbar-footer-content { padding:15px 15px 15px 15px; }
.dropdown-menu {
padding: 0px;
overflow: hidden;
}
div#total{
    margin: 50px;
    padding: 0px;
    width: 90%;
    margin-top: -20px;
    background: url(img/back.png);
}
div#containertotal{
    background:url(img/texturas-purpuras-7966.jpg) #000000;
    height: 700px;
    color: white;
    border-radius: 0px 0px 30px 30px;
    margin-right: 30px;
    margin-left: 30px;
}
                </style>
	
    </head>
    <body >
        
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
			MENU
			</button>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
			 CENTRO ODONTOLOGICO
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			
			<ul class="nav navbar-nav navbar-right">
                           
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">REGISTROS<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">PERSONA</a></li>
            <li><a href="#">CLIENTE</a></li>
            <li><a href="#">CITAS</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">PRODUCTOS</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MOSTRAR<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">CLIENTES</a></li>
            <li><a href="#">CITAS</a></li>
            <li><a href="#">PRODUCTO</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">CONSULTAS</a></li>
          </ul>
        </li>
     
                                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <div class="navbar-content">
                                                    <div class="row">
                                                        <div class="col-md-5">
                                                            <img src="http://placehold.it/120x120"
                                                                alt="Alternate Text" class="img-responsive" />
                                                            <p class="text-center small">
                                                                <a href="#">Change Photo</a></p>
                                                        </div>
                                                        <div class="col-md-7">
                                                            <span>Bhaumik Patel</span>
                                                            <p class="text-muted small">
                                                                mail@gmail.com</p>
                                                            <div class="divider">
                                                            </div>
                                                            <a href="#" class="btn btn-primary btn-sm active">VER PERFIL</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="navbar-footer">
                                                    <div class="navbar-footer-content">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <a href="#" class="btn btn-default btn-sm">UPDATE PASSWORD</a>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <a href="cerrarsession" class="btn btn-default btn-sm pull-right">CERRAR SESSION</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
</nav>  	<div id="containertotal" class="container-fluid main-container">
  		
          
	
      
           
       