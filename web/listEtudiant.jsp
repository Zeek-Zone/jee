<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List"%>
<%@ page import="model.Etudiant"%>
<%@ include file="includes/auth.jsp" %>
<%@ include file="includes/header.jsp" %>
<body>

    <!-- 🔷 NAVBAR -->
    <%@ include file="includes/navbar.jsp" %>
    <!-- 🔷 CONTENT -->
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h2>Liste des Étudiants</h2>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/ajoutEtudiant.jsp">Ajouter Étudiant</a>
        </div>

        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Nom</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Etudiant> liste = (List<Etudiant>) request.getAttribute("liste");
                        if (liste != null) {
                            for (Etudiant e : liste) {
                    %>
                    <tr>
                        <td><%= e.getNom() %></td>
                        <td>
                            <a class="btn btn-sm btn-info" href="${pageContext.request.contextPath}/etudiant/details?id=<%= e.getId()%>">Détails</a>
                            <a class="btn btn-sm btn-warning" href="${pageContext.request.contextPath}/etudiant/update?id=<%= e.getId()%>">Modifier</a>
                            <a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/etudiant/delete?id=<%= e.getId()%>">Supprimer</a>
                        </td>
                    </tr>
                    <%      }
                        } else {
                    %>
                    <tr>
                        <td colspan="2" class="text-center">Aucun étudiant trouvé.</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
