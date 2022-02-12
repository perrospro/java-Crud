
<%@page import="java.sql.Connection"%>
<%@page import="DB.ConnectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <title>Nombre del Proyecto</title>
  
    </head>
    <%
        String rsp = "";
        if (request.getParameter("resp") != null) {
            int r = Integer.parseInt(request.getParameter("resp"));
            if (r == 0) {
                rsp = "Error: Las credenciales son incorrectas!";
            }
        }

        /* ConnectionDB db = new ConnectionDB();
        Connection cn = db.setConnection();
        if (cn == null) {
            out.print("error en la conexion");
        } else {
              out.print("si vale ");
        }*/
    %>
    <body ">
    <center>
        
        <div class="container mt-5">
            <form method="post" action="/Login/LoginController">
                <div class="card" style="width: 20rem; height: 20rem;">
                    <div class="card-body">
                        <h3>Ingresar</h3> <br>
                        
                        <i class="bi bi-person-circle">
                            
                        </i><input type="text" name="txtUser" placeholder="Ingrese su usuario" class="form-control mt-2" required>
                       
                       <input type="password" name="txtPass"  placeholder="Ingrese la contraseña" class="form-control mt-2" required>
                        <input type="submit" class="btn btn-rounded btn-success mt-2" name="btnLogin" value="Ingresar">
                        <p style="color: red;"><%//=rsp%></p>
                        <a href="crear_user.jsp"> crear usuario</a>
                    </div>
                </div>

            </form>
        </div>
    </center>

</body>
</html>
