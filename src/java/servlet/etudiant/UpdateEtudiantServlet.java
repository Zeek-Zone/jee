/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet.etudiant;

import dao.EtudiantDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Etudiant;

@WebServlet("/etudiant/update")
public class UpdateEtudiantServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        EtudiantDAO dao = new EtudiantDAO();
        Etudiant e = dao.getById(id);

        request.setAttribute("etudiant", e);
        request.getRequestDispatcher("/editEtudiant.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");

        Etudiant e = new Etudiant(nom, prenom, email);
        e.setId(id);

        EtudiantDAO dao = new EtudiantDAO();
        dao.update(e);

        response.sendRedirect("list");
    }
}