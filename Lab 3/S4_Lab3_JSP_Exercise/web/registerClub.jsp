<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 2:49:56 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Club Registration</title></head>
    <body>
        <%@include file="header.jsp" %>
        
        <div align="center">
            <form action="processRegistration.jsp" method="post">
                <fieldset style="width: 300px;">
                    <legend>New Member Registration</legend>
                    Student Name: <input type="text" name="studentName" required><br><br>
                    Matric Number: <input type="text" name="matricNo" required><br><br>
                    Select Club: 
                    <select name="clubName">
                        <option>Computer Science Club</option>
                        <option>Math Society</option>
                        <option>Robotics Club</option>
                    </select><br><br>
                    <input type="submit" value="Register">
                </fieldset>
            </form>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
