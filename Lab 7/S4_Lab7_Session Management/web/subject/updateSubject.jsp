<%-- 
    Document   : updateSubject
    Created on : 20 May 2026, 3:37:02 pm
    Author     : shant
--%>

<%@page import="com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Subject</title>
</head>
<body>
    <h2>Update Subject Details</h2>
    <%
        SubjectBean subject = (SubjectBean) request.getAttribute("subject");
        if (subject != null) {
    %>
    <form action="SubjectServlet" method="POST">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= subject.getId() %>">
        Subject Code: <input type="text" name="subjectCode" value="<%= subject.getSubjectCode() %>" required><br><br>
        Subject Name: <input type="text" name="subjectName" value="<%= subject.getSubjectName() %>" required><br><br>
        <input type="submit" value="Update Subject">
    </form>
    <%
        } else {
            out.println("<p>Error loading subject data.</p>");
        }
    %>
    <br>
    <a href="SubjectServlet?action=view">Cancel and Go Back</a>
</body>
</html>