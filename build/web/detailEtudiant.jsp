<%-- 
    Document   : detailEtudiant
    Created on : 22 mars 2026, 21:57:32
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
        <%@ page import="model.Etudiant" %>

<%
Etudiant e = (Etudiant) request.getAttribute("etudiant");
%>

<h2>Détails de l'étudiant</h2>

<p>ID: <%= e.getId() %></p>
<p>Nom: <%= e.getNom() %></p>
<p>Prénom: <%= e.getPrenom() %></p>
<p>Email: <%= e.getEmail() %></p>

<a href="etudiant">Retour à la liste</a>
    </body>
</html>
