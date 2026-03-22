<%-- 
    Document   : listEtudiant
    Created on : 22 mars 2026, 21:45:51
    Author     : ok
--%>

<%@page import="java.util.List"%>
<%@page import="model.Etudiant"%>

<%@ include file="includes/header.jsp" %>
<body>

    <!-- ? NAVBAR -->
    <%@ include file="includes/navbar.jsp" %>
    <!-- ? CONTENT -->
    <div class="container mt-4">
        <a href="ajoutEtudiant.jsp">Ajouter</a>

        <%
            for (Etudiant e : (List<Etudiant>) request.getAttribute("liste")) {
        %>

        <tr>
            <td><%= e.getNom()%></td>

            <td>
                <a href="${pageContext.request.contextPath}/etudiant/details?id=<%= e.getId()%>">Details</a>

                <a href="${pageContext.request.contextPath}/etudiant/delete?id=<%= e.getId()%>">Delete</a>

                <a href="${pageContext.request.contextPath}/editEtudiant.jsp?id=<%= e.getId()%>">Edit</a>
            </td>
        </tr>

        <% }%>
    </div>
</body>

</html>
