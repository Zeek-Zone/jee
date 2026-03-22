package servlet.utilisateur;

import dao.UtilisateurDAO;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UtilisateurDAO dao = new UtilisateurDAO();

        if(dao.login(username, password)) {

            HttpSession session = request.getSession();

            // ✔ changer clé session aussi
            session.setAttribute("utilisateur", username);

            response.sendRedirect("index.jsp");

        } else {
            request.setAttribute("error", "Invalid credentials");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }
}