<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String utilisateur = (String) session.getAttribute("utilisateur");

    if(utilisateur == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<!-- 🔷 NAVBAR -->
<%@ include file="includes/navbar.jsp" %>
<!-- 🔷 CONTENT -->
<div class="container mt-4">

    <h2>Bienvenue, <%= utilisateur %> 👋</h2>

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