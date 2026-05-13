<%-- 
    Document   : login
    Created on : 12 May 2026, 4:37:03 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Login</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2>Login</h2>
            <%-- Display error message if login failed --%>
            <p style="color: red;"><%= (request.getParameter("msg") != null) ? request.getParameter("msg") : "" %></p>
            
            <form action="doLogin.jsp" method="POST">
                <table>
                    <tr><td>Username:</td><td><input type="text" name="username" required></td></tr>
                    <tr><td>Password:</td><td><input type="password" name="password" required></td></tr>
                </table>
                <br>
                <input type="submit" value="Login">
            </form>
        </div>
    </body>
</html>
