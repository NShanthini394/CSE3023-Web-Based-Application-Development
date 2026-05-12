<%-- 
    Document   : jstl_test
    Created on : 12 May 2026, 2:40:10 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Add these directives at the top so JSP knows how to use the tags --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <title>JSTL Date & Time Formatting</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">Testing JSTL Date & Time Formatting</h2>
            
            <%-- Creating a Date object using a standard bean tag --%>
            <jsp:useBean id="now" class="java.util.Date" />

            <div class="result-box">
                <p>1. Date Only (Default): 
                    <strong><fmt:formatDate value="${now}" type="date" /></strong>
                </p>

                <p>2. Time Only (Default): 
                    <strong><fmt:formatDate value="${now}" type="time" /></strong>
                </p>

                <p>3. Both Date & Time: 
                    <strong><fmt:formatDate value="${now}" type="both" /></strong>
                </p>

                <p>4. Long Date & Short Time: 
                    <strong><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="short" /></strong>
                </p>

                <p>5. Custom Pattern: 
                    <strong><fmt:formatDate value="${now}" pattern="dd MMMM yyyy, hh:mm:ss a" /></strong>
                </p>
            </div>
        </div>
    </body>
</html>