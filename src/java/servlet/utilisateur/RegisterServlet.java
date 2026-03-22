package servlet.utilisateur;

import dao.UtilisateurDAO;
import model.Utilisateur;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");

        // Vérification password_confirm
        if(!password.equals(confirm)) {
            request.setAttribute("error", "Passwords do not match");
            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
            return;
        }

        // ✔ Utilisateur au lieu de User
        Utilisateur utilisateur = new Utilisateur(username, password,1);

        UtilisateurDAO dao = new UtilisateurDAO();

        if(dao.register(utilisateur)) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("error", "Registration failed");
            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
        }
    }
}