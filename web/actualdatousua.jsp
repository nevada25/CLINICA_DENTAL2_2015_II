<%@include file="cabeza.jsp" %>
<script>
      $(document).ready(function() {
    $('.navbar-nav [data-toggle="tooltip"]').tooltip();
    $('.navbar-twitch-toggle').on('click', function(event) {
        event.preventDefault();
        $('.navbar-twitch').toggleClass('open');
    });
    
    $('.nav-style-toggle').on('click', function(event) {
        event.preventDefault();
        var $current = $('.nav-style-toggle.disabled');
        $(this).addClass('disabled');
        $current.removeClass('disabled');
        $('.navbar-twitch').removeClass('navbar-'+$current.data('type'));
        $('.navbar-twitch').addClass('navbar-'+$(this).data('type'));
    });
});
        </script>
<div>
<style>
  
/*  bhoechie tab */
div.bhoechie-tab-container{
  z-index: 10;
 width: 80%;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-left: 50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  
  padding-bottom: 0;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
   
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .glyphicon,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #5A55A3;
  
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
  
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
  
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #5A55A3;
  background-image: #5A55A3;
  color: #ffffff;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
   
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */

}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: none;
}
<%----CAMBIAR COLOR-----%>
.fab {
  cursor: pointer;
}
.fab-backdrop {
  color: rgba(255, 255, 255, 0);
}
.fab-primary, .fab-secondary {
  transition: all 0.35s ease-in-out;
}
.fab.active .fab-primary {
  opacity: 0;
  transform: rotate(225deg);
}
.fab-secondary {
  opacity: 0;
  transform: rotate(-225deg);
}
.fab.active .fab-secondary {
  opacity: 1;
  transform: rotate(0);
  margin-top: -2px;
}



#inbox .show-on-hover:hover > ul.dropdown-menu {
    display: block;    
    
}
#inbox .show-on-hover {
    position: absolute;
    bottom: 40px;
    right: 80px;
}
#inbox .btn-io{
    border-radius: 50%;
    height: 54px;
    width: 54px;
    padding: 0 !important;
    box-shadow: 0px 3px 7px 0px rgba(202, 124, 124, 0.72);
}
#inbox .dropup .dropdown-menu, .navbar-fixed-bottom .dropdown .dropdown-menu {
top: auto;
bottom: 100%;
margin-bottom: 1px;
margin-bottom: -5px;
padding-bottom: 20px;
}
#inbox .dropdown-menu-right {
right: 0 !Important;
left: auto !Important;
}
#inbox .dropdown-menu {
position: absolute;
top: 100%;
left: 0;
z-index: 1000;
display: none;
float: left;
min-width: 50px;
padding: 5px 0;
margin: 2px 0 0;
font-size: 14px;
text-align: center;
list-style: none;
background-color: rgba(255, 255, 255, 0) !Important;
-webkit-background-clip: padding-box;
background-clip: padding-box;
border: none;
border-radius: 0px;
-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0) !Important;
box-shadow: 0 6px 12px rgba(0, 0, 0, 0) !Important;
}
#inbox .fa-iox{
    font-size: 22px;
}
#inbox .dropdown-menu > li > a {
display: block;
padding: 0;
padding-top: 4px;
margin-top: 20px;
clear: both;
font-weight: normal;
line-height: 1.42857143;
color: #333;
background: #fff;
white-space: nowrap;
width: 40px;
height: 40px;
border: solid 1px #ccc;
border-radius: 50px;
font-size: 21px;
box-shadow: 0px 3px 7px 0px rgba(203, 203, 203, 0.72);
}
#inbox .dropdown-menu > li:first-child>a {
    background: #6E4320 !important;
    color: #fff !important;
}
#inbox .dropdown-menu > li:last-child>a {
    background: #D3A516;
    color: #fff;
}
#inbox .dropdown-menu > li:nth-child(3)>a {
    background: #3C80F6;
    color: #fff;
}
#inbox .dropdown-menu > li:nth-child(2)>a {
    background: #2CAC26;
    color: #fff;
}
#inbox .fa-iosm{
    
    margin-top: 7px;
}

</style>

