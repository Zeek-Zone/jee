<%@ page contentType="text/html;charset=UTF-8" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">

        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            Gestion Etudiants
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <% if (session.getAttribute("utilisateur") != null) { %>
                <!-- LEFT -->
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/etudiant/list">Étudiants</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/ajoutEtudiant.jsp">Ajouter Étudiant</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/utilisateur/list">Utilisateurs</a>
                    </li> -->
                </ul>

                <!-- RIGHT -->
                <span class="navbar-text text-white me-3">
                    👤 <%= session.getAttribute("utilisateur") %>
                </span>
                <a class="btn btn-danger" href="${pageContext.request.contextPath}/logout">Logout</a>
            <% } else { %>
                <ul class="navbar-nav me-auto"></ul>
                <!-- RIGHT -->
                <a class="btn btn-outline-light me-2" href="${pageContext.request.contextPath}/login.jsp">Login</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/register.jsp">Register</a>
            <% } %>
        </div>
    </div>
</nav>