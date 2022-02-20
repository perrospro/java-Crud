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
        <title>JSP Page</title>
    </head>
    <body>
        <div  class="contorno">


            <form name = "form1" action = "/Orodriguez2/Servlet" method = "post"
                  onsubmit = "return validarForma(this)">
                <input type = "hidden" name = "oculto" value = "valorOwidth =culto"/>

                1. DATOS PERSONALES:  

                NOMBRES DEL PACIENTE: 
                <input class = "txt" type = "text" name = "Nombre"
                       value = "" onfocus = "this.select()"/>

                <br>
                    
                APELLIDO DEL PACIENTE:


                <input class = "txt" type = "text" name = "Apellido"
                       value = "" onfocus = "this.select()"/>

                <br>
                CEDULA:
                <input class = "txt" type = "text" name = "Correo"
                       value = "" onfocus = "this.select()"/>
                <br>
                CORREO ELECTRONICO:
                <input class = "txt" type = "text" name = "Correo"
                       value = "" onfocus = "this.select()"/>

                <br>
                DIRECCI&Oacute;N:
                    <input class = "txt" type = "text" name = "Direccion"
                           value = "" onfocus = "this.select()"/>
                <br>
                        TEl&Eacute;FONO <!-- comment -->
                   
                        <input class = "txt" type = "text" name = "Telefono"
                               value = "" onfocus = "this.select()"/>
                <hr>
                </form >
                <input type = "reset" value = "Limpiar" class = "limpiar"/>
                <input type = "submit" value = "Enviar" class = "enviar"/>
        </div>
    </body>
</html>
