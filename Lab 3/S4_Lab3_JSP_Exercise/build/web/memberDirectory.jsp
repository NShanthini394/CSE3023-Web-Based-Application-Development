<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 3:17:50 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Requirement: Use JSP Page Directive to import the required Java API --%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Club Member Directory</title>
    </head>
    <body>
        <%-- Requirement: Include the header --%>
        <%@include file="header.jsp" %>
        
        <div align="center">
            <h2>Club Committee Member Directory</h2>
            
            <%
                // Requirement: Store at least five committee member names using an ArrayList 
                ArrayList<String> committee = new ArrayList<String>();
                committee.add("Ahmad Zaki (President)");
                committee.add("Siti Aminah (Secretary)");
                committee.add("Shanthini (Treasurer)");
                committee.add("Vicky (Vice President)");
                committee.add("Divesh (Event Coordinator)");
            %>

            <%-- Requirement: Dynamically display the names in an HTML table --%>
            <table border="1" cellpadding="10" style="width: 50%; border-collapse: collapse; text-align: left;">
                <tr style="background-color: #e0e0e0;">
                    <th>No.</th>
                    <th>Committee Member Name</th>
                </tr>
                <%
                    for (int i = 0; i < committee.size(); i++) {
                %>
                <tr>
                    <td><%= (i + 1) %></td>
                    <td><%= committee.get(i) %></td>
                </tr>
                <%
                    }
                %>
            </table>
            
            <p>Total Committee Members: <b><%= committee.size() %></b></p>
        </div>

        <%-- Requirement: Include the footer --%>
        <%@include file="footer.jsp" %>
    </body>
</html>
