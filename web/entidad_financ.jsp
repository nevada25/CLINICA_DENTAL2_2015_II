<%-- 
    Document   : entidad_financ
    Created on : 01/09/2015, 08:57:23 PM
    Author     : Luis Lavado
--%>
<%@include file="cabeza.jsp" %>
<h2>Entidades financieras</h2>
        <hr>
        <form name="form" method="post" action="entidad_financ.jsp">

            <table align="center">
                <tr>
                    <td height="25">Nombre:</td>
                    <td><input type="text" maxlength="120" size="30" required="" class=""/> </td>
                </tr>
                <tr>
                    <td height="35">Logo:</td>
                    <td><input type="text" maxlength="20" size="10"/> </td>
                </tr>
                <tr>
                    <td height="25">Ciudad:</td>
                    <td><input type="text" maxlength="20" size="10"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="opcion" value="Registrar" class="btn btn-primary"/>
                        <a href="inicio.jsp" class="btn btn-default">Cancelar</a>
                        <input type="submit" name="opcion" value="configurar" class="btn btn-primary"/>
                    </td>
                </tr>
            </table>
        </form>
        <!-- -->
        <br>
        <%@include file="pie.jsp" %>