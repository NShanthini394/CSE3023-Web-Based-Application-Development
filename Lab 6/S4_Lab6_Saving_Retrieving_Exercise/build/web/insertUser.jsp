<%-- 
    Document   : insertUser
    Created on : 12 May 2026, 8:45:54 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2>Register New Account</h2>
            <form action="processUser.jsp" method="POST">
                <table>
                    <tr><td>Username:</td><td><input type="text" name="username" required></td></tr>
                    <tr><td>Password:</td><td><input type="password" name="password" required></td></tr>
                    <tr><td>First Name:</td><td><input type="text" name="firstname" required></td></tr>
                    <tr><td>Last Name:</td><td><input type="text" name="lastname" required></td></tr>
                </table>
                <br>
                <input type="submit" value="Register">
            </form>
            <br>
            <a href="login.jsp">Already have an account? Login here</a>
        </div>
    </body>
</html>
