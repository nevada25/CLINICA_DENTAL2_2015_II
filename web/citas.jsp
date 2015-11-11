<%@page  import="java.sql.*" %>
<%@page  import="java.util.*" %>
<%@page  import="java.io.*" %>
<%@page  import="proy.modelo.conexion.ConectarOracle" %>
<%@include file="cabeza.jsp" %>

    <div class="tama">
   <div id="tituloprint">www.webcalendario.com</div>
   <table width="100%">
	<tbody><tr>
	<td id="aniotitulo">
		<h2>Septiembre</h2><h1>2014</h1></td>
		<td id="botones">
			<a href="acciones/nuevoevento.jsp"><button> &lt;&lt; </button></a>
			<a href="./webcalendario_files/webcalendario.html"><button> &gt;&gt; </button></a>
		</td>
		<td>
			<div id="calendarios">
			<%
                        try{
                        Statement stm =ConectarOracle.conectar().createStatement();
                                  ResultSet rset; 
                                  
                                  String query="select * from calendario";
                                    rset=stm.executeQuery(query);
                                 while(rset.next()) {
                                 out.println("<span class='calendariocol' idcalendario='1' style='width:80px;background:rgb("+rset.getString("color")+");'>"+rset.getString("nombre")+"</span>");
                                 }
                                 stm.close();
                                 ConectarOracle.conectar().close();
                                }
                                  catch(Exception ed){
                                      out.println(ed.getMessage());
                                  }
                        %>       
                                
                                
			
			</div>
			<span class="calendariocol" style="background:grey;" id="ocultacalendarios"> &gt; </span>
			</td>
		</tr>
		</tbody></table>
		<div style="clear:both;"></div>
		<div id="calendario">
                    
                    <%
                        
                                   try{
                                  
                                  Statement stm =ConectarOracle.conectar().createStatement();
                                  ResultSet rset; 
                                  
                                  
                                             
                        for(int dia=1;dia<=31;dia++)
                        {
                            
                            
                              String query="select evento.nombre AS nombre,anio,mes,dia,hora,minuto,segundo,duracion,color from evento left join calendario ON  evento.IDCALENDARIO=calendario.IDCALENDARIO WHERE anio=2015 and mes=9 AND dia="+dia+"";
                                    rset=stm.executeQuery(query);
                                out.println("<div class='dia ui-droppable' dia='"+dia+"' style='position:relative;'><div class='numerodia'><b>"+dia+"</b></div>");
                                    while(rset.next()) 
                                {
                                out.println("<div idcaldia='7' anio='2014' mes='9' dia='"+dia+"' hora='9' nombre='IMF' class='evento ui-draggable' style='background:rgb("+rset.getString("color")+");width:90%;height:"+(rset.getInt("duracion")*0.1)+"%;position:absolute;top:"+((rset.getInt("hora")*4)+12)+"%;'>"+rset.getInt("hora")+"<span class'motivoevento'>-"+rset.getString("nombre")+"</span><div class='eliminar'><a style='color:#d7d7d7;' href=''>X</a></div></div>");
                                }
                                out.println("</div>");
                           
                            
                        }
                                  
                                
                                 stm.close();
                                 ConectarOracle.conectar().close();
                                 
                                    
                                    
                                  }
                                  catch(Exception ed){
                                      out.println(ed.getMessage());
                                  }
                                  
                       
                        
                    %>
                    
                    
                    
                    
                    </div>
			<div id="nuevoevento" style="display: none;">
				<div id="contieneform">
					<div id="cerrarnuevoevento">X</div>
					<form action="http://localhost:8080/calendario/acciones/nuevoevento.jsp" method="post" >
					<input type="hidden" name="anio" value="2014">
						<input type="hidden" name="mes" value="9">
						<h3>Nuevo evento</h3>
					<table width="100%" id="tablanuevoevento" cellpadding="0" cellspacing="0">
						<tbody><tr>
							<td>
								Año:
							</td>
							<td>
								2014							</td>
						</tr>
						<tr>
							<td>
							Mes:	
							</td>
							<td>
								Sep							</td>
						</tr>
						<tr>
							<td>
								Dia:
							</td>
							<td>
								<input type="text" name="dia" id="dimedia">
							</td>
						</tr>
						<tr>
							<td>
								Calendario:
							</td>
							<td>
								<select name="calendario">
                                                                    
                                                                    	<%
                        try{
                        Statement stm =ConectarOracle.conectar().createStatement();
                                  ResultSet rset; 
                                  
                                  String query="select * from calendario";
                                    rset=stm.executeQuery(query);
                                 while(rset.next()) {
                                 out.println("<option value='"+rset.getInt("idcalendario")+"'>"+rset.getString("nombre")+"</option>");
                                 }
                                 stm.close();
                                 ConectarOracle.conectar().close();
                                }
                                  catch(Exception ed){
                                      out.println(ed.getMessage());
                                  }
                        %>       
                       </select>
							</td>
						</tr>
						<tr>
							<td>
								Hora de inicio:
							</td>
							<td>
								<select name="hora">
                                                                    
                                                                    <%
                                                                    for(int hora=0; hora<=24; hora++){
                                                                    out.println("<option value='"+hora+"'>"+hora+"</option>");
                                                                    
                                                                    }
                                                                    
                                                                    %>
                                                                    
                                                                    
						</select>:
						
						<select name="minuto">
                                                    
                                                      <%
                                                                    for(int minuto=0; minuto<=60; minuto+=5){
                                                                    out.println("<option value='"+minuto+"'>"+minuto+"</option>");
                                                                    
                                                                    }
                                                                    
                                                                    %>
                                                                    
						</select>
							</td>
						</tr>
						<tr>
							<td>
								Duración:
							</td>
							<td>
								<select name="duracion">
						<option value="0">0</option><option value="30">0:30</option><option value="60">1</option><option value="90">1:30</option><option value="120">2</option><option value="150">2:30</option><option value="180">3</option><option value="210">3:30</option><option value="240">4</option><option value="270">4:30</option><option value="300">5</option><option value="330">5:30</option><option value="360">6</option><option value="390">6:30</option><option value="420">7</option><option value="450">7:30</option><option value="480">8</option><option value="510">8:30</option><option value="540">9</option><option value="570">9:30</option><option value="600">10</option><option value="630">10:30</option><option value="660">11</option><option value="690">11:30</option><option value="720">12</option><option value="750">12:30</option><option value="780">13</option><option value="810">13:30</option><option value="840">14</option><option value="870">14:30</option><option value="900">15</option><option value="930">15:30</option><option value="960">16</option><option value="990">16:30</option><option value="1020">17</option><option value="1050">17:30</option><option value="1080">18</option><option value="1110">18:30</option><option value="1140">19</option><option value="1170">19:30</option><option value="1200">20</option><option value="1230">20:30</option><option value="1260">21</option><option value="1290">21:30</option><option value="1320">22</option><option value="1350">22:30</option><option value="1380">23</option><option value="1410">23:30</option>						</select>
							</td>
						</tr>
						<tr>
							<td>
								Nombre del evento:
							</td>
							<td>
								<input type="text" name="nombre" placeholder="nombre">
							</td>
						</tr>
						<tr>
							<td>
								
							</td>
							<td>
								<input type="submit">
							</td>
						</tr>
						
					</tbody></table>	
				</form>
			</div>
		</div>
		<div id="ajax"></div>
	
                
                
		<script  src="file/lib/jquery-1.10.1.min.js"></script>
		<script  src="file/lib/jquery-ui.js"></script>
		<script   src="file/js/codigo.js"></script>
        </div>

<%@include file="pie.jsp" %>