</div>
<%-----BOTON 3D-----%>
<div>
    <style>
        .btn3d {
    position:relative;
    top: -6px;
    border:0;
     transition: all 40ms linear;
     margin-top:10px;
     margin-bottom:10px;
     margin-left:2px;
     margin-right:2px;
}
.btn3d:active:focus,
.btn3d:focus:hover,
.btn3d:focus {
    -moz-outline-style:none;
         outline:medium none;
}
.btn3d:active, .btn3d.active {
    top:2px;
}
<%----GRIS-----%>
.btn3d.btn-gray {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px gray inset, 0 8px 0 0 gray, 0 8px 8px 1px gray;
    background-color:gray;
}
<%----Naranja-----%>
.btn3d.btn-orange {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px orange inset, 0 8px 0 0 orange, 0 8px 8px 1px orange;
    background-color:orange;
}
<%----morado-----%>
.btn3d.btn-purple {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px purple inset, 0 8px 0 0 purple, 0 8px 8px 1px purple;
    background-color:purple;
}
<%----turquesa-----%>
.btn3d.btn-turquoise {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px turquoise inset, 0 8px 0 0 turquoise, 0 8px 8px 1px turquoise;
    background-color:turquoise;
}
.btn3d.btn-turquoise:active, .btn3d.btn-turquoise.active {
    box-shadow:0 0 0 1px turquoise inset, 0 0 0 1px turquoise inset, 0 1px 3px 1px turquoise;
    background-color: turquoise;
}
<%----ROSA-----%>
.btn3d.btn-pink {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px pink inset, 0 8px 0 0 pink, 0 8px 8px 1px pink;
    background-color:pink;
}
.btn3d.btn-pink:active, .btn3d.btn-pink.active {
    box-shadow:0 0 0 1px pink inset, 0 0 0 1px pink inset, 0 1px 3px 1px pink;
    background-color: pink;
}
<%----VERDE-----%>
.btn3d.btn-green {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px green inset, 0 8px 0 0 green, 0 8px 8px 1px green;
    background-color:green;
}
.btn3d.btn-green:active, .btn3d.btn-green.active {
    box-shadow:0 0 0 1px green inset, 0 0 0 1px green inset, 0 1px 3px 1px green;
    background-color: green;
}
<%----azul-----%>
.btn3d.btn-blue {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px blue inset, 0 8px 0 0 blue, 0 8px 8px 1px blue;
    background-color:blue;
}
.btn3d.btn-blue:active, .btn3d.btn-blue.active {
    box-shadow:0 0 0 1px blue inset, 0 0 0 1px blue inset, 0 1px 3px 1px blue;
    background-color: blue;
}
<%----aviso-----%>
.btn3d.btn-danger {
    box-shadow:0 0 0 1px white inset, 0 0 0 2px red inset, 0 8px 0 0 red, 0 8px 8px 1px red;
    background-color:red;
}
.btn3d.btn-danger:active, .btn3d.btn-danger.active {
    box-shadow:0 0 0 1px red inset, 0 0 0 1px red inset, 0 1px 3px 1px red;
    background-color: red;
}
    </style>
