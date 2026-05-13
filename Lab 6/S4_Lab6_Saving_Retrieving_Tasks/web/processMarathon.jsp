<%-- 
    Document   : processMarathon
    Created on : 12 May 2026, 8:28:15 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab6.com.*"%> 
<jsp:useBean id="runner" class="lab6.com.Marathon" scope="page" />
<jsp:setProperty name="runner" property="*" />

<!DOCTYPE html>
<html>
    <head>
        <title>Registration Result</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <%
                MarathonDAO dao = new MarathonDAO();
                int success = dao.addMarathon(runner);

                if (success > 0) {
                    out.println("<h3 style='color: green;'>Successfully "
                            + "Registered for the Marathon!</h3>");
                    out.println("<p>Name: " + runner.getName() + "</p>");
                    out.println("<p>Category: " + runner.getCategory() + "</p>");
                } else {
                    out.println("<h3 style='color: red;'>Error during registration. "
                            + "Please check your data.</h3>");
                }
            %>
            <br>
            <a href="registerMarathon.jsp">New Registration</a>
        </div>
    </body>
</html>