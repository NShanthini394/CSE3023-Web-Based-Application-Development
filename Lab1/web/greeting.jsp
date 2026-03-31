<%-- 
    Document   : greeting
    Created on : 31 Mar 2026, 5:38:36 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="5">
        <title>Greeting Page</title>
    </head>
    <body>
        <h1>Hello, <%= request.getAttribute("userName") %>!</h1>
        
        <hr>
        
        <p>The current date and time is: <strong><%= new Date().toString() %></strong></p>
        
        <p><small>(This page will refresh automatically every 5 seconds.)</small></p>
    </body>
</html>
