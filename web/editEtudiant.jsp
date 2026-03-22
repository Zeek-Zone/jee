<%-- 
    Document   : editEtudiant
    Created on : 22 mars 2026, 21:50:15
    Author     : ok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="${pageContext.request.contextPath}/etudiant/update" method="POST">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">

    Nom: <input type="text" name="nom"><br>
    Prenom: <input type="text" name="prenom"><br>
    Email: <input type="email" name="email"><br>

    <button type="submit">Update</button>
</form>
    </body>
</html>
