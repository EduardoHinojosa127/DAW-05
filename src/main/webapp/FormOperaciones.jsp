<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava05/Controlador" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Numero 1</label>
                    <input type="number" name="num1" class="form-control" id="exampleInputEmail1">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Numero 2</label>
                    <input type="number" name="num2" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="mb-3">
                    <select name="opr" class="form-select">
                    <option>Sumar</option>
                    <option>Restar</option>
                    <option>Multiplicar</option>
                    <option>Dividir</option>
                </select>
                </div>
                
                <button type="submit" class="btn btn-primary">Calcular</button>
                <a class='btn btn-danger' href="index.html">Cancelar</a>
                
            </form>
        </div>
    </body>

</html>
