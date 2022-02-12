/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.LoginDAO;
import Model.UsuarioModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            UsuarioModel usr = new UsuarioModel();
            LoginDAO ldao = new LoginDAO();
            HttpSession sesion = request.getSession();
            String acceso = "";
            int resp = 0;
            int rol = 0;
            if (request.getParameter("btnLogin") != null) {
                String user = request.getParameter("txtUser");
                String pass = request.getParameter("txtPass");

                usr.setNickname(user);
                usr.setContrasenia(pass);
                try {
                    resp = ldao.verificarCredenciales(usr);
                    rol = ldao.verificarRol(usr);
                } catch (Exception e) {
                    Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, e);
                }
                RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
                if (resp != 0) {
                    switch (rol) {
                        case 1:
                            acceso = "cliente";
                            break;
                        case 2:
                            acceso = "admin";
                            break;
                        case 3:
                            acceso = "mecanico";
                            break;              
                    }
                    sesion.setAttribute("access", acceso);
                    rd.forward(request, response);
                } else {
                    response.sendRedirect("/Login/index.jsp?resp=" + resp);
                }

            }
        
    }


}
