<%-- 
    Document   : registrarcliente
    Created on : 30/11/2019, 10:20:03 AM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title></title>
    </head>

    <body>
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <img src="../../images/logo.png" class="img-fluid" alt="Responsive image" alt="Lorem Ipsum Bank">
                    </div>
                    <div class="col-lg-9 align-self-center">
                        <h1>Lorem Ipsum</h1>
                        <h1>Bank</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="container">
            <nav class="navbar sticky-top navbar-light bg-light">
                <a class="navbar-brand" href="../../index.html">Inicio</a>
                
            </nav>
            <hr>
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title">Registrar Cliente</div>
                            <form action="../../registrarCliente.do" name="registrar">
                                <div class="form-group">
                                    <label for="">Cedula</label>
                                    <input type="number" class="form-control" min=0 max="9999999999" placeholder="Ingrese Cedula" name="cedula" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Nombre</label>
                                    <input type="text" class="form-control" placeholder="Ingrese Nombre" name="nombre" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="email" class="form-control" placeholder="Ingrese email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Direccion</label>
                                    <input type="text" class="form-control"  placeholder="Ingrese Direccion" name="direccion" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Telefono</label>
                                    <input type="number" class="form-control" min=0 max="9999999999" placeholder="Ingrese numero" name="telefono" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Fecha</label>
                                    <input type="date" class="form-control" name="fecha" required>
                                </div>
                                <button type="submit" class="btn btn-primary" name="registar">Registrar</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            <footer class="text-center">
                <p>
                    Copyright © AÑO Autor: | Cod: | Correo:
                    Desarrollo De Aplicaciones Web - Ing.Sistemas - UFPS
                </p>
            </footer>
        </div>




        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>

</html>

