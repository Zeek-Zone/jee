<%@ page contentType="text/html;charset=UTF-8" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">

        <a class="navbar-brand" href="${pageContext.request.contextPath}/home.jsp">
            Gestion Etudiants
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <!-- LEFT -->
            <ul class="navbar-nav me-auto">

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/etudiant/list">
                        Étudiants
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/ajoutEtudiant.jsp">
                        Ajouter Étudiant
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/utilisateur/list">
                        Utilisateurs
                    </a>
                </li>

            </ul>

            <!-- RIGHT -->
            <span class="navbar-text text-white me-3">
                👤 <%= (utilisateur != null ? utilisateur : "Guest") %>
            </span>

            <a class="btn btn-danger" href="${pageContext.request.contextPath}/logout">
                Logout
            </a>

        </div>
    </div>
</nav>