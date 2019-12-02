<%-- 
    Document   : editarCliente
    Created on : 1/12/2019, 08:34:40 PM
    Author     : Carlos Jose
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DTO.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% Cliente clientesito = (Cliente) (request.getSession().getAttribute("cliente"));
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    %>
    <body>
        <p class="register-title">Por favor digitar los datos del cliente nuevo:</p>
        <a class="btnStyle" href="./redir.do?url=./JSP/Cliente/verClientes.jsp"> Volver </a>

        <form name="registrar" action="actualizarCliente.do" class="register">

            <p>Cedula:<input class="register-input" type="number" name="cedula" value="<%= clientesito.getCedula()%>"  readonly="readonly"/></p>    
            <p>Nombre:<input class="register-input" type="text" name="nombre" value="<%= clientesito.getNombre()%>" /></p>    
            <p>E-mail:<input class="register-input"  type="email" name="email" value="<%= clientesito.getEmail()%>" /></p>    
            <p>Direccion:<input class="register-input"  type="text" name="direccion" value="<%= clientesito.getDircorrespondencia()%>" /></p>    
            <p>Telf:<input class="register-input"  type="number" name="telefono" value="<%= clientesito.getTelefono()%>" /></p>    
            <p>Fecha:<input class="register-input"  type="date" name="fecha" value="<%= format.format(clientesito.getFechanacimiento())%>" /></p>
            <input type="submit" value="Actualizar" name="registrar" class="register-button" />

        </form>
    </body>
</html>
