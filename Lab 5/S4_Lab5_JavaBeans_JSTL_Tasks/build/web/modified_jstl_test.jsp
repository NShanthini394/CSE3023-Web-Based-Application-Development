<%-- 
    Document   : modified_jstl_test
    Created on : 12 May 2026, 2:56:35 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <title>JSTL Core Tags</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">JSTL Conditional Test</h2>
            
            <%-- Creating a variable named 'score' --%>
            <c:set var="score" value="85" />
            
            <%-- Displaying the variable value safely --%>
            <p>Student Score: <strong><c:out value="${score}" /></strong> marks.</p>

            <div class="result-box">
                <%-- Logic for Pass status --%>
                <c:if test="${score >= 50}">
                    <p style="color: green;">
                        <strong>Status: Pass! Congratulations.</strong>
                    </p>
                </c:if>

                <%-- Logic for Fail status --%>
                <c:if test="${score < 50}">
                    <p style="color: red;">
                        <strong>Status: Fail. Please try again.</strong>
                    </p>
                </c:if>
            </div>
        </div>
    </body>
</html>