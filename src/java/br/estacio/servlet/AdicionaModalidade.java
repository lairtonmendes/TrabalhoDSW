/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.estacio.servlet;

import br.estacio.domain.Modalidade;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.estacio.jdbc.ModalidadeDAO;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@WebServlet(name = "AdicionaModalidade", urlPatterns = {"/adicionaModalidade"})
public class AdicionaModalidade extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        
        String nome = request.getParameter("nome");
        int ouro = Integer.parseInt(request.getParameter("ouro"));
        System.out.println(request.getParameter("prata"));
        int prata = Integer.parseInt(request.getParameter("prata"));
        int bronze = Integer.parseInt(request.getParameter("bronze"));
        Modalidade m = new Modalidade(nome, ouro, prata, bronze);
        try {
            ModalidadeDAO dao = new ModalidadeDAO();
            dao.adiciona(m);
            response.sendRedirect("modalidade.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdicionaModalidade.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    
   

}
