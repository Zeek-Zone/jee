package servlet.etudiant;

import dao.EtudiantDAO;
import model.Etudiant;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/etudiant/add")
public class AjoutEtudiantServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");

        Etudiant e = new Etudiant(nom, prenom, email);

        EtudiantDAO dao = new EtudiantDAO();
        boolean success = dao.create(e);

        if(success){
            request.setAttribute("etudiant", e);

            RequestDispatcher rd = request.getRequestDispatcher("/detailEtudiant.jsp");
            rd.forward(request, response);
        } else {
            response.getWriter().println("Erreur lors de l'insertion");
        }
    }
}