<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="includes/auth.jsp" %>
<%@ include file="includes/header.jsp" %>
<body>

<!-- 🔷 NAVBAR -->
<%@ include file="includes/navbar.jsp" %>

<!-- 🔷 CONTENT -->
<div class="container mt-4">
    <h2>Bienvenue, <%= session.getAttribute("utilisateur") %> 👋</h2>
    <p>Utilise la barre de navigation pour gérer les étudiants et utilisateurs.</p>

    <!-- Quick actions -->
    <div class="mt-4">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/etudiant/list">
            Voir les étudiants
        </a>
        <a class="btn btn-success" href="${pageContext.request.contextPath}/ajoutEtudiant.jsp">
            Ajouter un étudiant
        </a>
    </div>
</div>

</body>
</html>