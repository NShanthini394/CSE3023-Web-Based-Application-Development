<%-- 
    Document   : payroll_view
    Created on : 12 May 2026, 4:33:29 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Employee Payroll System</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">Employee Payroll List</h2>
            
            <table border="1" cellpadding="10" style="width:100%; border-collapse: collapse;">
                <thead>
                    <tr style="background-color: #6f42c1; color: white;">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Department</th>
                        <th>Basic Salary (RM)</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${employeeList}" var="emp">
                        <tr>
                            <td>${emp.empId}</td>
                            <td>${emp.name}</td>
                            <td>${emp.department}</td>
                            <td>${emp.basicSalary}</td>
                            <td>
                                <%-- Logic Challenge: Salary check --%>
                                <c:choose>
                                    <c:when test="${emp.basicSalary >= 3000}">
                                        <span style="color: blue; font-weight: bold;">Senior</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span style="color: orange;">Junior</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            <a href="index.html" class="btn-back" style="text-decoration:none; padding: 10px;">Back to Dashboard</a>
        </div>
    </body>
</html>
