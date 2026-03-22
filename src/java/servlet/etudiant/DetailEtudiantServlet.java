package servlet.etudiant;
import dao.EtudiantDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Etudiant;

@WebServlet("/etudiant/details")
public class DetailEtudiantServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        EtudiantDAO dao = new EtudiantDAO();
        Etudiant e = dao.getById(id);

        request.setAttribute("etudiant", e);

        request.getRequestDispatcher("/detailEtudiant.jsp")
               .forward(request, response);
    }
}