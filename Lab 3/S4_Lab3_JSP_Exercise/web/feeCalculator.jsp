<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 3:13:12 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Fee Calculator</title>
    </head>
    <body>
        <%-- Requirement: Include the header --%>
        <%@include file="header.jsp" %>
        
        <div align="center">
            <h2>Membership Fee Calculator</h2>
            
            <%
                // 1. Initialize variables
                int activities = 0;
                double totalFee = 0.0;
                String activityInput = request.getParameter("numActivities");

                // 2. Logic: If form is submitted, calculate the fee 
                if (activityInput != null && !activityInput.isEmpty()) {
                    activities = Integer.parseInt(activityInput);
                    totalFee = activities * 10.0; // Each activity costs RM10
                }
            %>

            <form method="post">
                <fieldset style="width: 350px;">
                    <legend>Calculate Your Fee</legend>
                    <p>Each activity joined costs <b>RM10.00</b></p>
                    
                    <label>Number of activities joined:</label>
                    <input type="number" name="numActivities" value="<%= (activities > 0) ? activities : "" %>" required>
                    <br><br>
                    
                    <input type="submit" value="Calculate Fee">
                </fieldset>
            </form>

            <%-- Requirement: Display final amount formatted to 2 decimal places --%>
            <% if (activityInput != null) { %>
                <div style="margin-top: 20px; padding: 10px; border: 1px solid green; width: 300px;">
                    <h3>Total Fee: RM <%= String.format("%.2f", totalFee) %></h3>
                </div>
            <% } %>
        </div>

        <%-- Requirement: Include the footer --%>
        <%@include file="footer.jsp" %>
    </body>
</html>