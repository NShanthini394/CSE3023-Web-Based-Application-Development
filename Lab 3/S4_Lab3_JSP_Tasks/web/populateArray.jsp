<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 1:47:34 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 3: Populate Array</title>
    </head>
    <body>
        <h2>Read Java array and populate it into HTML table.</h2>
        
        <%
            // 1. Define and store information into a 2D array 
            String[][] salesData = {
                {"Salesman 1", "2500", "2100", "2200"},
                {"Salesman 2", "2000", "1900", "2400"},
                {"Salesman 3", "1800", "2200", "2450"}
            };
        %>
        
        <table border="1" cellpadding="5">
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            
            <%
                // 3. Iterate through the array and populate the table rows 
                for (int i = 0; i < salesData.length; i++) {
            %>
                <tr>
                    <td><%= salesData[i][0] %></td>
                    <td><%= salesData[i][1] %></td>
                    <td><%= salesData[i][2] %></td>
                    <td><%= salesData[i][3] %></td>
                </tr>
            <%
                }
            %>
        </table>
        
        <br/>
        &copy; 2026-Syaffiq
    </body>
</html>