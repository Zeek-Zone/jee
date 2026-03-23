<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Etudiant" %>
<%@ include file="includes/auth.jsp" %>
<%@ include file="includes/header.jsp" %>
<body>

    <!-- 🔷 NAVBAR -->
    <%@ include file="includes/navbar.jsp" %>

    <%
    Etudiant e = (Etudiant) request.getAttribute("etudiant");
    %>

    <!-- 🔷 CONTENT -->
    <div class="container mt-4">
        <h2>Détails de l'étudiant</h2>
        
        <% if (e != null) { %>
        <div class="card shadow-sm mt-3" style="max-width: 600px;">
            <div class="card-body">
                <p><strong>ID:</strong> <%= e.getId() %></p>
                <p><strong>Nom:</strong> <%= e.getNom() %></p>
                <p><strong>Prénom:</strong> <%= e.getPrenom() %></p>
                <p><strong>Email:</strong> <%= e.getEmail() %></p>
            </div>
        </div>
        <% } else { %>
            <div class="alert alert-warning">Étudiant introuvable.</div>
        <% } %>

        <div class="mt-3">
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/etudiant/list">Retour à la liste</a>
            <% if (e != null) { %>
                <a class="btn btn-warning" href="${pageContext.request.contextPath}/editEtudiant.jsp?id=<%= e.getId() %>">Modifier</a>
            <% } %>
        </div>
    </div>
</body>
</html>
