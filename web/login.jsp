<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="includes/header.jsp" %>
<body>

    <!-- 🔷 NAVBAR -->
    <%@ include file="includes/navbar.jsp" %>
    
    <!-- 🔷 CONTENT -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Login</h4>
                    </div>
                    <div class="card-body">
                        <% if (request.getAttribute("error") != null) { %>
                            <div class="alert alert-danger" role="alert">
                                <%= request.getAttribute("error") %>
                            </div>
                        <% } %>

                        <form action="login" method="POST">
                            <div class="mb-3">
                                <label class="form-label">Username:</label>
                                <input type="text" class="form-control" name="username" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password:</label>
                                <input type="password" class="form-control" name="password" required>
                            </div>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <small>Pas encore de compte ? <a href="${pageContext.request.contextPath}/register.jsp">Créer un compte</a></small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
