<%-- 
    Document   : registrarcuenta
    Created on : 30/11/2019, 03:14:44 PM
    Author     : stive
--%>

<%@page import="java.util.Iterator"%>
<%@page import="DTO.Cliente"%>
<%@page import="NEGOCIO.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <p class="register-title">Por favor digitar los datos de la cuenta nueva:</p>
        <a class="btnStyle" href="./index.html"> HOME </a>
        <form name="registrarCta" action="registrarCuenta.do" class="register">

            <p>Nro. Cuenta (10 dígitos):<input class="register-input" maxlength="10" type="text" name="nrocuenta" value="" required /></p>    
            <h3>Tipo de Cuenta</h3>
            <select name="tipocuenta" required>
                <option> Elegir tipo </option>
                <option value="1"> Cuenta Ahorros</option>
                <option value="2"> Cuenta Corriente </option>           
            </select>
            <hr>
            <br>
            <h3>Cliente</h3>    
            <p>Nro. Cedula:<input class="register-input" maxlength="10" type="text" name="cedula" value="" /></p>
            <hr>           

            <input type="submit" value="Registrar" class="register-button" />

        </form>
    </body>
</html>
