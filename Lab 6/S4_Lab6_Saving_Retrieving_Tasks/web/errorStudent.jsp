<%-- 
    Document   : errorStudent
    Created on : 12 May 2026, 7:15:00 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Input Error</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card" style="border-left: 5px solid red;">
            <h2 style="color: red;">Validation Error</h2>
            <p>Sorry, there was an issue with your input:</p>
            <p><strong><%= exception.getMessage() %></strong></p>
            <br>
            <a href="insertStudent.jsp">Go Back and Try Again</a>
        </div>
    </body>
</html>