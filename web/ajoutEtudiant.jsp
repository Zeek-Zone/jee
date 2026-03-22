<%@ include file="includes/header.jsp" %>
<body>

    <!-- ? NAVBAR -->
    <%@ include file="includes/navbar.jsp" %>
    <!-- ? CONTENT -->
    <div class="container mt-4">
        <form action="${pageContext.request.contextPath}/etudiant/add" method="POST">
            Nom: <input type="text" name="nom"><br>
            Prenom: <input type="text" name="prenom"><br>
            Email: <input type="email" name="email"><br>
            <button type="submit">Ajouter</button>
        </form>
    </div>
</body>
</html>
