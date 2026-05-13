<%-- 
    Document   : insertAuthor
    Created on : 12 May 2026, 5:10:07 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Author Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2>Register New Author</h2>
            <form action="processAuthor.jsp" method="POST">
                <table>
                    <tr><td>Author No:</td><td><input type="text" name="authno" required></td></tr>
                    <tr><td>Name:</td><td><input type="text" name="name" required></td></tr>
                    <tr><td>Address:</td><td><input type="text" name="address"></td></tr>
                    <tr><td>City:</td><td><input type="text" name="city"></td></tr>
                    <tr><td>State:</td><td><input type="text" name="state"></td></tr>
                    <tr><td>Zip Code:</td><td>
                        <select name="zip">
                            <option value="20000">20000</option>
                            <option value="21000">21000</option>
                            <option value="22000">22000</option>
                        </select>
                    </td></tr>
                </table>
                <br>
                <input type="submit" value="Submit">
                <input type="reset" value="Cancel">
            </form>
        </div>
    </body>
</html>