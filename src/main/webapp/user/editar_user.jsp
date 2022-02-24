
<%@page import="Model.usuario"%>
<%@page import="Model.Persona"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="DAO.PersonaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <%
                UsuarioDAO usDAO = new UsuarioDAO();                
                int id = Integer.parseInt((String) request.getAttribute("idusr"));
                usuario usu = (usuario) usDAO.list(id);


            %>
            <form action="UsuarioController">
                <input class="form-control" type="hidden"  name="txtId" value="<%= usu.getId_usuario()%>">
                <div class="form-group">
                    <label>Nickname</label>
                    <input class="form-control" name="txtNick" value="<%= usu.getNickname()%>">
                </div>
                <div class="form-group">
                    <label for="email">Persona</label>
                        <select class="form-control" name="cboPersona">
                            <% 
                                PersonaDAO psDAO = new PersonaDAO();
                                List<Persona>list =psDAO.listPersona();
                                Iterator<Persona>iter = list.iterator();
                                Persona ps= null;
                                while (iter.hasNext()) {
                                        ps=iter.next();                                        
                                    
                            %>
                                <option value="<%=ps.getId_persona()%>"><%=ps.getNombre()%></option>
                            <%}%>
                        </select>
                </div>
                <div class="form-group">
                    <label for="email">Tipo Ocupacion</label>
                    <input class="form-control" name="txtOcup" value="<%=usu.getTipo_ocupacion()%>">
                </div>
                <div class="form-group">
                    <label for="pwd">Contraseña</label>
                    <input type="text" class="form-control" name="txtPass" autocomplete="off" value="<%=usu.getContrasenia()%>">
                </div>
                <div class="form-group">
                    <label for="email">Estado</label>
                    <input type="text" class="form-control" name="txtEstado" value="<%=usu.getEstado()%>">
                </div>
                <br>
                <input type="submit" class="btn btn-rounded btn-success" name="accion" value="Actualizar">
                <a class="btn btn-rounded btn-danger" href="UsuarioController?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
