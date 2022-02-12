<%-- 
    Document   : dashboard
    Created on : 8 feb. 2022, 19:05:05
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        
        <%
            String access = (String) session.getAttribute("access");
            
            if(access == "cliente")
            {
        %>
     
            <ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Active</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Servicios</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">gestion vehiculos</a></li>
      <li><a class="dropdown-item" href="#">Agendar turno</a></li>
      <li><a class="dropdown-item" href="#"></a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Separated link</a></li>
    </ul>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled">Disabled</a>
  </li>
</ul>
        <%}%>

<!-- ----------------------------------------------------------------- -->
        
        <%
            
            if(access == "admin")
            {
        %>
            <ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Ver contabilidad</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Empleadoa</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Ver desempeño de los empleados</a></li>
      <li><a class="dropdown-item" href="#">ver tareas asignadas a los empleados </a></li>
      <li><a class="dropdown-item" href="#">gestionar empleado</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Separated link</a></li>
    </ul>
    
  </li>
   <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Inventario</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Proovedores</a></li>
      <li><a class="dropdown-item" href="#">Stok </a></li>
      <li><a class="dropdown-item" href="#">gestionar empleado</a></li>
     
    </ul>
    
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"></a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled">Facturas</a>
  </li>
</ul>
            
            <h1> si vale won </h1>
        <%}%>
        
        <!-- ------------------------------------------------------------- -->
        <%
            
            if(access == "mecanica")
            {
        %>
            <ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Tareas</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Servicios</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">ver puntuaciones</a></li>
      <li><a class="dropdown-item" href="#">Agendar turno</a></li>
      <li><a class="dropdown-item" href="#">generear una cotizacion </a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Separated link</a></li>
    </ul>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled">Disabled</a>
  </li>
</ul>
            
            <h1> si vale won </h1>
        <%}%>
      
</body>
</html>
