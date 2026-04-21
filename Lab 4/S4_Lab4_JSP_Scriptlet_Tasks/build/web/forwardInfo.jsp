<%-- 
    Document   : forwardInfo
    Created on : 21 Apr 2026, 2:33:54 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forwarded Information</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">Forwarded Info</h2>
            
            <%
                // 3. Retrieve the forwarded parameters
                String name = request.getParameter("uname");
                String email = request.getParameter("email");
                String nationality = request.getParameter("nationality");
                String background = request.getParameter("background");
            %>

            <%-- 4. Display the data using JSP Expressions --%>
            <div class="result-box">
                <p><b>Name:</b> <%= name %></p>
                <p><b>Email:</b> <%= email %></p>
                <p><b>Nationality:</b> <%= nationality %></p>
                <p><b>Background:</b> <%= background %></p>
            </div>
        </div>
    </body>
</html>
