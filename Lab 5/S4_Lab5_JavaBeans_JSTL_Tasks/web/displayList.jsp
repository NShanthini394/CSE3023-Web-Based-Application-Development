<%-- 
    Document   : displayList
    Created on : 12 May 2026, 3:28:02 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL Loop Collection</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">Registered Students List</h2>
            
            <table border="1" cellpadding="8" style="width:100%; border-collapse: collapse;">
                <thead>
                    <tr style="background-color: #6f42c1; color: white;">
                        <th>No.</th>
                        <th>Name</th>
                        <th>Matric Number</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- The loop starts here --%>
                    <c:forEach items="${listData}" var="student" varStatus="status">
                        <tr>
                            <td>${status.count}</td>
                            <td>${student.name}</td>
                            <td>${student.matricNo}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>