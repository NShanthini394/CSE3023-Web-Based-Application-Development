<%-- 
    Document   : main
    Created on : 12 May 2026, 4:37:52 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h1>Welcome Back!</h1>
            <p><strong>Username:</strong> <%= session.getAttribute("user") %></p>
            <p><strong>First Name:</strong> <%= session.getAttribute("fname") %></p>
            <p><strong>Last Name:</strong> <%= session.getAttribute("lname") %></p>
            <br>
            <a href="login.jsp">Logout</a>
        </div>
    </body>
</html>