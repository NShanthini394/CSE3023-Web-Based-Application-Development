<%-- 
    Document   : registerSubject
    Created on : 20 May 2026, 2:16:26 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Subject</title>
</head>
<body>
    <h2>Register a New Subject</h2>
    <form action="../SubjectServlet" method="POST">
        <input type="hidden" name="action" value="add">
        Subject Code: <input type="text" name="subjectCode" required><br><br>
        Subject Name: <input type="text" name="subjectName" required><br><br>
        <input type="submit" value="Add Subject">
    </form>
    <br>
    <a href="../SubjectServlet?action=view">Back to Subject List</a>
</body>
</html>