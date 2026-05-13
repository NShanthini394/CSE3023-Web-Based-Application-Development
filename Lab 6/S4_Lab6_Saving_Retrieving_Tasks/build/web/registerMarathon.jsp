<%-- 
    Document   : registerMarathon
    Created on : 12 May 2026, 8:17:37 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Marathon Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2>Marathon Event Registration</h2>
            <form action="processMarathon.jsp" method="POST">
                <table>
                    <tr><td>IC No:</td><td><input type="text" name="icNo" required></td></tr>
                    <tr><td>Full Name:</td><td><input type="text" name="name" required></td></tr>
                    <tr><td>Category:</td><td>
                        <select name="category">
                            <option value="5KM">5KM Fun Run</option>
                            <option value="10KM">10KM Run</option>
                            <option value="21KM">Half Marathon</option>
                            <option value="42KM">Full Marathon</option>
                        </select>
                    </td></tr>
                </table>
                <br>
                <input type="submit" value="Register">
            </form>
        </div>
    </body>
</html>