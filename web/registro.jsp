<%@include file="cabeza.jsp" %>
<style>
.cuerpo{
	height:400px;}

</style>
<div id="cuerpo">
<section>
    <h1 align="center" class="pa">REGISTRO</h1>
<div class="table-responsive">
  <table class="table">
  <tr >
  	<th class="col-lg-2"><!-- PACIENTE-->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#paciente">
  PACIENTE
</button>

<!-- Modal -->
<div class="modal fade" id="paciente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <center><h1 class="modal-title" id="myModalLabel">REGISTRO PERSONA</h1></center>
      </div>
      <div class="modal-body">
        <form>
  <div class="form-group">
    <input type="text" class="form-control " id="exampleInputEmail1" placeholder="INGRESE DNI">
  </div>
  <div class="form-group">
    <input type="text" class="form-control " id="exampleInputPassword1" placeholder="INGRESE NOMBRE">
  </div>
    <div class="form-group">
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="TELEFONO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">FECHA DE NACIMIENTO: </label>
    <input type="date">
  </div>
 
  </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
        <button type="button" class="btn btn-primary">ACEPTAR</button>
      </div>
    </div>
  </div>
</div></div></th>
  	<th class="col-lg-2"> <!--ESPECIALISTA-->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#doctor">
  DOCTOR
</button>

<!-- Modal -->
<div class="modal fade" id="doctor" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h1 class="modal-title" id="myModalLabel">DOCTOR</h1>
      </div>
      <div class="modal-body">
      <form>
  <div class="form-group">
    <label for="exampleInputEmail1">DNI</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="INGRESE DNI">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">NOMBRE</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE NOMBRE">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO PATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO MATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">TELEFONO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="TELEFONO">
  </div>
      <div class="form-group">
    <label for="exampleInputPassword1">GENERO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="GENERO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">FECHA DE NACIMIENTO: </label>
    <input type="date">
  </div>
 
  </form>
      </div>
      <div class="modal-footer">
   <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
        <button type="button" class="btn btn-primary">ACEPTAR</button>
      </div>
    </div>
  </div>
</div></div></th>
<th class="col-lg-2"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#material">
 MATERIAL
</button>

<!-- Modal -->
<div class="modal fade" id="material" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h1 class="modal-title" id="myModalLabel">MATERIAL</h1>
      </div>
      <div class="modal-body">
      <form>
  <div class="form-group">
    <label for="exampleInputEmail1">DNI</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="INGRESE DNI">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">NOMBRE</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE NOMBRE">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO PATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO MATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">TELEFONO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="TELEFONO">
  </div>
      <div class="form-group">
    <label for="exampleInputPassword1">GENERO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="GENERO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">FECHA DE NACIMIENTO: </label>
    <input type="date">
  </div>
 
  </form>
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
        <button type="button" class="btn btn-primary">ACEPTAR</button>
      </div>
    </div>
  </div>
</div></div></div></th>
  	<th class="col-lg-2"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#proveedor">
  PROVEEDOR
</button>

<!-- Modal -->
<div class="modal fade" id="proveedor" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h1 class="modal-title" id="myModalLabel">PROVEEDOR</h1>
      </div>
      <div class="modal-body">
      <form>
  <div class="form-group">
    <label for="exampleInputEmail1">DNI</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="INGRESE DNI">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">NOMBRE</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE NOMBRE">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO PATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO MATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">TELEFONO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="TELEFONO">
  </div>
      <div class="form-group">
    <label for="exampleInputPassword1">GENERO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="GENERO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">FECHA DE NACIMIENTO: </label>
    <input type="date">
  </div>
 
  </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
        <button type="button" class="btn btn-primary">GUARDAR</button>
      </div>
    </div>
  </div>
</div></div></th>
  	<th class="col-lg-2"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#pedido">
  PEDIDO
</button>

<!-- Modal -->
<div class="modal fade" id="pedido" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h1 class="modal-title" id="myModalLabel">PEDIDO</h1>
      </div>
      <div class="modal-body">
      <form>
  <div class="form-group">
    <label for="exampleInputEmail1">DNI</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="INGRESE DNI">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">NOMBRE</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE NOMBRE">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO PATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO MATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">TELEFONO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="TELEFONO">
  </div>
      <div class="form-group">
    <label for="exampleInputPassword1">GENERO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="GENERO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">FECHA DE NACIMIENTO: </label>
    <input type="date">
  </div>
 
  </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
        <button type="button" class="btn btn-primary">GUARDAR</button>
      </div>
    </div>
  </div>
</div></div></th>
  	<th class="col-lg-2"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#espe">
  ESPECIALIDAD
</button>

<!-- Modal -->
<div class="modal fade" id="espe" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h1 class="modal-title" id="myModalLabel">ESPECIALIDAD</h1>
      </div>
      <div class="modal-body">
      <form>
  <div class="form-group">
    <label for="exampleInputEmail1">DNI</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="INGRESE DNI">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">NOMBRE</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE NOMBRE">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO PATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">APELLIDO MATERNO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="INGRESE APELLIDO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">TELEFONO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="TELEFONO">
  </div>
      <div class="form-group">
    <label for="exampleInputPassword1">GENERO</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="GENERO">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">FECHA DE NACIMIENTO: </label>
    <input type="date">
  </div>
 
  </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
        <button type="button" class="btn btn-primary">GUARDAR</button>
      </div>
    </div>
  </div></th>
       
  </tr>
  
  </table>
</div>
</section>




<center>

</center>
</div>
<%@include file="pie.jsp" %>

