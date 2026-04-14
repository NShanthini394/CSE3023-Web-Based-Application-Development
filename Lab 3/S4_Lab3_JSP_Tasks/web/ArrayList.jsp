<%-- 
    Document   : ArrayList
    Created on : 14 Apr 2026, 1:59:27 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 1. Use the Page Directive to import the ArrayList class --%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        
        <%
            // 2. Create an ArrayList object to store student names 
            ArrayList<String> studentList = new ArrayList<String>();
            
            // 3. Add names to the list
            studentList.add("Mohamad Azam");
            studentList.add("Peter Chong");
            studentList.add("Rahimah Mansor");
            studentList.add("Sri Devi");
            studentList.add("Ng Hue Ween");
            studentList.add("S. Nagarajan");

            // 4. Display the total number of records
            out.println("<p>The number of records in ArrayList is " + studentList.size() + "</p>");
            
            // 5. Use a loop to populate the list of students
            for (int i = 0; i < studentList.size(); i++) {
                out.println("<p>Record " + (i + 1) + " is " + studentList.get(i) + "</p>");
            }
        %>
        
        <br>
        <footer>&copy; 2026-Syaffiq</footer>
    </body>
</html>