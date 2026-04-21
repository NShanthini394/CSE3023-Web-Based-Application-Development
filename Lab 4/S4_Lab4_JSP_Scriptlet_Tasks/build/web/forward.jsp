<%-- 
    Document   : forward
    Created on : 21 Apr 2026, 2:33:00 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Standard Action (Forward)</title>
    </head>
    <body>
        <h1>This heading will not be seen!</h1>

        <%-- 1. Forward the request to forwardInfo.jsp --%>
    <jsp:forward page="forwardInfo.jsp"> 
        <jsp:param name="uname" value="Wan Nural Jawahir Hj Wan Yussof" />
        <jsp:param name="uname" value="Wan Nural Jawahir Hj Wan Yussof" />
        <jsp:param name="email" value="wannurwy@umt.edu.my" />
        <jsp:param name="nationality" value="Malaysia" />
        <jsp:param name="background" value="Lecturer" />
    </jsp:forward>
    
    </body>
</html>