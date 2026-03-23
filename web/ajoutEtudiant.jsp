<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="includes/auth.jsp" %>
<%@ include file="includes/header.jsp" %>
<body>

    <!-- 🔷 NAVBAR -->
    <%@ include file="includes/navbar.jsp" %>
    <!-- 🔷 CONTENT -->
    <div class="container mt-4">
        <h2>Ajouter un Étudiant</h2>
        <div class="card shadow-sm mt-3" style="max-width: 600px;">
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/etudiant/add" method="POST">
                    <div class="mb-3">
                        <label class="form-label">Nom:</label>
                        <input type="text" class="form-control" name="nom" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Prénom:</label>
                        <input type="text" class="form-control" name="prenom" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email:</label>
                        <input type="email" class="form-control" name="email" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Ajouter</button>
                    <a href="${pageContext.request.contextPath}/etudiant/list" class="btn btn-secondary">Annuler</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
