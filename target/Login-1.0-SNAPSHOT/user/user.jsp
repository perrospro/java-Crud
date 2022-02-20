<%-- 
    Document   : user
    Created on : 20 feb. 2022, 8:02:32
    Author     : Georgie
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Model.usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Usuarios</title>
    </head>
    <body>
        <h1>Administracion de Usuarios</h1>
        <a class="btn btn-rounded btn-success" href="UsuarioController?accion=add">Agregar Nuevo</a>
        <div class="container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>Nickname</th>
                        <th>Persona</th>
                        <th>Estado</th>
                        <th>Fecha</th>
                        <th>Tipo Ocupacion</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <% 
                    UsuarioDAO usDAO = new UsuarioDAO();
                    List<usuario>list = usDAO.listar();
                    Iterator<usuario>iter= list.iterator();
                    usuario us = null;
                    while (iter.hasNext()) {
                            us=iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%=us.getNickname()%></td>
                        <td><%=us.getPersona()%></td>
                        <td><%=us.getEstado()%></td>
                        <td><%=us.getFecha()%></td>
                        <td><%=us.getTipo_ocupacion()%></td>
                        <td>
                            <a href="UsuarioController?accion=editar&id=<%=us.getId_usuario()%>">Editar</a>
                            <a href="UsuarioController?accion=eliminar&id=<%=us.getId_usuario()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>


    </body>
</html>