</div>
<%----CAMBIAR COLOR-----%>
<div>
    <style>
        .navbar-twitch {
	position: fixed;
	top: 0px;
	left: 0px;
	width: 50px;
	height: 100%;
	border-radius: 0px;
	border: 0px;
    z-index: 1030;
}
.navbar-twitch.open {
	width: 240px;
}
.navbar-twitch > .container {
	padding: 0px;
	width: 100%;
}
.navbar-twitch .navbar-header,
.navbar-twitch .navbar-brand {
	float: none;
	display: block;
	width: 100%;
	margin: 0px;
}
.navbar-twitch .navbar-brand {
    height: 50px;   
}
.navbar-twitch > .container .navbar-brand {
	padding: 0px;
	margin: 0px;
}
.navbar-twitch > .container .navbar-brand > .small-nav {
	display: block;
}
.navbar-twitch > .container .navbar-brand > .small-nav > span.logo,	
.navbar-twitch.open > .container .navbar-brand > .full-nav {
    display: block;
	font-weight: bold;
	padding: 15px 2px 15px 3px;
	font-size: 18pt;
}
.navbar-twitch.open > .container .navbar-brand {
	width: 100%;
	padding: 15px 15px 60px;
	text-align: center;
}
.navbar-twitch.navbar-inverse > .container .navbar-brand > .small-nav > span.logo {
	/*color: rgb(255, 255, 255);*/
}
.navbar-twitch .navbar-nav > li {
	float: none;
}
.navbar-twitch > .container .full-nav {
	display: none;
}
.navbar-twitch.open > .container .full-nav {
	display: block;
}
.navbar-twitch.open > .container .small-nav {
	display: none;
}
.navbar-twitch .navbar-collapse {
	padding: 0px;
}
.navbar-twitch .navbar-nav {
	float: none;
	margin: 0px;
}
.navbar-twitch .navbar-nav > li > a {
	padding: 0px;
}
.navbar-twitch .navbar-nav > li > a > span {
	display: block;
	font-size: 16pt;
	padding: 13px 15px 13px 12px;
}
.navbar-twitch .tooltip,
.navbar-twitch .tooltip .tooltip-inner {
	max-width: auto;
	white-space:nowrap;
}
.navbar-twitch-toggle {
	position: fixed;
	top: 5px;
	left: 55px;
}
.navbar-twitch ~ .navbar-twitch-toggle > .nav-open {
	display: inline-block;
}
.navbar-twitch ~ .navbar-twitch-toggle > .nav-close {
	display: none;
}
.navbar-twitch.open ~ .navbar-twitch-toggle {
	left: 245px;
}
.navbar-twitch.open ~ .navbar-twitch-toggle > .nav-open {
	display: none;
}
.navbar-twitch.open ~ .navbar-twitch-toggle > .nav-close {
	display: inline-block;
}
<%---BTN BLUE---%>
.btn-blue,
.btn-blue:hover,
.btn-blue:focus,
.btn-blue:Active {
    color:black;
    background-color:blue;
    border-color: rgb(111, 84, 153);
}
.btn-blue:hover,
.btn-blue:focus,
.btn-blue:Active {
    background-color:blue;
    border-color: rgb(86, 61, 124);   
}
.navbar-blue {
    background-color: blue;
    border-color: rgb(111, 84, 153);
}
.navbar-blue .navbar-brand, 
.navbar-blue .navbar-nav > li > a, 
.navbar-blue .navbar-brand:hover, 
.navbar-blue .navbar-nav > li > a:hover, 
.navbar-blue .navbar-brand:focus, 
.navbar-blue .navbar-nav > li > a:focus {
    color: black;
}
.navbar-blue .navbar-brand:hover, 
.navbar-blue .navbar-nav > li > a:hover, 
.navbar-blue .navbar-brand:focus, 
.navbar-blue .navbar-nav > li > a:focus,
.navbar-blue .navbar-nav > .active > a, 
.navbar-blue .navbar-nav > .active > a:hover, 
.navbar-blue .navbar-nav > .active > a:focus {
    background-color: blue;
    color:black;
}


<%---BTN GREEN---%>
.btn-green,
.btn-green:hover,
.btn-green:focus,
.btn-green:Active {
    color:black;
    background-color:green;
    border-color: rgb(111, 84, 153);
}
.btn-green:hover,
.btn-green:focus,
.btn-green:Active {
    background-color:green;
    border-color: rgb(86, 61, 124);   
}
.navbar-green {
    background-color: green;
    border-color: rgb(111, 84, 153);
}
.navbar-green .navbar-brand, 
.navbar-green .navbar-nav > li > a, 
.navbar-green .navbar-brand:hover, 
.navbar-green .navbar-nav > li > a:hover, 
.navbar-green .navbar-brand:focus, 
.navbar-green .navbar-nav > li > a:focus {
    color: black;
}
.navbar-green .navbar-brand:hover, 
.navbar-green .navbar-nav > li > a:hover, 
.navbar-green .navbar-brand:focus, 
.navbar-green .navbar-nav > li > a:focus,
.navbar-green .navbar-nav > .active > a, 
.navbar-green .navbar-nav > .active > a:hover, 
.navbar-green .navbar-nav > .active > a:focus {
    background-color: green;
    color:black;
}


