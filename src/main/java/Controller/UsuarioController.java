/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.UsuarioDAO;
import Model.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UsuarioController", urlPatterns = {"/UsuarioController"})
public class UsuarioController extends HttpServlet {

    String listar = "user/user.jsp";
    String add = "user/crear_user.jsp";
    String edit = "user/editar_user.jsp";
    usuario usu = new usuario();
    UsuarioDAO usDAO = new UsuarioDAO();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuarioController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuarioController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acceso = "";
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("listar")){
            acceso = listar;
        }else if (accion.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (accion.equalsIgnoreCase("Agregar")) {
            
            String nickname = request.getParameter("txtNick");
            String pass = request.getParameter("txtPass");
            String tipo_ocup = request.getParameter("txtOcup");
            String id_persona = request.getParameter("cboPersona");
            usu.setNickname(nickname);
            usu.setContrasenia(pass);
            usu.setTipo_ocupacion(tipo_ocup);
            usu.setId_persona(Integer.parseInt(id_persona));
            usDAO.add(usu);
            acceso=listar;
            
        }else if(accion.equalsIgnoreCase("editar")){
            request.setAttribute("idusr", request.getParameter("id"));
            acceso=edit;
        }else if(accion.equalsIgnoreCase("Actualizar")){
            id = Integer.parseInt(request.getParameter("txtId"));
            String nickname = request.getParameter("txtNick");
            String pass = request.getParameter("txtPass");
            String tipo_ocup = request.getParameter("txtOcup");
            String id_persona = request.getParameter("cboPersona");
            String estado = request.getParameter("txtEstado");
            usu.setId_usuario(id);
            usu.setNickname(nickname);
            usu.setContrasenia(pass);
            usu.setTipo_ocupacion(tipo_ocup);
            usu.setId_persona(Integer.parseInt(id_persona));
            usu.setEstado(estado);
            usDAO.edit(usu);
            acceso=listar;
        }else if(accion.equalsIgnoreCase("eliminar")){
             id = Integer.parseInt(request.getParameter("id"));
             usu.setId_usuario(id);
             usDAO.delete(id);
             acceso = listar;
        }
        RequestDispatcher view = request.getRequestDispatcher(acceso);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
