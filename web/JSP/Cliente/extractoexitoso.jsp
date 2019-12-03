<%-- 
    Document   : extratoexitoso
    Created on : 2/12/2019, 05:43:13 PM
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
       <%
            String banquito=(String)(request.getSession().getAttribute("banquito"));
        %>
        <h1 class="register-title"><%=banquito%></h1>
        <p>
            <a href="./index.html">Regresar a Inicio</a>
        </p>
    </body>
</html>
