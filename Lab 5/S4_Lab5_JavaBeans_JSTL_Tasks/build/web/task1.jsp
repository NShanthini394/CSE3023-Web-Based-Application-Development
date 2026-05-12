<%-- 
    Document   : task1
    Created on : 12 May 2026, 2:09:44 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.StudentBean"%> <%-- Import your custom bean --%>
<!DOCTYPE html>
<html>
<head>
    <title>Task 1: Scriptlet & Bean</title>
</head>
<body>
    <h2>Student Information (Using Scriptlet)</h2>

    <%
        // Instantiating the bean
        StudentBean student = new StudentBean();
        
        // Setting values
        student.setName("Ahmad Ali");
        student.setMatricNo("S123456");
    %>

    <%-- Printing values using JSP Expression tags --%>
    <p><strong>Name:</strong> <%= student.getName() %></p>
    <p><strong>Matric No:</strong> <%= student.getMatricNo() %></p>
</body>
</html>