<%-- 
    Document   : jspParameter
    Created on : 21 Apr 2026, 2:26:25 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Standard Action</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h1 class="form-title">Using jsp:include and jsp:param</h1>
            
            <%
                // 1. Define the subject information
                String sCode = "CSE3023";
                String sSubject = "Web-based Application Development";
                String sCredit = "3 (2+1)";
            %>

            <h3>Calling SubjectInfo.jsp Page...</h3>
            <hr>

            <%-- 2. Include the second page and PASS the data --%>
            <jsp:include page="subjectInfo.jsp" flush="true">
                <jsp:param name="code" value="<%= sCode %>" />
                <jsp:param name="subject" value="<%= sSubject %>" />
                <jsp:param name="credit" value="<%= sCredit %>" />
            </jsp:include>
        </div>
    </body>
</html>