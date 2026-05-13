<%-- 
    Document   : insertStudent
    Created on : 12 May 2026, 6:33:01 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2>Register New Student</h2>
            <form action="processStudent.jsp" method="POST">
                <table>
                    <tr><td>Student No (e.g. UK123):</td><td><input type="text" name="stuno" required></td></tr>
                    <tr><td>Name:</td><td><input type="text" name="name" required></td></tr>
                    <tr><td>Program:</td><td>
                        <select name="program">
                            <option value="BSc with IM">BSc with IM</option>
                            <option value="BSc Soft. Eng.">BSc Soft. Eng.</option>
                            <option value="BSc in Robotics">BSc in Robotics</option>
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