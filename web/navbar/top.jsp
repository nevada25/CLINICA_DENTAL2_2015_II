<%-- 
    Document   : index
    Created on : 18/10/2015, 12:18:48 PM
    Author     : NEVADA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIO</title>
        <link href="css/bootstrap.css" rel="stylesheet" />
    
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
	<link href="css/ct-navbar.css" rel="stylesheet" />  
  
    <!--     Font Awesome     -->
<link href='fullcalendar.css' rel='stylesheet' />
<link href='fullcalendar.print.css' rel='stylesheet' media='print' />
<link href='jquery/calendario.css' rel='stylesheet' />
<script src='jquery/jquery-1.10.2.js'></script>
<script src='jquery/jquery-ui.custom.min.js'></script>
<script src='jquery/estilocalendario.js'></script>
<script src='fullcalendar.js'></script>

    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <style>
        .fa-heart{
            color: #F74933;
        }   
        .space-100{
            height: 100px;
            display: block;
        }
        pre.prettyprint{
            background-color: #ffffff;
            border: 1px solid #999;
            margin-top: 20px;
            padding: 20px;
            text-align: left;
        }
        .atv, .str{
            color: #05AE0E;
        }
        .tag, .pln, .kwd{
             color: #FF2121;
        }
        .atn{
          color: #FF2121;
        }
        .pln{
           color: #333;
        }
        .com{
            color: #999;
        } 
    </style>
    </head>
    <body>
     <div id="navbar-full">
    <div id="navbar">
       <!--    
        navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
        -->
        <nav class="navbar navbar-ct-blue navbar-fixed-top navbar-transparent" role="navigation">
          
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand navbar-brand-logo" href="#">
                    <div class="logo">
                        <img src="../img/logo.ico">
                    </div>
                    <div class="brand">PERUANA JAPONESA</div>
              </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="javascript:void(0);" data-toggle="search" class="hidden-xs">
                            <i class="pe-7s-search"></i>
                            <p>BUSCAR</p>
                        </a>
                    </li>

                    <li>
                        <a href="../calendario/calendario.jsp">
                            <i class="pe-7s-call">
                                
                            </i>
                            <p>CALENDARIO</p>
                        </a>
                    </li> 
                     <li>
                        <a href="#">
                            <i class="pe-7s-mail">
                                
                            </i>
                            <p>REPORTES</p>
                        </a>
                    </li> 
                     <li>
                        <a href="#">
                            <i class="pe-7s-mail">
                              
                            </i>
                            <p>REGISTRO</p>
                        </a>
                    </li> 
                    <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-user"></i>
                                <p>COMFIGURACI&Oacute;N<b class="caret"></b></p>
                            </a>
                          <ul class="dropdown-menu">
                            <li><a href="#">EDITAR USUARIO</a></li>
                            <li><a href="#">EDITAR REGISTRO</a></li>
                            <li><a href="#">Something</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li class="divider"></li>
                            <li><a href="#">CERRAR SECCI&Oacute;N</a></li>
                          </ul>
                    </li>
               </ul>
               <form class="navbar-form navbar-right navbar-search-form" role="search">                  
                 <div class="form-group">
                      <input type="text" value="" class="form-control" placeholder="BUSCAR...">
                 </div> 
              </form>
              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        <div class="blurred-container" style=" height: 300px;">
            <img src="../img/LOGOCD2.png" style="height: 300px; width: 100%; background-repeat: none; width: 100%;"> </img>
        </div>
    </div><!--  end navbar -->

</div> <!-- end menu-dropdown -->