<%---BTN RED---%>
.btn-red,
.btn-red:hover,
.btn-red:focus,
.btn-red:Active {
    color:black;
    background-color: red;
    border-color: rgb(111, 84, 153);
}
.btn-red:hover,
.btn-red:focus,
.btn-red:Active {
    background-color: red;
    border-color: rgb(86, 61, 124);   
}
.navbar-red {
    background-color:red;
    border-color: rgb(111, 84, 153);
}
.navbar-red .navbar-brand, 
.navbar-red .navbar-nav > li > a, 
.navbar-red .navbar-brand:hover, 
.navbar-red .navbar-nav > li > a:hover, 
.navbar-red .navbar-brand:focus, 
.navbar-red .navbar-nav > li > a:focus {
   color:black;
}
.navbar-red .navbar-brand:hover, 
.navbar-red .navbar-nav > li > a:hover, 
.navbar-red .navbar-brand:focus, 
.navbar-red .navbar-nav > li > a:focus,
.navbar-red .navbar-nav > .active > a, 
.navbar-red .navbar-nav > .active > a:hover, 
.navbar-red .navbar-nav > .active > a:focus {
    background-color:red;
   color: black;
}


<%---BTN PURPLE---%>
.btn-purple,
.btn-purple:hover,
.btn-purple:focus,
.btn-purple:Active {
    color: rgb(255, 255, 255);
    background-color: rgb(255,0,0);
    border-color: rgb(111, 84, 153);
}
.btn-purple:hover,
.btn-purple:focus,
.btn-purple:Active {
    background-color: rgb(255,0,0);
    border-color: rgb(86, 61, 124);   
}

.navbar {
    background-image: none !important;
}
.navbar-purple {
    background-color: rgb(255,0,0);
    border-color: rgb(111, 84, 153);
}
.navbar-purple .navbar-brand, 
.navbar-purple .navbar-nav > li > a, 
.navbar-purple .navbar-brand:hover, 
.navbar-purple .navbar-nav > li > a:hover, 
.navbar-purple .navbar-brand:focus, 
.navbar-purple .navbar-nav > li > a:focus {
    color: rgb(205, 191, 227);;
}
.navbar-purple .navbar-brand:hover, 
.navbar-purple .navbar-nav > li > a:hover, 
.navbar-purple .navbar-brand:focus, 
.navbar-purple .navbar-nav > li > a:focus,
.navbar-purple .navbar-nav > .active > a, 
.navbar-purple .navbar-nav > .active > a:hover, 
.navbar-purple .navbar-nav > .active > a:focus {
    background-color: rgb(255,0,0);
    color: rgb(255, 255, 255);
}

    </style>
</div>
<div class="panel panel-default" style="margin-top: -110px;">
       <%--CABEZA---%>
	<div class="panel-heading">
            <h1 style="text-align: center;">ACTUALIZAR DATOS USUARIO</h1>
	</div>
        <%---CUERPO---%>
	<div class="panel-body">
		
    <div class="container">
	<div class="row">
        <div class="col-lg-5 col-md-5 col-sm-8 col-xs-9 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
              <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                  <h4 class="glyphicon glyphicon-plane"></h4><br/>USUARIO
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-road"></h4><br/>COLOR
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-home"></h4><br/>Hotel
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-cutlery"></h4><br/>Restaurant
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-credit-card"></h4><br/>Credit Card
                </a>
              </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab" >
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                    <center>
                      <h1 class="glyphicon glyphicon-plane" style="font-size:14em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Flight Reservation</h3>
                    </center>
                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content" style="padding: 40px;">
                   
        
        
                    <table width="600"  style="text-align: center;">
  <tbody>
    <tr>
      <td height="80"></td>
      <td><button type="button" class="btn btn-pink btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td><button type="button" class="btn btn-blue btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td></td>
    </tr>
    <tr>
      <td height="80"></td>
      <td><button type="button" class="btn btn-gray btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td><button type="button" class="btn btn-turquoise btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td></td>
    </tr>
    <tr>
      <td height="80"></td>
      <td><button type="button" class="btn btn-orange btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td><button type="button" class="btn btn-purple btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td></td>
    </tr>
    <tr>
      <td height="80"></td>
      <td><button type="button" class="btn btn-green btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td><button type="button" class="btn btn-danger btn-lg btn3d" style="width: 60px; height: 30px;"></button></td>
      <td></td>
    </tr>
  </tbody>
</table>

                    
                    
                    
                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-home" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Hotel Directory</h3>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-cutlery" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Restaurant Diirectory</h3>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-credit-card" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Credit Card</h3>
                    </center>
                </div>
            </div>
        </div>
  </div>
</div>

	</div>
          <%---fin CUERPO---%>
</div>
          <%@include file="pie.jsp" %>