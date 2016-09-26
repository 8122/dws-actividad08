<%-- 
    Document   : formulario1
    Created on : 26-sep-2016, 9:57:19
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.AlquilerBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#D8D8D8">
        <form name="formulario1" action="mailto:videoclub@gmail.com" enctype="text/plain">
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
                            <input type="radio" name="edad" value="menor7" />Menor de 7 años<br>
                            <input type="radio" name="edad" value="menor14" />Menor de 14 años<br>
                            <input type="radio" name="edad" value="menor18" />Menor de 18 años<br>
                            <input type="radio" name="edad" value="mayor18" />Mayor de 18 años
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
                        <td width="44%" colspan="2" bgcolor="#688A08"><b>Especificaciones Extra</b></td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td width="74%" colspan="3">
                            <textarea name="especificaciones" rows="6" cols="74"></textarea>
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
    </body>
</html>
