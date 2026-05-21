<%-- 
    Document   : viewSubjects
    Created on : 20 May 2026, 2:48:45 pm
    Author     : shant
--%>

<%@page import="java.util.List"%>
<%@page import="com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Subjects</title>
</head>
<body>
    <h2>My Registered Subjects</h2>
    <a href="subject/registerSubject.jsp">Add New Subject</a> | <a href="dashboard.jsp">Back to Dashboard</a>
    <br><br>
    <table border="1" cellpadding="10">
        <tr>
            <th>Subject Code</th>
            <th>Subject Name</th>
            <th>Actions</th>
        </tr>
        <%
            List<SubjectBean> subjectList = (List<SubjectBean>) request.getAttribute("subjectList");
            if (subjectList != null && !subjectList.isEmpty()) {
                for (SubjectBean s : subjectList) {
        %>
        <tr>
            <td><%= s.getSubjectCode() %></td>
            <td><%= s.getSubjectName() %></td>
            <td>
                <a href="SubjectServlet?action=edit&id=<%= s.getId() %>">Edit</a> | 
                <a href="SubjectServlet?action=delete&id=<%= s.getId() %>" onclick="return confirm('Delete this subject?');">Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="3">No subjects registered yet.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>