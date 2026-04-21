<%-- 
    Document   : subjectInfo
    Created on : 21 Apr 2026, 2:26:59 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="background-color: #f9f9fb; padding: 15px; border-radius: 5px; 
     border: 1px dashed #6f42c1;">
    <h2>Subject Information Details</h2>
    
    <%-- 3. Retrieve and display the passed parameters --%>
    <p><b>Code:</b> <%= request.getParameter("code") %></p>
    <p><b>Subject:</b> <%= request.getParameter("subject") %></p>
    <p><b>Credit:</b> <%= request.getParameter("credit") %></p>
</div>
