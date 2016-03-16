/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.estacio.servlet;

import br.estacio.jdbc.PaisDAO;
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

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@WebServlet(name = "RemovePais", urlPatterns = {"/removePais"})
public class RemovePais extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));

        PaisDAO dao;
        try {
            dao = new PaisDAO();
            dao.remove(id);

            response.sendRedirect("paises.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RemovePais.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
