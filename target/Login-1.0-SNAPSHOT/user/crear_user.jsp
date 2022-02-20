<%-- 
    Document   : crear_user
    Created on : 11 feb. 2022, 18:29:27
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Nuevo Usuario</title>
    </head>
    <body>
        <div class="container">
            <form action="UsuarioController">
                <div class="form-group">
                    <label>Nickname</label>
                    <input class="form-control" name="txtNick">
                </div>
                 <div class="form-group">
                    <label for="email">Persona</label>
                    <select class="form-control" name="cboPersona">
                        <option value="1">oliver rodriguez</option>
                        <option value="2">gerardo lopez</option>
                        <option value="3">michelle pascal</option>
                    </select>
                </div>
                 <div class="form-group">
                    <label for="email">Tipo Ocupacion</label>
                    <input class="form-control" name="txtOcup">
                </div>
                <div class="form-group">
                    <label for="pwd">Contraseña</label>
                    <input type="password" class="form-control" name="txtPass" autocomplete="off">
                </div>
                <br>
                <input type="submit" class="btn btn-rounded btn-success" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>
