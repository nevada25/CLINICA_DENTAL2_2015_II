<%@page import="daoimpl.usuariodaoimpl"%>
<%@page import="dao.usuariodao"%>
<%@page import=" bean.Usuario"%>
<%@page import="daoimpl.personadaoimpl"%>
<%@page import="dao.personadao"%>
<%@page import="bean.Persona"%>
<%@page import="bean.TipoDoc"%>
<%@page import="daoimpl.Tipo_docDaoImpl"%>
<%@page import="dao.Tipo_docDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Tipo_docDao daotido=new Tipo_docDaoImpl();
    personadao daotiper=new personadaoimpl();
    usuariodao daotipousu=new usuariodaoimpl();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>PERU_JAPO</title>
    <link rel="shortcut icon"  href="img/logo.ico" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="css/menuprincipal.css">
        <script  src="file/lib/jquery-1.10.1.min.js"></script>
		<script  src="file/lib/jquery-ui.js"></script>
                <script  src="jquery/menu.js"></script>
                <script src="jquery/menuprincipal.js"></script>
		
                <style>
                    *{
                        
                    }
                    body{
                 font-family: "Arial Black","Arial Bold",Gadget,sans-serif;
                        
                    }
                    
                </style>
	
    </head>
    <body >
        
        <nav class="navbar navbar-default navbar-static-top">
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
				<li><a href="http://www.pingpong-labs.com" target="_blank">Visit Site</a></li>
				<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span> 
                        <%
                       for(Usuario usus: daotipousu.consultardatosusua("kevin")){
                        %>
                        <strong><%=usus.getNombre_usuario()%></strong>
                       
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="navbar-login">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <p class="text-center">
                                            <span class="glyphicon glyphicon-user icon-size"></span>
                                        </p>
                                    </div>
                                    <div class="col-lg-8">
                                      
                                          
                                        <p class="text-left"><strong><%=usus.getNombre()%> <%=usus.getApepat()%> <%=usus.getApemat()%></strong></p>
                                        
                                        <p class="text-left small"><%=usus.getCorreo()%></p>
                                       
                                        <% } %>
                                        <p class="text-left">
                                            <a href="actualdatousua.jsp" class="btn btn-primary btn-block btn-sm">Actualizar Datos</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="navbar-login navbar-login-session">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>
                                            <a href="login2.jsp" class="btn btn-danger btn-block">Cerrar Sesion</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>  	<div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<!-- Menu -->
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span class="glyphicon glyphicon-dashboard"></span>INICIO</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-plane"></span>VISTAS</a></li>
                                        <li><a href="inicio.jsp"><span class="glyphicon glyphicon-cloud"></span>REGISTRO</a></li>

					<!-- Dropdown-->
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl1">
							<span class="glyphicon glyphicon-user"></span> Sub Level <span class="caret"></span>
						</a>

						<!-- Dropdown level 1 -->
						<div id="dropdown-lvl1" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
									<li><a href="#">REPORTES</a></li>
									<li><a href="#">MODIFICAR DATOS</a></li>
									<li><a href="#">Link</a></li>

									<!-- Dropdown level 2 -->
									<li class="panel panel-default" id="dropdown">
										<a data-toggle="collapse" href="#dropdown-lvl2">
											<span class="glyphicon glyphicon-off"></span>REPORTES<span class="caret"></span>
										</a>
										<div id="dropdown-lvl2" class="panel-collapse collapse">
											<div class="panel-body">
												<ul class="nav navbar-nav">
                                                                                                    <li><a href="reportes.jsp">CLIENTES</a></li>
													<li><a href="#">PRODUCTOS</a></li>
													<li><a href="#">SESRVICIOS</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>

					<li><a href="#"><span class="glyphicon glyphicon-signal"></span> Link</a></li>

				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>

	</div>
</div>  		</div>
  		<div class="col-md-10 content">
   
         <%-- <header>
        <!-- Fixed navbar -->
        <nav id="header" class="navbar navbar-fixed-top  ">
            <div id="header-container" class="container navbar-container navbar-right">
                <div class="navbar-header  ">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="brand" class="navbar-brand" href="#"></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">BIENVENIDOS</a></li>
                        <li><a href="#about">REGISTROS</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div><!-- /.nav-collapse -->
            </div><!-- /.container -->
        </nav><!-- /.navbar -->
      
            <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand glyphicon glyphicon-thumbs-up" href="#" ></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="active "><a href="inicio.jsp" class="glyphicon glyphicon-home"><b>INICIO</b><span class="sr-only">(current)</span></a></li>
          <li><a href="registro.jsp" class="glyphicon glyphicon-file">REGISTROS</a></li>
          <li><a href="registro.jsp" class="glyphicon glyphicon-log-in">CALENDARIO</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle glyphicon glyphicon-list-alt" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">VISTAS<span class="caret "></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        
       
          <li><a href="login2.jsp"><button type="button" class="btn btn-danger btn-xs btn3d"><span class="glyphicon glyphicon-off"></span></button></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
          
    </header>
       --%>
       
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
       
            
            <%------SEGUNDO MODAL
            
            <div class="modal fade" id="mostrarcli" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="color: #101010;  padding: 100px; ">


        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   <div class="panel panel-info" >
            <div class="panel-heading">
                    <%
                   
                    for(Persona no:daotiper.mostrarpersona(1)){
                    
%>
<h3 class="panel-title" style="text-align: center;"><%=no.getNombre()%> <%=no.getApepat()%> <%=no.getApepat()%></h3>
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
                        <td><%=no.getDireccion()%></td>
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
              <%}%>
            </div>
               
          </div>
    
</div>  
       -----%>
        <section class="cuerpo" style="margin-top: 110px;">