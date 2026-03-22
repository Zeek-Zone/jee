<%-- 
    Document   : login
    Created on : 19 mars 2026, 00:31:30
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
        <h2>Login</h2>

        <form action="login" method="POST">
            Username: <input type="text" name="username"><br>
            Password: <input type="password" name="password"><br>
            <button type="submit">Login</button>
        </form>
        <a href="${pageContext.request.contextPath}/register.jsp">Creer compte</a>
    </body>
</html>
