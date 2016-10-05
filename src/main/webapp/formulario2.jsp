<%-- 
    Document   : formulario2
    Created on : 26-sep-2016, 9:59:19
    Author     : alumno
--%>

<%@page contentType="text/html;UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.AlquilerBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Usted indicó la siguiente información:</b><br>
        <b>Pelicula: </b><jsp:getProperty name="usuario" property="nombre" /><br>
        <b>Días de alquiler: </b><jsp:getProperty name="usuario" property="dias" /><br>
        <b>Edad cliente: </b><jsp:getProperty name="usuario" property="edad" /><br>
        <b>Forma de pago: </b><jsp:getProperty name="usuario" property="formaPago" /><br>
        <b>Extras: </b><jsp:getProperty name="usuario" property="extras" /><br>
        <b>¡Disfrute de la pelicula</b>
    </body>
</html>
