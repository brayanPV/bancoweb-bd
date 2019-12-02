<%-- 
    Document   : extractobancario
    Created on : 2/12/2019, 05:14:00 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="registrar" action="extracto.do" class="register">

            <p>Cedula:<input class="register-input" type="number" name="cedula" value="" /></p>   
            <p>Fecha Inicio:<input class="register-input"  type="date" name="fechaInicio" value="" /></p>
            <p>Fecha Final:<input class="register-input"  type="date" name="fechaFinal" value="" /></p>
            <input type="submit" value="registrar" name="registrar" class="register-button" />

        </form>
    </body>
</html>
