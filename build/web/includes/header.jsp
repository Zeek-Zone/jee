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