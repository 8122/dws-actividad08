<%-- 
    Document   : formulario1
    Created on : 26-sep-2016, 9:57:19
    Author     : alumno
--%>

<%@page contentType="text/html;UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.AlquilerBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>formulario1</title>
    </head>
    <body bgcolor="#D8D8D8">
        <% if (
                (request.getParameter("nombre")==null || request.getParameter("nombre").equals("")) &&
                (request.getParameter("dias")==null || request.getParameter("dias").equals("")) &&
                (request.getParameter("edad")==null || request.getParameter("edad").equals("")) &&
                (request.getParameter("formaPago")==null || request.getParameter("formaPago").equals("")) &&
                (request.getParameter("extras")==null || request.getParameter("extras").equals(""))
        ) { %>
        <form name="formulario1" method="POST" action="formulario1.jsp">
            <table width="900" align="center" border="0" cellspacing="2" bgcolor="#F2F5A9">
                <thead>
                    <tr>
                        <th colspan="6" bgcolor="#FFBF00" align="left">VIDEO-CLUB ONLINE</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="2%"></td>
                        <td width="25%" bgcolor="#688A08"><b>Nombre Película</b></td>
                        <td width="25%"><input type="text" name="nombre" value="" size="16" /></td>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td bgcolor="#688A08"><b>Número Días Alquiler</b></td>
                        <td><input type="text" name="dias" value="1" size="16"/></td>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td bgcolor="#688A08"><b>Edad Cliente</b></td>
                        <td width="19%" bgcolor="#688A08"><b>Forma de Pago</b></td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td>
                            <input type="radio" name="edad" value="Menor de 7 años" />Menor de 7 años<br>
                            <input type="radio" name="edad" value="Menor de 14 años" />Menor de 14 años<br>
                            <input type="radio" name="edad" value="Menor de 18 años" />Menor de 18 años<br>
                            <input type="radio" name="edad" value="Mayor de 18 años" />Mayor de 18 años
                        </td>
                        <td><select name="formaPago">
                                <option>VISA</option>
                                <option>Cheque</option>
                                <option>Contado</option>
                                <option>Metálico</option>
                            </select></td>
                            <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td width="44%" colspan="2" bgcolor="#688A08"><b>Especificaciones Extras</b></td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td width="74%" colspan="3">
                            <textarea name="extras" rows="6" cols="74"></textarea>
                        </td>
                        <td></td>

                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td colspan="4" align="center">
                            <input type="submit" value="Enviar Pedido" name="enviar" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="Borrar Formulario" name="borrar" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <% } else { %>
            <% String nombre, dias, edad, formaPago, extras; %>
            <% 
                nombre = request.getParameter("nombre");
                dias = request.getParameter("dias");
                edad = request.getParameter("edad");
                formaPago = request.getParameter("formaPago");
                extras = request.getParameter("extras");
            %>
            <jsp:setProperty name="usuario" property="nombre" value="<%=nombre%>" />
            <jsp:setProperty name="usuario" property="dias" value="<%=dias%>" />
            <jsp:setProperty name="usuario" property="edad" value="<%=edad%>" />
            <jsp:setProperty name="usuario" property="formaPago" value="<%=formaPago%>" />
            <jsp:setProperty name="usuario" property="extras" value="<%=extras%>" />
            <jsp:forward page="/formulario2.jsp" ></jsp:forward>
        <% } %>
    </body>
</html>
