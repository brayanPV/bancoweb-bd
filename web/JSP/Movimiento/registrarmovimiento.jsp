<%-- 
    Document   : registrarMovimiento
    Created on : 1/12/2019, 03:52:29 PM
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
        <form name="operadcion" method="post" action="movimiento.do" class="register">
            <p>Seleccionar Operacion<p>
                <select name="tipo" required id="dropdown">
                    <option value="1">Consignar</option>
                    <option value="2">Retirar</option>
                    <option value="3">Transferir</option>
                </select>
            <p> ingresar cuenta origen <p>
                <input type="number" class="register-input" name="cuentaOrigen" value="" min="1" required placeholder="ingrese numero de cuenta" />

            <p> ingrese cuenta destino <p>
                <input type="number" class="register-input" name="cuentaDestino" value="" id="destino" placeholder="ingrese cuenta destino" disabled />

            <p> ingresar monto<p>
                <input type="number" class="register-input" name="valor" value="0" min="1" required />

            <p>Fecha:</p>
            <input class="register-input"  type="date" name="fecha" value="" />



            <input type="submit" value="Registrar" name="registrar" class="register-button" />
        </form>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {

                $('#dropdown').change(function () {
                    if ($(this).val() == 3) {
                        $('#destino').prop("disabled", false);
                    } else {
                        $('#destino').prop("disabled", true);
                    }
                });

            });

        </script>
    </body>
</html>
