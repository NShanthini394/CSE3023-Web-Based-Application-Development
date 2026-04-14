<%-- 
    Document   : mainPage
    Created on : 14 Apr 2026, 2:10:02 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Include Directive</title>
    </head>
    <body>
        <%-- Include the header at the top --%>
        <%@include file="headerPage.jsp" %>

        <div style="padding: 20px;">
            <h3>Using JSP Include directive</h3>
            <p style="color: red;">
                Java Server Page (JSP) is a technology for controlling the content 
                or appearance of Web pages through the use of servlets, small 
                programs that are specified in the Web page and run on the Web server 
                to modify the Web page before it is sent to the user who requested it.
            </p>
        </div>

        <%-- Include the footer at the bottom --%>
        <%@include file="footerPage.jsp" %>
    </body>
</html>