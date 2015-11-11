<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon"  href="img/logo.ico" />
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script  src="file/lib/jquery-1.10.1.min.js"></script>
        <script  src="file/lib/jquery-ui.js"></script>
        <title>lo</title>
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
        <style>
           @import url(css/font-awesome.css);
body {
    padding-top: 15px;
    padding-left: 65px;
}
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
    </head>
    <body>
 <div class="navbar navbar-inverse navbar-twitch" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">
				<span class="small-nav"> <span class="logo"> <B> </span> </span>
				<span class="full-nav"> < Bootsnipp > </span>
			</a>
		</div>
		<div class="">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="#">
						<span class="small-nav" data-toggle="tooltip" data-placement="right" title="Home"> 
							<span class="glyphicon glyphicon-home"></span> 
						</span>
						<span class="full-nav"> Home </span>
					</a>
				</li>
				<li>
					<a href="#about-us">
						<span class="small-nav" data-toggle="tooltip" data-placement="right" title="About Us"> 
							<span class="fa fa-users"></span> 
						</span>
						<span class="full-nav"> About Us </span>
					</a>
				</li>
				<li>
					<a href="#contact-us">
						<span class="small-nav" data-toggle="tooltip" data-placement="right" title="Contact Us"> 
							<span class="glyphicon glyphicon-comment"></span> 
						</span>
						<span class="full-nav"> Contact Us </span>
					</a>
				</li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</div>
<button type="button" class="btn btn-default btn-xs navbar-twitch-toggle">
	<span class="glyphicon glyphicon-chevron-right nav-open"></span>		
	<span class="glyphicon glyphicon-chevron-left nav-close"></span>
</button>

<div class="container">
	<div class="row">
		<h2>Bootstrap Navigation meets Twitch Navigation</h2>
        <p>This is just a quick and dirty example I made to show off to a friend. Don't forget to change the theme using the dropdown above.</p>
	</div>
    <div class="row">
        <h2>Navbar Styles</h2>
        <p>Just to show off how easy it is to theme!</p>
        <button type="button" class="btn btn-inverse nav-style-toggle disabled" data-type="inverse"> Inverse</button>
        <button type="button" class="btn btn-default nav-style-toggle" data-type="default"> Default</button>
        <button type="button" class="btn btn-purple nav-style-toggle" data-type="purple"> Purple</button>
        <button type="button" class="btn btn-red nav-style-toggle" data-type="red">red</button>
        <button type="button" class="btn btn-green nav-style-toggle" data-type="green">green</button>
        <button type="button" class="btn btn-blue nav-style-toggle" data-type="blue">AZUL</button>
    </div>
</div>
    </body>
</html>
