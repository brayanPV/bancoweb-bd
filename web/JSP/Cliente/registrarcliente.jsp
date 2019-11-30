<%-- 
    Document   : registrarcliente
    Created on : 30/11/2019, 10:20:03 AM
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
        <p class="register-title">Por favor digitar los datos del cliente nuevo:</p>
        <a class="btnStyle" href="../../index.html"> HOME </a>
        
        <form name="registrar" action="../../registrarCliente.do" class="register">

            <p>Cedula:<input class="register-input" type="number" name="cedula" value="" /></p>    
            <p>Nombre:<input class="register-input" type="text" name="nombre" value="" /></p>    
            <p>E-mail:<input class="register-input"  type="email" name="email" value="" /></p>    
            <p>Direccion:<input class="register-input"  type="text" name="direccion" value="" /></p>    
            <p>Telf:<input class="register-input"  type="number" name="telefono" value="" /></p>    
            <p>Fecha:<input class="register-input"  type="date" name="fecha" value="" /></p>
            <input type="submit" value="registrar" name="registrar" class="register-button" />

        </form>
    </body>
</html>
