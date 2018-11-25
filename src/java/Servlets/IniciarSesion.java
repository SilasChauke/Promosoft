package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Clases.Usuario;
import Clases.Metodos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author paco0
 */
public class IniciarSesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("utf-8");
        HttpSession sesion = request.getSession(true);
        String Mail, pass;
      
        Mail = request.getParameter("Mail_usu");
        pass = request.getParameter("pass_usu");
             
        if(sesion.getAttribute("Mail_usu")!=null){
            response.sendRedirect("registro_error.jsp");
        }else{
            Usuario e = Metodos.verificarUsuario(Mail, pass);
            System.out.println(e.getId());
            if(e.getMail()!=null){
                sesion.setAttribute("Mail_usu", Mail);
                response.sendRedirect("contenido.jsp");
            }else{
                response.sendRedirect("registro_error.jsp");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession sesion = request.getSession(true);
        String Mail, pass;
      
        Mail = request.getParameter("Mail_usu");
        pass = request.getParameter("pass_usu");
             
        if(sesion.getAttribute("Mail_usu")!=null){
            response.sendRedirect("registro_error.jsp");
        }else{
            Usuario e = Metodos.verificarUsuario(Mail, pass);
            System.out.println(e.getId());
            if(e.getMail()!=null){
                sesion.setAttribute("Mail_usu", Mail);
                response.sendRedirect("contenido.jsp");
            }else{
                response.sendRedirect("registro_error.jsp");
            }
        }
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
