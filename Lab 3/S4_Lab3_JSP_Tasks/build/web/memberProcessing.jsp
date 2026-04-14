<%-- 
    Document   : memberProcessing
    Created on : 14 Apr 2026, 1:34:11 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lab 3 Task 1</title>
    </head>
    <body>
        <h2>Passing data from main JSP page to another JSP page</h2>
        
        <fieldset>
            <%
                // Define variables to store retrieved data
                String myIC = request.getParameter("my_icno"); // Retrieves IC No
                String myName = request.getParameter("my_name"); // Retrieves Name
            %>
            
            <p>Thank you for registering in this event..!</p>
            <p>This is your details:</p>
            
            <p>IC No: <%= myIC %></p>
            <p>Name : <%= myName %></p>
        </fieldset>
    </body>
</html>
