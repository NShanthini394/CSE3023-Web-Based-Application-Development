<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 2:50:39 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Registration Success</title></head>
    <body>
        <%@include file="header.jsp" %>
        
        <div align="center">
            <h2>Registration Successful!</h2>
            <p>Name: <%= request.getParameter("studentName") %></p>
            <p>Matric No: <%= request.getParameter("matricNo") %></p>
            <p>Selected Club: <%= request.getParameter("clubName") %></p>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
