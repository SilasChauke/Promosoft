/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Clases.Metodos;
import Clases.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alberto
 */
public class Registrar extends HttpServlet {

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
        processRequest(request, response);
         response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("utf-8");
        String nom_usu, ROL, CURP_usu , Mail_usu, pass_usu;
            int id_Rol;
           
         
            nom_usu = request.getParameter("nom_usu");
            CURP_usu = request.getParameter("Curp_usu");            
            Mail_usu = request.getParameter("Mail_usu");
            pass_usu = request.getParameter("pass_usu");
            ROL = request.getParameter("Id_rol");
            id_Rol =Integer.parseInt (ROL);
            
            
            Usuario b = new Usuario();
            
            b.setNom(nom_usu);
            b.setCurp(CURP_usu);
            b.setMail(Mail_usu);
            b.setPass(pass_usu);
            b.setRol(id_Rol);
            
            int estatus = Metodos.GuardarUsuario(b);
            
            if(estatus>0){
                response.sendRedirect("index.jsp");
            }else{
                System.out.println("No se guardó el usuario: "+nom_usu);
                response.sendRedirect("registro.jsp");
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
